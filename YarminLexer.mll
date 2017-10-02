(* -------------------------- File Yarmin -- Lexer ----------------------------- *)

{
  open Lexing
  open YarminParser
  exception Eof
  exception SyntaxError of string

  let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
    {
      pos with pos_bol = lexbuf.lex_curr_pos;
              pos_lnum = pos.pos_lnum + 1;
    }

}

(*Integer*)
let eint = '0' | ('-'? ['1' - '9']+)
(*Boolean*)
let ebool = "true" | "false"
(*id*)
let blank = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*



rule read = parse
    | blank      { read lexbuf} (* skip blanks*)
    | newline    { next_line lexbuf; read lexbuf }
    | eint       { EINT (int_of_string (Lexing.lexeme lexbuf)) }
    | ebool      { EBOOL (bool_of_string (Lexing.lexeme lexbuf)) }
    | "Eint"     { DEN }
    | "Ebool"    { DEN }
    | "Estring"  { DEN }
    | "Diff"     { DIFF }
    | "Prod"     { TIMES }
    | "Sum"      { SUM }
    | "Eq"       { EQUAL }
    | "And"      { AND }
    | "Or"       { OR }
    | "Minus"    { MINUS }
    | "Iszero"   { ISZERO }
    | "Not"      { NOT }
    | "Len"      { LEN }
    | "Cat"      { CAT }
    | "Substr"   { SUBSTR }
    | "Ifthenelse" { IFTHENELSE }
    | "Ereflect" { EREFLECT }
    | "Let"      { LET }
    | "Val"      { VAL }
    | "Newloc"   { NEWLOC }
    | "Appl"     { APPL }
    | "Rec"      { REC }
    | '"'        { read_string (Buffer.create 80) lexbuf }
    | '('        { LEFT_P }
    | ')'        { RIGHT_P }
    | ','        { COMMA }
    | '['        { LEFT_BRACK }
    | ']'        { RIGHT_BRACK }
    | ';'        { SEMICOLON }
    | _          { raise (SyntaxError( "Unexpected char: " ^ Lexing.lexeme lexbuf)) }
    | eof        { EOF }

and read_string buf =
  parse
  | '\\' '/'  { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '"'  { Buffer.add_char buf '\"'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; read_string buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [^ '"' '\\' ]+
        { Buffer.add_string buf (Lexing.lexeme lexbuf);
          read_string buf lexbuf
        }
  | '"'       { ESTRING (Buffer.contents buf) }
  | _     { raise (SyntaxError( "Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof     { raise (SyntaxError( "String is not terminated")) }
