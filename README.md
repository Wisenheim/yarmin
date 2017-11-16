# Yarmin
Yarmin is an imperative (also a functional ) interpreter written in OCaml. is an imperative (also a functional ) interpreter written in OCaml.
The interpreter is capale of handling expressions, commands and declarations
all within a program.
A program can be parsed to into valid code from file/string thanks to reflection.

As a starting point, I used the denotation interpreter. I chose to develop a deno-
tational interpreter since adding new constructs are simpler than the operative
interpreter.
The interpreter is characterized by a dynamic local environment and a static
non-local environment.
To simplify writing code from terminal to ocaml, I used rlwrap.
The interpreter therefore consists of a series of functions divided into several
files.
To start the program:
1. Get in the Path of the project directory;
2. Run the script compileAll.sh to compile.
3. Run the command rlwrap ocaml
4. Insert #use ”loadAll.ml”;;
In the development of the reflection operation, I decided to write a parser via
Menhir, which is the evolution of the previous Ocamlyacc parser for OCaml.
Using it together with the use of ocamllex, or lexer, I have written a grammar
for the language so that I can properly interpret correctly any string passed as
an argument of the reflect function and so on assigning the correct semantic
evaluation.
All various test, can be executed by the command #use ”YarminTest.ml”;;
