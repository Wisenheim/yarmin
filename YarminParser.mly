/*------------------------------------- Yarmin -- Parser --------------------- */

%{
  open Yarmin
  include List
%}


%token <int> EINT
%token <bool> EBOOL
%token <string> ESTRING
%token DEN
%token LPAREN RPAREN LBRACK RBRACK
%token SEMICOLON COMMA ESCDQUOTE
%token DIFF TIMES SUM EQUAL
%token OR AND
%token MINUS ISZERO NOT
%token LEN CAT SUBSTR
%token EREFLECT
%token LET VAL NEWLOC
%token FUN APPL REC
%token IFTHENELSE
%token EOF




%start program
%type <Yarmin.exp>  program
%%
program:
    | v = expr EOF { v }
    | EOF          { Empty }
;

expr:
  | DIFF LPAREN a = expr COMMA b = expr RPAREN                        { Diff(a, b) }
  | TIMES LPAREN a = expr COMMA b = expr RPAREN                       { Prod(a, b) }
  | SUM LPAREN a = expr COMMA b = expr RPAREN                         { Sum(a, b) }
  | EQUAL LPAREN a = expr COMMA b = expr RPAREN                       { Eq(a, b) }
  | AND LPAREN a = expr COMMA b = expr RPAREN                         { And(a, b) }
  | OR LPAREN a = expr COMMA b = expr RPAREN                          { Or(a, b) }
  | MINUS LPAREN a = expr RPAREN                                      { Minus(a)}
  | ISZERO LPAREN a = expr RPAREN                                     { Iszero(a) }
  | NOT LPAREN a = expr RPAREN                                        { Not(a) }
  | LEN LPAREN a = expr RPAREN                                        { Len(a) }
  | CAT LPAREN a  = expr COMMA b = expr RPAREN                        { Cat(a, b) }
  | SUBSTR LPAREN a = expr COMMA b = expr COMMA c = expr RPAREN       { Substr(a, b, c) }
  | IFTHENELSE LPAREN a = expr COMMA b = expr COMMA c = expr RPAREN   { Ifthenelse(a, b, c) }
  | LET LPAREN DEN s = ESTRING COMMA b = expr COMMA c = expr RPAREN   { Let(s, b, c) }
  | VAL LPAREN a = expr RPAREN                                        { Val(a) }
  | NEWLOC LPAREN a = expr RPAREN                                     { Newloc(a) }
  | FUN LPAREN idl = list(ESTRING) COMMA b = expr RPAREN              { Fun(idl, b) }
  | APPL LPAREN a = expr COMMA exl = list(expr) RPAREN                { Appl(a, exl) }
  | REC LPAREN DEN s = ESTRING COMMA b = expr RPAREN                  { Rec(s, b) }
  | EREFLECT LPAREN a = expr RPAREN                                   { Ereflect(a) }
  | DEN a = EINT                                                      { Eint a }
  | DEN s = ESTRING                                                   { Estring s }
  | DEN b = EBOOL                                                     { Ebool b }

;
