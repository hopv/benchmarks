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

(declare-fun |fib$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:n| Int) )
    (=>
      true
      (|fib$unknown:1| |$alpha-2:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$knormal:5| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:3| Int) (|$knormal:6| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 2)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (< |$alpha-1:n| 2)) (= |$V-reftype:11| (+ |$knormal:3| |$knormal:6|)) (not |$knormal:1|) (|fib$unknown:2| |$knormal:6| |$knormal:5|) (|fib$unknown:2| |$knormal:3| |$knormal:2|) (|fib$unknown:1| |$alpha-1:n|) )
      (|fib$unknown:2| |$V-reftype:11| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 2)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (< |$alpha-1:n| 2)) (not |$knormal:1|) (|fib$unknown:2| |$knormal:3| |$knormal:2|) (|fib$unknown:1| |$alpha-1:n|) )
      (|fib$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (< |$alpha-1:n| 2)) (= |$V-reftype:8| 1) |$knormal:1| (|fib$unknown:1| |$alpha-1:n|) )
      (|fib$unknown:2| |$V-reftype:8| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (< |$alpha-1:n| 2)) (not |$knormal:1|) (|fib$unknown:1| |$alpha-1:n|) )
      (|fib$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:8| Int) (|$knormal:10| Bool) )
    ( and (= |$knormal:10| (<= |$alpha-2:n| |$knormal:8|)) (not |$knormal:10|) (|fib$unknown:2| |$knormal:8| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

