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

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 3) )
      (|f$unknown:1| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:3| Bool) (|$knormal:6| Int) (|$alpha-1:x| Int) (|$knormal:5| Int) (|$knormal:1| Bool) (|$V-reftype:16| Int) (|$knormal:4| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (|f$unknown:2| |$knormal:6| |$knormal:5|) |$knormal:3| (not |$knormal:1|) (not |$knormal:2|) (= |$V-reftype:16| |$knormal:6|) (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:2| (< |$alpha-1:x| 2)) (= |$knormal:3| (<= |$alpha-1:x| 2)) (= |$knormal:4| (* 2 |$alpha-1:x|)) (= |$knormal:5| (- |$knormal:4| 1)) )
      (|f$unknown:2| |$V-reftype:16| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$knormal:8| Int) (|$alpha-1:x| Int) (|$knormal:9| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (|f$unknown:2| |$knormal:9| |$knormal:8|) |$knormal:1| (= |$V-reftype:9| |$knormal:9|) (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:8| (- 3)) )
      (|f$unknown:2| |$V-reftype:9| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) |$knormal:1| (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:8| (- 3)) )
      (|f$unknown:1| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:2| Bool) (|$V-reftype:12| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) |$knormal:2| (not |$knormal:1|) (= |$V-reftype:12| (- |$knormal:7| 1)) (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:2| (< |$alpha-1:x| 2)) (= |$knormal:7| (* 2 |$alpha-1:x|)) )
      (|f$unknown:2| |$V-reftype:12| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$knormal:4| Int) (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:3| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) |$knormal:3| (not |$knormal:1|) (not |$knormal:2|) (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:2| (< |$alpha-1:x| 2)) (= |$knormal:3| (<= |$alpha-1:x| 2)) (= |$knormal:4| (* 2 |$alpha-1:x|)) (= |$knormal:5| (- |$knormal:4| 1)) )
      (|f$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:2| Bool) (|$V-reftype:17| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (not |$knormal:1|) (not |$knormal:2|) (not |$knormal:3|) (= |$V-reftype:17| |$alpha-1:x|) (= |$knormal:1| (< |$alpha-1:x| (- 2))) (= |$knormal:2| (< |$alpha-1:x| 2)) (= |$knormal:3| (<= |$alpha-1:x| 2)) )
      (|f$unknown:2| |$V-reftype:17| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:13| Bool) )
    ( and (|f$unknown:2| |$knormal:11| |$knormal:10|) (not |$knormal:13|) (= |$knormal:10| 3) (= |$knormal:13| (>= |$knormal:11| 0)) )
    )
  )
)
(check-sat)

