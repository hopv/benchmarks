(set-info :origin "Verification conditions for the caml program
  let lamp x = x
  let f =
    let id x = x in
    let unused = id (fun _ -> assert false) in
      lamp
  
  let main i = f ()
")

(set-logic HORN)

(declare-fun |$innerFunc:5-id$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-$innerFunc:1$unknown:3|
  ( Int ) Bool
)

(assert
  (not (exists ( (|$alpha-10:$$tmp::1| Int) )
    ( and (|$innerFunc:4-$innerFunc:1$unknown:3| |$alpha-10:$$tmp::1|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:i| Int) (|$alpha-7:$$tmp::1| Int) )
    ( and (|$innerFunc:5-id$unknown:8| |$alpha-7:$$tmp::1| |$alpha-6:i|) )
    )
  )
)
(check-sat)

(get-model)

