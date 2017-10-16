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
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 3) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:4| (- 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 1))) (= |$V-reftype:9| |$knormal:5|) (not (= 0 |$knormal:1|)) (|f$unknown:2| |$knormal:5| |$knormal:4|) true )
      (|f$unknown:2| |$V-reftype:9| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 1))) (not (= 0 |$knormal:1|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (<= |$alpha-1:x| 0)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 1))) (= |$V-reftype:11| (- 1)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true )
      (|f$unknown:2| |$V-reftype:11| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-1:x| 0)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 1))) (= |$V-reftype:13| (- 3 |$alpha-1:x|)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) true )
      (|f$unknown:2| |$V-reftype:13| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-1:x| 0)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 1))) (= |$V-reftype:14| |$alpha-1:x|) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true )
      (|f$unknown:2| |$V-reftype:14| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (>= |$knormal:7| 0)) (= |$knormal:6| 3) (not (not (= 0 |$knormal:9|))) (|f$unknown:2| |$knormal:7| |$knormal:6|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

