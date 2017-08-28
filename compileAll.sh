# Compilazione
ocamllex YarminLexer.mll
ocamlyacc YarminParser.mly

ocamlc -c Funenv.mli
ocamlc -c Funenv.ml
ocamlc -c Funstore.mli
ocamlc -c Funstore.ml
ocamlc -c YarminParser.mli
ocamlc -c YarminParser.ml
ocamlc -c YarminLexer.ml
ocamlc -c yarmin.ml
#ocamlc -c calc.ml
#ocamlc -o calc YarminLexer.cmo YarminParser.cmo calc.cmo
