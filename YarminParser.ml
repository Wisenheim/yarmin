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

open Parsing;;
let _ = parse_error;;
# 4 "YarminParser.mly"
  open Yarmin
  include List
# 30 "YarminParser.ml"
let yytransl_const = [|
  260 (* PLUS *);
  261 (* MINUS *);
  262 (* TIMES *);
  263 (* OR *);
  264 (* EQUAL *);
  265 (* AND *);
  266 (* SEMICOLON *);
  267 (* NOT *);
  268 (* IF *);
  269 (* THEN *);
  270 (* ELSE *);
  271 (* WHILE *);
  272 (* DO *);
  273 (* ASSIGN *);
  274 (* LPAREN *);
  275 (* RPAREN *);
  276 (* EOL *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* BOOL *);
  259 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\003\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\003\000\008\000\006\000\001\000\001\000\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\002\000\
\002\000\006\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\019\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\007\000\008\000\009\000\
\000\000\000\000\000\000\000\000\000\000\000\000\003\000\017\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\012\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\
\000\000\005\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\020\000"

let yysindex = "\002\000\
\255\254\000\000\244\254\250\254\251\254\000\000\003\255\005\255\
\105\255\105\255\105\255\000\000\255\254\000\000\000\000\000\000\
\105\255\105\255\105\255\151\255\056\255\062\255\000\000\000\000\
\151\255\141\255\105\255\105\255\105\255\105\255\105\255\105\255\
\011\255\012\255\105\255\032\255\032\255\000\000\050\255\050\255\
\050\255\255\254\255\254\114\255\026\255\000\000\105\255\255\254\
\151\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\252\254\000\000\000\000\000\000\000\000\
\116\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\022\255\039\255\000\000\069\255\077\255\
\085\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\124\255\000\000"

let yygindex = "\000\000\
\000\000\247\255\000\000\246\255"

let yytablesize = 160
let yytable = "\021\000\
\022\000\003\000\001\000\023\000\009\000\004\000\024\000\025\000\
\026\000\004\000\004\000\010\000\011\000\005\000\013\000\004\000\
\036\000\037\000\038\000\039\000\040\000\041\000\012\000\042\000\
\044\000\010\000\010\000\043\000\010\000\010\000\010\000\010\000\
\045\000\046\000\010\000\010\000\049\000\029\000\050\000\048\000\
\010\000\010\000\011\000\011\000\002\000\011\000\011\000\011\000\
\011\000\000\000\002\000\011\000\011\000\027\000\028\000\029\000\
\000\000\011\000\011\000\027\000\028\000\029\000\030\000\031\000\
\032\000\027\000\028\000\029\000\030\000\031\000\032\000\000\000\
\000\000\000\000\033\000\013\000\013\000\013\000\013\000\000\000\
\034\000\013\000\013\000\014\000\014\000\014\000\014\000\013\000\
\013\000\014\000\014\000\015\000\015\000\015\000\015\000\014\000\
\014\000\015\000\015\000\000\000\000\000\000\000\000\000\015\000\
\015\000\014\000\015\000\016\000\000\000\017\000\000\000\000\000\
\000\000\000\000\000\000\018\000\019\000\027\000\028\000\029\000\
\030\000\031\000\032\000\000\000\000\000\016\000\000\000\047\000\
\016\000\016\000\000\000\000\000\000\000\018\000\016\000\016\000\
\018\000\018\000\000\000\000\000\000\000\000\000\018\000\018\000\
\027\000\028\000\029\000\030\000\031\000\032\000\000\000\000\000\
\000\000\035\000\027\000\028\000\029\000\030\000\031\000\032\000"

let yycheck = "\010\000\
\011\000\003\001\001\000\013\000\017\001\010\001\017\000\018\000\
\019\000\014\001\012\001\018\001\018\001\015\001\010\001\020\001\
\027\000\028\000\029\000\030\000\031\000\032\000\020\001\013\001\
\035\000\004\001\005\001\016\001\007\001\008\001\009\001\010\001\
\042\000\043\000\013\001\014\001\047\000\006\001\048\000\014\001\
\019\001\020\001\004\001\005\001\014\001\007\001\008\001\009\001\
\010\001\255\255\020\001\013\001\014\001\004\001\005\001\006\001\
\255\255\019\001\020\001\004\001\005\001\006\001\007\001\008\001\
\009\001\004\001\005\001\006\001\007\001\008\001\009\001\255\255\
\255\255\255\255\019\001\007\001\008\001\009\001\010\001\255\255\
\019\001\013\001\014\001\007\001\008\001\009\001\010\001\019\001\
\020\001\013\001\014\001\007\001\008\001\009\001\010\001\019\001\
\020\001\013\001\014\001\255\255\255\255\255\255\255\255\019\001\
\020\001\001\001\002\001\003\001\255\255\005\001\255\255\255\255\
\255\255\255\255\255\255\011\001\012\001\004\001\005\001\006\001\
\007\001\008\001\009\001\255\255\255\255\010\001\255\255\014\001\
\013\001\014\001\255\255\255\255\255\255\010\001\019\001\020\001\
\013\001\014\001\255\255\255\255\255\255\255\255\019\001\020\001\
\004\001\005\001\006\001\007\001\008\001\009\001\255\255\255\255\
\255\255\013\001\004\001\005\001\006\001\007\001\008\001\009\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  OR\000\
  EQUAL\000\
  AND\000\
  SEMICOLON\000\
  NOT\000\
  IF\000\
  THEN\000\
  ELSE\000\
  WHILE\000\
  DO\000\
  ASSIGN\000\
  LPAREN\000\
  RPAREN\000\
  EOL\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  BOOL\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'coml) in
    Obj.repr(
# 23 "YarminParser.mly"
             ( _1 )
# 180 "YarminParser.ml"
               : Yarmin.coml))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 26 "YarminParser.mly"
        ( [_1] )
# 187 "YarminParser.ml"
               : 'coml))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'coml) in
    Obj.repr(
# 27 "YarminParser.mly"
                        ( cons _1 _3 )
# 195 "YarminParser.ml"
               : 'coml))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 30 "YarminParser.mly"
                   ( Assign(Den(_1),_3) )
# 203 "YarminParser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'coml) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'coml) in
    Obj.repr(
# 31 "YarminParser.mly"
                                              ( Cifthenelse(_3, _6, _8) )
# 212 "YarminParser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'coml) in
    Obj.repr(
# 32 "YarminParser.mly"
                                       ( While(_3, _6) )
# 220 "YarminParser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 36 "YarminParser.mly"
        ( Eint(_1) )
# 227 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 37 "YarminParser.mly"
         ( Ebool(_1) )
# 234 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 38 "YarminParser.mly"
         ( Den(_1) )
# 241 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 39 "YarminParser.mly"
                    ( Sum(_1, _3) )
# 249 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "YarminParser.mly"
                    ( Diff(_1, _3) )
# 257 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "YarminParser.mly"
                    ( Prod(_1, _3) )
# 265 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "YarminParser.mly"
                 ( Or(_1, _3) )
# 273 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 43 "YarminParser.mly"
                    ( Eq(_1, _3) )
# 281 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 44 "YarminParser.mly"
                  ( And(_1, _3) )
# 289 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "YarminParser.mly"
             ( Not(_2) )
# 296 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "YarminParser.mly"
                            ( Minus(_2) )
# 303 "YarminParser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 47 "YarminParser.mly"
                                ( Ifthenelse(_2, _4, _6) )
# 312 "YarminParser.ml"
               : 'expr))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Yarmin.coml)
