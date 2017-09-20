(set-info :origin "Verification conditions for the caml program
  (*
  USED: PEPM2013 as sum_intro
  *)
  
  let add x y = x + y
  let rec sum n =
    if n <= 0 then
      0
    else
      add n (sum (n-1))
  let main n = assert (n <= sum n)
")

(set-logic HORN)

(declare-fun |sum$unknown:5|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (|sum$unknown:5| |$knormal:3| (- |$alpha-3:n| 1)) (not (<= |$alpha-3:n| 0)) )
      (|sum$unknown:5| (+ |$alpha-3:n| |$knormal:3|) |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and (<= |$alpha-3:n| 0) )
      (|sum$unknown:5| 0 |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:8| Int) )
    ( and (|sum$unknown:5| |$knormal:8| |$alpha-4:n|) (not (<= |$alpha-4:n| |$knormal:8|)) )
    )
  )
)
(check-sat)

(get-model)

