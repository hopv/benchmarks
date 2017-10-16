(set-info :origin "Verification conditions for the caml program
  let rec fib n =
    if n<2 then 1 else
      fib (n-1) + fib (n-2)
  
  let main n =
    assert (n <= fib n)
")

(set-logic HORN)

(declare-fun |fib$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 2)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:n| 2)) (= |$V-reftype:11| (+ |$knormal:3| |$knormal:6|)) (not (not (= 0 |$knormal:1|))) (|fib$unknown:2| |$knormal:6| |$knormal:5|) (|fib$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|fib$unknown:2| |$V-reftype:11| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 2)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:n| 2)) (not (not (= 0 |$knormal:1|))) (|fib$unknown:2| |$knormal:3| |$knormal:2|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (< |$alpha-1:n| 2)) (= |$V-reftype:8| 1) (not (= 0 |$knormal:1|)) true )
      (|fib$unknown:2| |$V-reftype:8| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-1:n| 2)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    ( and (= (not (= 0 |$knormal:10|)) (<= |$alpha-2:n| |$knormal:8|)) (not (not (= 0 |$knormal:10|))) (|fib$unknown:2| |$knormal:8| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

