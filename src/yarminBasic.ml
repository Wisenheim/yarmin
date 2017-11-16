
(* ------------------------------ Domini Sintatici ---------------------------*)
type ide = string
type exp =
      | Eint of int
      | Ebool of bool
      | Den of ide
      | Prod of exp * exp
      | Sum of exp * exp
      | Diff of exp * exp
      | Eq of exp * exp
      | Minus of exp
      | Iszero of exp
      | Or of exp * exp
      | And of exp * exp
      | Not of exp
      | Ifthenelse of exp * exp * exp
      | Val of exp

type com =
      | Assign of exp * exp
      | Cifthenelse of exp * com list * com list
      | While of exp * com list


(* ------------------------------ Domini Semantici ---------------------------*)


module type STORE =
  sig
      type 't store
      type loc
      val emptystore : 't -> 't store
      val allocate : 't store * 't -> loc * 't store
      val update : 't store * loc * 't -> 't store
      val applystore :  't store * loc -> 't
  end

module Funstore:STORE =
  struct
      type loc = int
      type 't store = loc -> 't
      let (newloc,initloc) = let count = ref(-1)
          in (fun () -> count := !count +1; !count),
              (fun () -> count := -1)
      let emptystore(x) = initloc(); function y -> x
      let applystore(x,y) = x y
      let allocate((r: 'a store), (e: 'a)) = let l = newloc()
          in (l, function lu -> if lu = l then e else applystore(r,lu))
      let update((r: 'a store), (l: loc), (e: 'a)) =
          function lu -> if lu = l then e else applystore(r,lu)
  end

module type ENV =
  sig
      type 't env
      val emptyenv : 't -> 't env
      val applyenv : 't env * ide -> 't
      val bind : 'a env * ide * 'a -> 'a env
  end



module Funenv:ENV =
  struct
        type 't env = string -> 't
        let emptyenv(x) = function y -> x
        let applyenv(x,y) = x y
        let bind((r: 'a env) , (l: string), (e: 'a)) =
          function lu -> if lu = l then e else applyenv(r,lu)
  end

(* ------------------------------ Domini dei Valori ---------------------------*)


exception Nonstorable
exception Nonexpressible

type eval =
      | Int of int
      | Bool of bool
      | Novalue
type dval =
      | Dint of int
      | Dbool of bool
      | Unbound
      | Dloc of Funstore.loc
type mval =
      | Mint of int
      | Mbool of bool
      | Undefined
let evaltomval e = match e with
      | Int n -> Mint n
      | Bool n -> Mbool n
      | _ -> raise Nonstorable
let mvaltoeval m = match m with
      | Mint n -> Int n
      | Mbool n -> Bool n
      | _ -> Novalue
let evaltodval e = match e with
      | Int n -> Dint n
      | Bool n -> Dbool n
      | Novalue -> Unbound
let dvaltoeval d = match d with
      | Dint n -> Int n
      | Dbool n -> Bool n
      | Dloc n -> raise Nonexpressible
      | Unbound -> Novalue







(* ------------------------------ Expressions -- Denotational Semantics ---------------------------*)



let typecheck (x, y) = match x with
      | "int" -> (match y with
          | Int(u) -> true
          | _ -> false)
      | "bool" -> (match y with
          | Bool(u) -> true
          | _ -> false)
      | _ -> failwith ("not a valid type")

let minus x = if typecheck("int",x) then (match x with Int(y) -> Int(-y) )
          else failwith ("type error")

let iszero x = if typecheck("int",x) then (match x with Int(y) -> Bool(y=0) )
          else failwith ("type error")

let equ (x,y) = if typecheck("int",x) & typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Bool(u = w))
          else failwith ("type error")

let plus (x,y) = if typecheck("int",x) & typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u+w))
          else failwith ("type error")

let diff (x,y) = if typecheck("int",x) & typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u-w))
          else failwith ("type error")

let mult (x,y) = if typecheck("int",x) & typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u*w))
          else failwith ("type error")


let et (x,y) = if typecheck("bool",x) & typecheck("bool",y)
          then (match (x,y) with (Bool(u), Bool(w)) -> Bool(u & w))
          else failwith ("type error")

let vel (x,y) = if typecheck("bool",x) & typecheck("bool",y)
          then (match (x,y) with (Bool(u), Bool(w)) -> Bool(u or w))
          else failwith ("type error")

let non x = if typecheck("bool",x)
          then (match x with Bool(y) -> Bool(not y) )
          else failwith ("type error")



let rec sem (e: exp) (r: dval Funenv.env) (s: mval Funstore.store) =
  match e with
      | Eint(n) -> Int(n)
      | Ebool(b) -> Bool(b)
      | Den(i) -> dvaltoeval(Funenv.applyenv(r,i))
      | Iszero(a) -> iszero((sem a r s) )
      | Eq(a,b) -> equ((sem a r s),(sem b r s) )
      | Prod(a,b) -> mult((sem a r s), (sem b r s))
      | Sum(a,b) -> plus( (sem a r s), (sem b r s))
      | Diff(a,b) -> diff( (sem a r s), (sem b r s))
      | Minus(a) -> minus( (sem a r s))
      | And(a,b) -> et ((sem a r s), (sem b r s))
      | Or(a,b) -> vel( (sem a r s), (sem b r s))
      | Not(a) -> non( (sem a r s))
      | Ifthenelse(a,b,c) ->
            let g = sem a r s in
            if typecheck("bool",g) then
              (if g = Bool(true)
              then sem b r s
              else sem c r s)
            else failwith ("nonboolean guard")
      | Val(e) -> match semden e r s with
                        | Dloc n -> mvaltoeval(Funstore.applystore(s, n))
                        | _ -> failwith("not a variable")

and semden (e:exp) (r:dval Funenv.env) (s:mval Funstore.store) = match e with
      | Den(i) -> Funenv.applyenv(r,i)
      | _ -> evaltodval(sem e r s)



let rec semc (c:com) (r:dval Funenv.env) (s:mval Funstore.store) = match c with
      | Assign(e1,e2) -> (match (semden e1 r s) with
            | Dloc(n) -> Funstore.update(s, n, evaltomval(sem e2 r s))
            | _ -> failwith ("wrong location in assignment"))
      | Cifthenelse(e, cl1, cl2) -> let g = sem e r s in
            if typecheck("bool",g) then
              (if g = Bool(true) then semcl cl1 r s else semcl cl2 r s)
            else failwith ("non boolean guard")
      | While(e,cl) ->
            let functional ((fi: mval Funstore.store -> mval Funstore.store)) =
                          function sigma ->
                            let g = sem e r sigma in
                                if typecheck("bool",g) then
                                    (if g = Bool(true) then fi(semcl cl r sigma) else sigma)
                                else failwith ("nonboolean guard")
            in
            let rec ssfix = function x -> functional ssfix x in ssfix(s)

and semcl cl r s = match cl with
      | [] -> s
      | c::cl1 -> semcl cl1 r (semc c r s)
