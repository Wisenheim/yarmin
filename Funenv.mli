
      type 't env = string -> 't
      val emptyenv : 't -> 't env
      val applyenv : 't env * string -> 't
      val bind : 'a env * string * 'a -> 'a env
      val bindlist : 't env * string list * 't list -> 't env
      exception WrongBindList
