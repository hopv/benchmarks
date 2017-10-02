(set-info :origin "Verification conditions for the caml program
  let rec f x =
    if x < -1 then
      f (-2)
    else if x <= 1 then
      2 * x - 1
    else
      x
  let main n =
    let v = f 0 in
    if n >= 2 then assert(f n >= 0) else ()
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
      ( and (<= |$alpha-1:x| 1) (not (< |$alpha-1:x| (- 1))) )
      (|f$unknown:2| (- (* 2 |$alpha-1:x|) 1) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (not (< |$alpha-1:x| (- 1))) (not (<= |$alpha-1:x| 1)) )
      (|f$unknown:2| |$alpha-1:x| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:11| Int) (|$knormal:7| Int) )
    ( and (|f$unknown:2| |$knormal:11| 0) (|f$unknown:2| |$knormal:7| |$alpha-2:n|) (>= |$alpha-2:n| 2) (not (>= |$knormal:7| 0)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

