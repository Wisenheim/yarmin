
module MenhirBasics = struct
  
  exception Error
  
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
    | ESTRING of (
# 11 "YarminParser.mly"
       (string)
# 30 "YarminParser.ml"
  )
    | ESCDQUOTE
    | EREFLECT
    | EQUAL
    | EOF
    | EINT of (
# 9 "YarminParser.mly"
       (int)
# 39 "YarminParser.ml"
  )
    | EBOOL of (
# 10 "YarminParser.mly"
       (bool)
# 44 "YarminParser.ml"
  )
    | DIFF
    | DEN
    | COMMA
    | CAT
    | APPL
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState118
  | MenhirState114
  | MenhirState110
  | MenhirState108
  | MenhirState102
  | MenhirState92
  | MenhirState84
  | MenhirState82
  | MenhirState74
  | MenhirState70
  | MenhirState66
  | MenhirState63
  | MenhirState60
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState35
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState8
  | MenhirState6
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 3 "YarminParser.mly"
  
  open Yarmin
  include List

# 111 "YarminParser.ml"

let rec _menhir_goto_list_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv459 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv455 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv453 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (exl : 'tv_list_expr_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 55 "YarminParser.mly"
                                                                      ( Appl(a, exl) )
# 137 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv457 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv461 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_list_expr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (xs : 'tv_list_expr_)) = _menhir_stack in
        let _v : 'tv_list_expr_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 156 "YarminParser.ml"
         in
        _menhir_goto_list_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_ESTRING_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_ESTRING_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state * (
# 11 "YarminParser.mly"
       (string)
# 171 "YarminParser.ml"
        )) * _menhir_state * 'tv_list_ESTRING_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state * (
# 11 "YarminParser.mly"
       (string)
# 177 "YarminParser.ml"
        )) * _menhir_state * 'tv_list_ESTRING_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 11 "YarminParser.mly"
       (string)
# 182 "YarminParser.ml"
        ))), _, (xs : 'tv_list_ESTRING_)) = _menhir_stack in
        let _v : 'tv_list_ESTRING_ = 
# 187 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 187 "YarminParser.ml"
         in
        _menhir_goto_list_ESTRING_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)) : 'freshtv446)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv449 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_expr_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 268 "YarminParser.ml"
     in
    _menhir_goto_list_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_ESTRING_ = 
# 185 "/usr/share/menhir/standard.mly"
    ( [] )
# 277 "YarminParser.ml"
     in
    _menhir_goto_list_ESTRING_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "YarminParser.mly"
       (string)
# 284 "YarminParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ESTRING _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | COMMA ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)) : 'freshtv208)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv215 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv211 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv209 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 42 "YarminParser.mly"
                                                                      ( And(a, b) )
# 389 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv213 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | RPAREN ->
                _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState63 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | RPAREN ->
            _menhir_reduce26 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv224)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv231 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 48 "YarminParser.mly"
                                                                      ( Cat(a, b) )
# 605 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv235 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv241 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv245 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 38 "YarminParser.mly"
                                                                      ( Diff(a, b) )
# 700 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 41 "YarminParser.mly"
                                                                      ( Eq(a, b) )
# 795 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 57 "YarminParser.mly"
                                                                      ( Ereflect(a) )
# 824 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv271 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv281 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv277 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv275 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (idl : 'tv_list_ESTRING_)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 54 "YarminParser.mly"
                                                                      ( Fun(idl, b) )
# 854 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv279 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv289 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState84
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)), _, (c : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 50 "YarminParser.mly"
                                                                      ( Ifthenelse(a, b, c) )
# 1015 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 45 "YarminParser.mly"
                                                                      ( Iszero(a) )
# 1044 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 47 "YarminParser.mly"
                                                                      ( Len(a) )
# 1073 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv323 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1088 "YarminParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv319 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1098 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv321 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1156 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv331 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1165 "YarminParser.ml"
        ))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv327 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1175 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv325 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1182 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (s : (
# 11 "YarminParser.mly"
       (string)
# 1187 "YarminParser.ml"
            ))), _, (b : 'tv_expr)), _, (c : 'tv_expr)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 51 "YarminParser.mly"
                                                                      ( Let(s, b, c) )
# 1198 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv329 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1208 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv333 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 44 "YarminParser.mly"
                                                                      ( Minus(a))
# 1231 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv347 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 53 "YarminParser.mly"
                                                                      ( Newloc(a) )
# 1260 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv345 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 46 "YarminParser.mly"
                                                                      ( Not(a) )
# 1289 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv363 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 43 "YarminParser.mly"
                                                                      ( Or(a, b) )
# 1384 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv377 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1399 "YarminParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv373 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1409 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv371 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1416 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (s : (
# 11 "YarminParser.mly"
       (string)
# 1421 "YarminParser.ml"
            ))), _, (b : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 56 "YarminParser.mly"
                                                                      ( Rec(s, b) )
# 1431 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv375 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1441 "YarminParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv386)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv387 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)), _, (c : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 49 "YarminParser.mly"
                                                                      ( Substr(a, b, c) )
# 1596 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv407 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv405 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 40 "YarminParser.mly"
                                                                      ( Sum(a, b) )
# 1691 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv409 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | APPL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | CAT ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | DEN ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | DIFF ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | EQUAL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | EREFLECT ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | FUN ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | IFTHENELSE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | ISZERO ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LEN ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LET ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | NEWLOC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | NOT ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | OR ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | REC ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | SUBSTR ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | SUM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | TIMES ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VAL ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv425 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv421 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv419 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 39 "YarminParser.mly"
                                                                      ( Prod(a, b) )
# 1786 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv423 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv433 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 52 "YarminParser.mly"
                                                                      ( Val(a) )
# 1815 "YarminParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (v : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 1841 "YarminParser.ml"
            ) = 
# 32 "YarminParser.mly"
                   ( v )
# 1845 "YarminParser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv131 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv135 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv137 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv139 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 1891 "YarminParser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv145 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state)) * _menhir_state * 'tv_list_ESTRING_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 11 "YarminParser.mly"
       (string)
# 1975 "YarminParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv181 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2004 "YarminParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv191 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2033 "YarminParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv202)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv118)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ESTRING _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv101 * _menhir_state))) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "YarminParser.mly"
       (string)
# 2350 "YarminParser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv97 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2361 "YarminParser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | AND ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | APPL ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | CAT ->
                        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | DEN ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | DIFF ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | EQUAL ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | EREFLECT ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | FUN ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | IFTHENELSE ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | ISZERO ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | LEN ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | LET ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | MINUS ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | NEWLOC ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | NOT ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | OR ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | REC ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | SUBSTR ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | SUM ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | TIMES ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | VAL ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv98)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv99 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2419 "YarminParser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv103 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv86)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ESTRING _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv69 * _menhir_state))) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "YarminParser.mly"
       (string)
# 2733 "YarminParser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv65 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2744 "YarminParser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | AND ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | APPL ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | CAT ->
                        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | DEN ->
                        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | DIFF ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | EQUAL ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | EREFLECT ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | FUN ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | IFTHENELSE ->
                        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | ISZERO ->
                        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | LEN ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | LET ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | MINUS ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | NEWLOC ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | NOT ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | OR ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | REC ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | SUBSTR ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | SUM ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | TIMES ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | VAL ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv66)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv67 * _menhir_state))) * (
# 11 "YarminParser.mly"
       (string)
# 2802 "YarminParser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv71 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv58)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ESTRING _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | COMMA ->
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv50)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv46)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3189 "YarminParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3198 "YarminParser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3206 "YarminParser.ml"
    )) : (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3210 "YarminParser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv38)) : 'freshtv40)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EBOOL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "YarminParser.mly"
       (bool)
# 3292 "YarminParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        let ((b : (
# 10 "YarminParser.mly"
       (bool)
# 3300 "YarminParser.ml"
        )) : (
# 10 "YarminParser.mly"
       (bool)
# 3304 "YarminParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 60 "YarminParser.mly"
                                                                      ( Ebool b )
# 3311 "YarminParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)) : 'freshtv22)
    | EINT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "YarminParser.mly"
       (int)
# 3320 "YarminParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 9 "YarminParser.mly"
       (int)
# 3328 "YarminParser.ml"
        )) : (
# 9 "YarminParser.mly"
       (int)
# 3332 "YarminParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 58 "YarminParser.mly"
                                                                      ( Eint a )
# 3339 "YarminParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)) : 'freshtv26)
    | ESTRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "YarminParser.mly"
       (string)
# 3348 "YarminParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        let ((s : (
# 11 "YarminParser.mly"
       (string)
# 3356 "YarminParser.ml"
        )) : (
# 11 "YarminParser.mly"
       (string)
# 3360 "YarminParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 59 "YarminParser.mly"
                                                                      ( Estring s )
# 3367 "YarminParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | APPL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | CAT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | DEN ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | DIFF ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EQUAL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EREFLECT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | FUN ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IFTHENELSE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | ISZERO ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LEN ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LET ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NEWLOC ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NOT ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | OR ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | REC ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SUBSTR ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SUM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TIMES ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | VAL ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3591 "YarminParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | APPL ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CAT ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEN ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DIFF ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 29 "YarminParser.mly"
      (Yarmin.exp)
# 3631 "YarminParser.ml"
        ) = 
# 33 "YarminParser.mly"
                   ( Empty )
# 3635 "YarminParser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | EQUAL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EREFLECT ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IFTHENELSE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISZERO ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LEN ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWLOC ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OR ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REC ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SUBSTR ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SUM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TIMES ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAL ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 219 "/usr/share/menhir/standard.mly"
  


# 3679 "YarminParser.ml"
