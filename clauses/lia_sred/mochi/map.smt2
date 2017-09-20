(set-info :origin "Verification conditions for the caml program
  let rec map x =
    if x = 0
    then 0
    else 1 + map (x-1)
  
  let main n =
    assert (map n = n)
")

(set-logic HORN)

(declare-fun |map$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:3| Int) )
    (=>
      ( and (|map$unknown:2| |$knormal:3| (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) )
      (|map$unknown:2| (+ 1 |$knormal:3|) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (= |$alpha-1:x| 0) )
      (|map$unknown:2| 0 |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) )
    ( and (|map$unknown:2| |$knormal:5| |$alpha-2:n|) (not (= |$knormal:5| |$alpha-2:n|)) )
    )
  )
)
(check-sat)

(get-model)

