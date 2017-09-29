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
  (forall ( (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 3) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:5| (- |$knormal:4| 1)) (= |$knormal:4| (* 2 |$alpha-1:x|)) (= (not (= 0 |$knormal:3|)) (<= |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (= |$V-reftype:16| |$knormal:6|) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) (|f$unknown:2| |$knormal:6| |$knormal:5|) true )
      (|f$unknown:2| |$V-reftype:16| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| (- 3)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (= |$V-reftype:9| |$knormal:9|) (not (= 0 |$knormal:1|)) (|f$unknown:2| |$knormal:9| |$knormal:8|) true )
      (|f$unknown:2| |$V-reftype:9| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- 3)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (not (= 0 |$knormal:1|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (* 2 |$alpha-1:x|)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (= |$V-reftype:12| (- |$knormal:7| 1)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true )
      (|f$unknown:2| |$V-reftype:12| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$knormal:4| 1)) (= |$knormal:4| (* 2 |$alpha-1:x|)) (= (not (= 0 |$knormal:3|)) (<= |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 2)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:x| (- 2))) (= |$V-reftype:17| |$alpha-1:x|) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true )
      (|f$unknown:2| |$V-reftype:17| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:13| Int) )
    ( and (= (not (= 0 |$knormal:13|)) (>= |$knormal:11| 0)) (= |$knormal:10| 3) (not (not (= 0 |$knormal:13|))) (|f$unknown:2| |$knormal:11| |$knormal:10|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

