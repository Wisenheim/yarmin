# Compilazione
ocamllex YarminLexer.mll
menhir  --suggest-link-flags-byte YarminParser.mly


ocamlc -c Funenv.mli
ocamlc -c Funenv.ml
ocamlc -c Funstore.mli
ocamlc -c Funstore.ml
ocamlc -c YarminParser.mli
ocamlc -c YarminParser.ml
ocamlc -c YarminLexer.ml
ocamlc -c -w "-1..40" yarmin.ml
