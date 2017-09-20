(set-info :origin "Verification conditions for the caml program
  let rec rev n m =
    if n = 0
    then m
    else rev (n - 1) (m + 1)
  
  let main n =
    assert (rev n 0 >= n)
")

(set-logic HORN)

(declare-fun |rev$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:6| Int) )
    (=>
      ( and (|rev$unknown:3| |$knormal:6| (+ |$alpha-2:m| 1) (- |$alpha-1:n| 1)) (not (= |$alpha-1:n| 0)) )
      (|rev$unknown:3| |$knormal:6| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) )
    (=>
      ( and (= |$alpha-1:n| 0) )
      (|rev$unknown:3| |$alpha-2:m| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:10| Int) )
    ( and (|rev$unknown:3| |$knormal:10| 0 |$alpha-3:n|) (not (>= |$knormal:10| |$alpha-3:n|)) )
    )
  )
)
(check-sat)

(get-model)

