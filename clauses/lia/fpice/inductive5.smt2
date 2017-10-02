(set-info :origin "Verification conditions for the caml program
  let rec f x =
    if x < -2 then
      f (-3)
    else if x < 2 then
      2 * x - 1
    else if x <= 2 then
      f (2 * x - 1)
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
  (forall ( (|$alpha-1:x| Int) (|$knormal:6| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:6| (- (* 2 |$alpha-1:x|) 1)) (<= |$alpha-1:x| 2) (not (< |$alpha-1:x| (- 2))) (not (< |$alpha-1:x| 2)) )
      (|f$unknown:2| |$knormal:6| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:9| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:9| (- 3)) (< |$alpha-1:x| (- 2)) )
      (|f$unknown:2| |$knormal:9| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (< |$alpha-1:x| 2) (not (< |$alpha-1:x| (- 2))) )
      (|f$unknown:2| (- (* 2 |$alpha-1:x|) 1) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (not (< |$alpha-1:x| (- 2))) (not (< |$alpha-1:x| 2)) (not (<= |$alpha-1:x| 2)) )
      (|f$unknown:2| |$alpha-1:x| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:11| Int) )
    ( and (|f$unknown:2| |$knormal:11| 3) (not (>= |$knormal:11| 0)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

