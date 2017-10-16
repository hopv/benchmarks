(set-info :origin "Verification conditions for the caml program
  let rec f g x =
    if x < -3 then
      f g (-4)
    else if x <= 1 then
      g x
    else
      f (f g) (x - 2)
  let incr x = x + 1
  let main n =
    assert(f incr 3 >= -3)
")

(set-logic HORN)

(declare-fun |incr$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:15| 3) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| (- 4)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (= 0 |$knormal:1|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:15| 3) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:g| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| (- 4)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (= 0 |$knormal:1|)) true (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|) true )
      (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:g| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|) true )
      (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|f$unknown:4| |$V-reftype:7| |$knormal:3|) true true )
      (|f$unknown:2| |$V-reftype:7| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$knormal:15| Int) (|incr| Int) )
    (=>
      ( and (= |$knormal:15| 3) (|incr$unknown:6| |$V-reftype:10| |incr|) true )
      (|f$unknown:2| |$V-reftype:10| |incr|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (= |$V-reftype:18| |$knormal:9|) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true (|f$unknown:2| |$knormal:9| |$alpha-2:x|) )
      (|f$unknown:4| |$V-reftype:18| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:11| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$knormal:11| (- 4)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (= |$V-reftype:16| |$knormal:13|) (not (= 0 |$knormal:1|)) (|f$unknown:4| |$knormal:13| |$knormal:11|) true )
      (|f$unknown:4| |$V-reftype:16| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (= |$V-reftype:20| |$knormal:8|) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|f$unknown:4| |$knormal:8| |$knormal:6|) true )
      (|f$unknown:4| |$V-reftype:20| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| (- 4)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (= 0 |$knormal:1|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:x| 2)) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:x| (- 3))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:19| Int) )
    ( and (= (not (= 0 |$knormal:19|)) (>= |$knormal:17| (- 3))) (= |$knormal:15| 3) (not (not (= 0 |$knormal:19|))) (|f$unknown:4| |$knormal:17| |$knormal:15|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-3:x| Int) )
    (=>
      ( and (= |$V-reftype:21| (+ |$alpha-3:x| 1)) true )
      (|incr$unknown:6| |$V-reftype:21| |$alpha-3:x|)
    )
  )
)
(check-sat)

(get-model)

(exit)

