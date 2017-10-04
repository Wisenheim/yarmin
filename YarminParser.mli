
(* The type of tokens. *)

type token = 
  | VAL
  | TIMES
  | SUM
  | SUBSTR
  | SEMICOLON
  | RPAREN
  | REC
  | RBRACK
  | OR
  | NOT
  | NEWLOC
  | MINUS
  | LPAREN
  | LET
  | LEN
  | LBRACK
  | ISZERO
  | IFTHENELSE
  | FUN
  | ESTRING of (string)
  | ESCDQUOTE
  | EREFLECT
  | EQUAL
  | EOF
  | EINT of (int)
  | EBOOL of (bool)
  | DIFF
  | DEN
  | COMMA
  | CAT
  | APPL
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp)
