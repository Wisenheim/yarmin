
sem ( Sum(Eint 5, Eint 3) ) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Eint 5 ) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Ebool true ) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Estring "ciao" ) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Eq (Eint 5, Eint 3) )  (emptyenv Unbound) (emptystore Undefined) ;;

sem (Ifthenelse ( Eq(Eint 5, Eint 4) , Diff(Eint 5, Eint 5) , Sum(Eint 5, Eint 5) ) )  (emptyenv Unbound) (emptystore Undefined) ;;

sem (Ereflect(Estring "Prod( Eint 2, Sum(Eint 2, Eint 3) )")) (emptyenv Unbound) (emptystore Undefined) ;;


sem (Len(Estring "ciao")) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Cat(Estring "ciao", Estring " mondo")) (emptyenv Unbound) (emptystore Undefined) ;;

sem (Substr(Estring "ciao mondo", Eint 0, Eint 3)) (emptyenv Unbound) (emptystore Undefined) ;;


let (mdiccom: block) =
		(
	 		(	[ 	"y", Newloc (Eint 0) ] 	, (* ide * exp list 1 *)
	 			[ 	"impfact", Proc
		 				( ["x"] ,
		 					(
				 				(
				 					[	"z", Newloc(Den "x") ;
				 						"w", Newloc(Eint 1)
				 					] ,
									[]
				 				) ,

				 				[	While ( Not (Eq (Val (Den "z"), Eint 0)),
						 				[
											Assign (Den "w", Prod(Val(Den "w"), Val(Den "z"))) ;
											Assign (Den "z", Diff(Val(Den "z"), Eint 1))
										]
						 			) ;

						 			Cifthenelse (
										Eq (Val (Den "w"), (Appl(Den "fact", [Den "x"]))),
										[ Assign (Den "y", Val (Den "w")) ],
										[ Assign (Den "y", Eint 0) ]
									)

								]
							)
						) ;

	 				"fact", Fun(["x"], Ifthenelse (
	 															Eq(Den "x", Eint 0),
	 															Eint 1,
	 															Prod (Den "x", Appl(Den "fact", [ Diff (Den "x", Eint 1) ]))
	 																	)
	 																)


	 			] (* ide * exp list 2 *)
	 		),

	 		[ Call(Den "impfact", [(Eint 4)]) ] (* com list *)
	 	)
;;

let ite = semb mdiccom (emptyenv Unbound) (emptystore Undefined);;	(* Faccio valutare il blocco associandoli un nuovo ambiente e store *)

applystore (ite, 0);;												(* Valore in memoria *)

mvaltoeval (applystore (ite, 0));;									(* Valore esprimibile *)
