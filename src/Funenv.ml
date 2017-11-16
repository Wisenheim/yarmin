(*------------------------------- Domini Semantici ------------------------------*)

      type 't env = string -> 't
      exception WrongBindList
      let emptyenv(x) = function y -> x
      let applyenv(x,y) = x y
      let bind((r: 'a env) , (l: string), (e: 'a)) =
        function lu -> if lu = l then e else applyenv(r,lu)
      let rec bindlist (r, il, el) = match (il, el) with
          | ([], []) -> r
          | i::il1, e::el1 -> bindlist (bind (r, i, e), il1, el1)
          | _ -> raise WrongBindList
