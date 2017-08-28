type token =
  | INT of (int)
  | BOOL of (bool)
  | ID of (string)
  | PLUS
  | MINUS
  | TIMES
  | OR
  | EQUAL
  | AND
  | SEMICOLON
  | NOT
  | IF
  | THEN
  | ELSE
  | WHILE
  | DO
  | ASSIGN
  | LPAREN
  | RPAREN
  | EOL
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Yarmin.coml
