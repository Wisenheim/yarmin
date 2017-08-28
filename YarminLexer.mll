(* -------------------------- File Yarmin -- Lexer ----------------------------- *)

{
  open YarminParser
  exception Eof

}

rule token = parse
      [' ' '\t'] { token lexbuf} (* skip blanks*)
    | ['\n' ]    { EOL }
    | '0' | ('-'? ['1' - '9']+) as num { INT(int_of_string num) }
    | '+'        { PLUS }
    | '-'        { MINUS }
    | '*'        { TIMES }
    | '('        { LPAREN }
    | ')'        { RPAREN }
    | "or"       { OR }
    | "and"      { AND }
    | "="        { EQUAL }
    | ":="       { ASSIGN }
    | "not"      { NOT }
    | "if"       { IF }
    | "then"     { THEN }
    | "else"     { ELSE }
    | "while"    { WHILE }
    | "do"       { DO }
    | ";"        { SEMICOLON }
    | (['a' - 'z'] | ['A' - 'Z']) (['a' - 'z'] | ['A' - 'Z'] | ['0' - '9'])* as var { ID(var) }
    | eof        { raise Eof }
