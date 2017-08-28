(* File calc.ml *)
open Interpreter

let stampa s = match s with
                | While(v,w) -> (Printf.printf "While")
                | Cifthenelse(v, z, w) -> (Printf.printf "ifthenelse")

                | _ -> Printf.printf "7mar, balid"




let rec f x =
              match x with
              | h::t -> stampa h; f t
              | _ -> 0
        let _ =
          try
            let lexbuf = Lexing.from_channel stdin in
            while true do
              let result = YarminParser.main YarminLexer.token lexbuf in
                f result; print_newline(); flush stdout
            done
          with YarminLexer.Eof ->
            exit 0
