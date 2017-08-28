/*------------------------------------- Yarmin -- Parser --------------------- */

%{
  open Yarmin
  include List
%}


%token <int> INT
%token <bool> BOOL
%token <string> ID
%token PLUS MINUS TIMES OR EQUAL AND SEMICOLON NOT IF THEN ELSE WHILE DO ASSIGN
%token LPAREN RPAREN
%token EOL EOF
%left OR AND EQUAL
%left PLUS MINUS
%left TIMES
%nonassoc UMINUS
%start main
%type <Yarmin.coml> main
%%
main:
    coml EOL { $1 }
;
coml:
    com { [$1] }
  | com SEMICOLON coml  { cons $1 $3 }
;
com:
    ID ASSIGN expr { Assign(Den($1),$3) }
  | IF LPAREN expr RPAREN THEN coml ELSE coml { Cifthenelse($3, $6, $8) }
  | WHILE LPAREN expr RPAREN DO coml   { While($3, $6) }
;

expr:
    INT { Eint($1) }
  | BOOL { Ebool($1) }
  | ID   { Den($1) }
  | expr PLUS expr  { Sum($1, $3) }
  | expr MINUS expr { Diff($1, $3) }
  | expr TIMES expr { Prod($1, $3) }
  | expr OR expr { Or($1, $3) }
  | expr EQUAL expr { Eq($1, $3) }
  | expr AND expr { And($1, $3) }
  | NOT expr { Not($2) }
  | MINUS expr %prec UMINUS { Minus($2) }
  | IF expr THEN expr ELSE expr { Ifthenelse($2, $4, $6) }
;
