(set-info :origin "Verification conditions for the caml program
  (*
  USED: PEPM2013 as copy_intro
  *)
  
  let rec copy x = if x=0 then 0 else 1 + copy (x-1)
  let main n = assert (copy (copy n) = n)
")

(set-logic HORN)

(declare-fun |copy$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:3| Int) )
    (=>
      ( and (|copy$unknown:2| |$knormal:3| (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) )
      (|copy$unknown:2| (+ 1 |$knormal:3|) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (= |$alpha-1:x| 0) )
      (|copy$unknown:2| 0 |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    ( and (|copy$unknown:2| |$knormal:5| |$alpha-2:n|) (|copy$unknown:2| |$knormal:7| |$knormal:5|) (not (= |$knormal:7| |$alpha-2:n|)) )
    )
  )
)
(check-sat)

(get-model)

