(set-info :origin "Verification conditions for the caml program
  let rec f x =
    if x < -1 then
      f (-2)
    else if x <= 0 then
      -1
    else if x <= 2 then
      3 - x
    else
      x
  let main n =
    assert(f 3 >= 0)
")

(set-logic HORN)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:5| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:5| (- 2)) (< |$alpha-1:x| (- 1)) )
      (|f$unknown:2| |$knormal:5| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (<= |$alpha-1:x| 0) (not (< |$alpha-1:x| (- 1))) )
      (|f$unknown:2| (- 1) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (<= |$alpha-1:x| 2) (not (< |$alpha-1:x| (- 1))) (not (<= |$alpha-1:x| 0)) )
      (|f$unknown:2| (- 3 |$alpha-1:x|) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (not (< |$alpha-1:x| (- 1))) (not (<= |$alpha-1:x| 0)) (not (<= |$alpha-1:x| 2)) )
      (|f$unknown:2| |$alpha-1:x| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:7| Int) )
    ( and (|f$unknown:2| |$knormal:7| 3) (not (>= |$knormal:7| 0)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

