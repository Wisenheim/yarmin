open Funstore
open Funenv

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
      | Let of ide * exp * exp
      | Val of exp
      | Newloc of exp
      | Fun of ide list * exp
      | Appl of exp * exp list
      | Rec of ide * exp
      | Decl of decl
      | Ereflect of exp
    and decl = (ide * exp) list * (ide * exp) list
