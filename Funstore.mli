
              type 't store
              type loc
              val emptystore : 't -> 't store
              val allocate : 't store * 't -> loc * 't store
              val update : 't store * loc * 't -> 't store
              val applystore :  't store * loc -> 't
