open Funenv
open Funstore
open Lexing
open Ast
open YarminParser
open YarminLexer
open Scanf

(* ------------------------------ Domini Sintatici ---------------------------*)
type ide = string
type exp =
      | Empty
      | Eint of int
      | Ebool of bool
      | Estring of string
      | Den of ide
      | Prod of exp * exp
      | Sum of exp * exp
      | Diff of exp * exp
      | Eq of exp * exp
      | Minus of exp
      | Iszero of exp
      | Len of exp
      | Cat of exp * exp
      | Substr of exp * exp * exp
      | Or of exp * exp
      | And of exp * exp
      | Not of exp
      | Ifthenelse of exp * exp * exp
      | Val of exp
      | Let of ide * exp * exp
      | Newloc of exp
      | Decl of decl
      | Fun of ide list * exp
      | Appl of exp * exp list
      | Rec of ide * exp
      | Proc of ide list * block
      | Ereflect of exp

    and decl = (ide * exp) list * (ide * exp ) list

    and com =
      | Assign of exp * exp
      | Cifthenelse of exp * com list * com list
      | While of exp * com list
      | Block of block
      | Call of exp * exp list
    and block = ( decl * com list )
type coml = com list


(* ------------------------------ Domini dei Valori ---------------------------*)


exception Nonstorable
exception Nonexpressible

type eval =
      | Int of int
      | Bool of bool
      | String of string
      | Novalue
      | Reflect of exp
      | Funval of efun

and dval =
      | Dint of int
      | Dbool of bool
      | Dstring of string
      | Unbound
      | Dloc of  loc
      | Dfunval of efun
      | Dprocval of proc
and efun = ( (dval list) * (mval store) ) -> eval
and proc = ( (dval list) * (mval store) ) -> mval store

and mval =
      | Mint of int
      | Mbool of bool
      | Mstring of string
      | Undefined

let evaltomval e = match e with
      | Int n -> Mint n
      | Bool n -> Mbool n
      | String s -> Mstring s
      | _ -> raise Nonstorable
let mvaltoeval m = match m with
      | Mint n -> Int n
      | Mbool n -> Bool n
      | Mstring s -> String s
      | _ -> Novalue
let evaltodval e = match e with
      | Int n -> Dint n
      | Bool n -> Dbool n
      | String s -> Dstring s
      | Funval n -> Dfunval n
      | Novalue -> Unbound
let dvaltoeval d = match d with
      | Dint n -> Int n
      | Dbool n -> Bool n
      | Dstring s -> String s
      | Dfunval n -> Funval n
      | Dprocval n -> raise Nonexpressible
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
      | "string" -> (match y with
          | String(u) -> true
          | _ -> false )
      | _ -> failwith ("not a valid type")

let minus x = if typecheck("int",x) then (match x with Int(y) -> Int(-y) )
          else failwith ("type error")

let iszero x = if typecheck("int",x) then (match x with Int(y) -> Bool(y=0) )
          else failwith ("type error")

let equ (x,y) = if typecheck("int",x) && typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Bool(u = w))
          else failwith ("type error")

let plus (x,y) = if typecheck("int",x) && typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u+w))
          else failwith ("type error")

let diff (x,y) = if typecheck("int",x) && typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u-w))
          else failwith ("type error")

let len x = if typecheck ("string", x) then (match x with String(y) -> Int(String.length y))
            else failwith ("Type Error")

let cat (x, y) = if typecheck ("string", x) && typecheck ("string", y)
                 then (match (x, y) with (String(u), String(w)) -> String(u ^ w))
                 else failwith ("Type Error")

let substr (x, y, z) = if typecheck ("string", x) && typecheck ("int", y) && typecheck ("int", z) && (y <= z)
                       then (match (x, y, z) with (String(u), Int(v), Int(w)) -> String(String.sub u v (w-v+1)))
                       else failwith ("Type Error")

let mult (x,y) = if typecheck("int",x) && typecheck("int",y)
          then (match (x,y) with (Int(u), Int(w)) -> Int(u*w))
          else failwith ("type error")


let et (x,y) = if typecheck("bool",x) && typecheck("bool",y)
          then (match (x,y) with (Bool(u), Bool(w)) -> Bool(u && w))
          else failwith ("type error")

let vel (x,y) = if typecheck("bool",x) && typecheck("bool",y)
          then (match (x,y) with (Bool(u), Bool(w)) -> Bool(u || w))
          else failwith ("type error")

let non x = if typecheck("bool",x)
          then (match x with Bool(y) -> Bool(not y) )
          else failwith ("type error")


(* ---------------------------- Funzioni --------------------------------------*)

let rec makefun ((a:exp), (x:dval env)) =
        (match a with
        | Fun(ii, aa) ->
            Dfunval(function (d, s) -> sem aa (bindlist (x, ii, d)) s)
        | _ -> failwith ("Non-functional object"))

and makefunrec ((i, Fun(ii, aa)), r) =
    let functional ff (d, s1) =
        let r1 = bind( bindlist(r, ii, d), i, Dfunval(ff) ) in sem aa r1 s1 in
                let rec fix = function x -> functional fix x in Funval(fix)

and makeproc ( (a:exp), (x:dval env) ) = match a with
        | Proc(ii, b) -> Dprocval(function (d, s) -> semb b (bindlist(x, ii, d)) s)
        | _ -> failwith("Non-functional object")


and applyfun ( (ev1: dval), (ev2:dval list), s ) =
        match ev1 with
        | Dfunval(x) -> x(ev2, s)
        | _ -> failwith ("Attempt to apply a non-functional object")


and applyproc ( ( ev1: dval), (ev2: dval list), s ) = match ev1 with
        | Dprocval(x) -> x(ev2, s)
        | _ -> failwith("Attempt to apply a non-functional Proc object")

and sem (e: exp) (r: dval env) (s: mval store) =
  match e with
      | Eint(n) -> Int(n)
      | Ebool(b) -> Bool(b)
      | Estring(n) -> String(n)
      | Den(i) -> dvaltoeval(applyenv(r,i))
      | Len(a) -> len( sem a r s )
      | Cat(a, b) -> cat( (sem a r s), (sem b r s) )
      | Substr(a, b, c) -> substr ( (sem a r s), (sem b r s), (sem c r s) )
      | Iszero(a) -> iszero((sem a r s) )
      | Eq(a,b) -> equ((sem a r s),(sem b r s) )
      | Prod(a,b) -> mult((sem a r s), (sem b r s))
      | Sum(a,b) -> plus( (sem a r s), (sem b r s))
      | Diff(a,b) -> diff( (sem a r s), (sem b r s))
      | Minus(a) -> minus( (sem a r s))
      | And(a,b) -> et ((sem a r s), (sem b r s))
      | Or(a,b) -> vel( (sem a r s), (sem b r s))
      | Not(a) -> non( (sem a r s))
      | Ereflect (c) -> reflect( (sem c r s) )
      | Ifthenelse(a,b,c) ->
            let g = sem a r s in
            if typecheck("bool",g) then
              (if g = Bool(true)
              then sem b r s
              else sem c r s)
            else failwith ("non-boolean guard")
      | Val(e) -> let (v, s1) = semden e r s in (match v with
            | Dloc n -> mvaltoeval( applystore(s1, n))
            | _ -> failwith("not test a variable"))
      (*| Val(e) -> match semden e r s with
                        | Dloc n -> mvaltoeval( applystore(s, n))
                        | _ -> failwith("not a variable")*)
      | Let(i, e1, e2) -> let (v, s1) = semden e1 r s in sem e2 (bind(r, i, v)) s1
      (*| Let(i, e1, e2) -> sem e2 (bind(r,i, sem e1 r))*)
      | Fun(i, e1) -> dvaltoeval(makefun(e, r))
      | Rec(i, e1) -> makefunrec((i, e1), r)
      | Appl(a, b) -> let (v1, s1) = semlist b r s in applyfun(evaltodval(sem a r s), v1, s1)
      | _ -> failwith ("Non legal expression for sem")

and astExpSem (e: Ast.exp ) (r: dval env) (s: mval store) =
      match e with
      | Eint(n) -> Int(n)
      | Ebool(n) -> Bool(n)
      | Estring(n) -> String(n)
      | Den(i) -> dvaltoeval( applyenv(r, i) )
      | Len(a) -> len( astExpSem a r s )
      | Cat(a, b) -> cat ( (astExpSem a r s), (astExpSem b r s ) )
      | Substr(a, b, c) -> substr ( ( astExpSem a r s), (astExpSem b r s), (astExpSem c r s) )
      | Iszero(a) -> iszero( (astExpSem a r s) )
      | Eq(a, b) -> equ (( astExpSem a r s ), (astExpSem b r s))
      | Prod(a, b) -> mult( (astExpSem a r s ), ( astExpSem b r s) )
      | Sum(a, b) -> plus((astExpSem a r s), (astExpSem b r s))
      | Diff(a, b) -> diff((astExpSem a r s), (astExpSem b r s))
      | Minus(a) -> minus( (astExpSem a r s) )
      | And(a, b) -> et ((astExpSem a r s), (astExpSem b r s))
      | Or(a, b) -> vel ((astExpSem a r s), (astExpSem b r s))
      | Not(a) -> non( (astExpSem a r s) )
  	  | Ereflect (c) -> reflect( (astExpSem c r s) )
      | Ifthenelse(a,b,c) ->
              let g = astExpSem a r s in
              if typecheck("bool", g) then
                  (if g = Bool(true)
                   then astExpSem b r s
                   else astExpSem c r s)
              else failwith ("non-boolean guard")
      | _ -> failwith("Non legal expression for sem")

and semden (e:exp) (r:dval env) (s:mval store) = match e with
      | Den(i) -> (applyenv(r,i), s)
      | Fun(i, e1) -> (makefun(e,r), s)
      | Proc(i, b) -> (makeproc(e, r), s)
      | Newloc(e) -> let m = evaltomval(sem e r s) in let (l, s1) =  allocate(s, m) in (Dloc l, s1)
      | _ -> (evaltodval(sem e r s), s )

and semlist el r s = match el with
      | [] -> ([], s)
      | e::el1 -> let (v1, s1) = semden e r s in let (v2, s2) = semlist el1 r s1 in (v1::v2, s2)

(*---- till here all's good --------*)


and semc (c:com) (r:dval env) (s:mval store) = match c with
      | Assign(e1, e2) -> let (v1, s1) = semden e1 r s  in (match v1 with
          | Dloc(n) ->  update(s1, n, evaltomval(sem e2 r s))
          | _ -> failwith("wrong location in assignment"))
      | Cifthenelse(e, cl1, cl2) -> let g = sem e r s in
                                            if typecheck("bool", g) then
                                                  (if g = Bool(true) then semcl cl1 r s else semcl cl2 r s)
                                            else failwith("non-boolean guard")
      (*
      | Assign(e1,e2) -> (match (semden e1 r s) with
            | Dloc(n) ->  update(s, n, evaltomval(sem e2 r s))
            | _ -> failwith ("wrong location in assignment"))
      | Cifthenelse(e, cl1, cl2) -> let g = sem e r s in
            if typecheck("bool",g) then
              (if g = Bool(true) then semcl cl1 r s else semcl cl2 r s)
            else failwith ("non boolean guard")*)
      | While(e,cl) ->
       (*la funzione functional prende in input la funzione fi ( che prende in input uno store di mval e ritorna lo store modificato)
        *)
            (*let rec step sigma:mval store -> store =
                          let g = sem e r sigma in
                            if typecheck("bool",g) then
                                (if g = Bool(true) then step(semcl cl r sigma) else sigma)
                            else failwith("nonboolean guard")
            in step s*)

            let functional ((fi: mval store -> mval store)) =
                          function sigma ->
                            let g = sem e r sigma in
                                if typecheck("bool",g) then
                                    (if g = Bool(true) then fi(semcl cl r sigma) else sigma)
                                else failwith ("nonboolean guard")
            in
            let rec ssfix = function x -> (functional ssfix) x in ssfix(s)
      | Call(e1, e2) -> let (p, s1) = semden e1 r s in let (v, s2) = semlist e2 r s1 in
            applyproc(p, v, s2)
      | Block(b) -> semb b r s


and semcl cl r s = match cl with
      | [] -> s
      | c::cl1 -> semcl cl1 r (semc c r s)

and semb ((dl, rdl), (cl:com list)) r s = let (r1, s1) = semdl (dl, rdl) r s in
                                              semcl cl r1 s1

and semdl (dl, rl) r s = let (r1, s1) = semdv dl r s in
                                            semdr rl r1 s1

and semdv (dl) r s =
      match dl with
      | [] -> (r, s)
      | (i,e)::dl1 -> let (v, s1) = semden e r s in
                                    semdv dl1 (bind(r, i, v)) s1



and semdr rl r s =
      let functional ((r1: dval env)) = (match rl with
          | [] -> r
          | (i, e) :: rl1 -> let (v, s2) = semden e r1 s in
                                              let (r2, s3) = semdr rl1 (bind(r, i, v)) s in r2) in
                                                  let rec rfix = function rho -> functional rfix rho in (rfix, s)

and reflect x = if typecheck ("string", x)
                then ( match x with String(u) -> astExpSem ((YarminParser.program YarminLexer.read (Lexing.from_string u) )) (emptyenv Unbound) (emptystore Undefined) )
                else failwith ("Type Error")
