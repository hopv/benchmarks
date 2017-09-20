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
  (forall ( (|$alpha-1:n| Int) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (|fib$unknown:2| |$knormal:3| (- |$alpha-1:n| 1)) (|fib$unknown:2| |$knormal:6| (- |$alpha-1:n| 2)) (not (< |$alpha-1:n| 2)) )
      (|fib$unknown:2| (+ |$knormal:3| |$knormal:6|) |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (< |$alpha-1:n| 2) )
      (|fib$unknown:2| 1 |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:8| Int) )
    ( and (|fib$unknown:2| |$knormal:8| |$alpha-2:n|) (not (<= |$alpha-2:n| |$knormal:8|)) )
    )
  )
)
(check-sat)

(get-model)

