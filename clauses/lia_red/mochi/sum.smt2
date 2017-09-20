(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as sum
  USED: PEPM2013 as sum
  *)
  let rec sum n =
    if n <= 0
    then 0
    else n + sum (n-1)
  
  let main n =
    assert (n <= sum n)
")

(set-logic HORN)

(declare-fun |sum$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (|sum$unknown:2| |$knormal:3| (- |$alpha-1:n| 1)) (not (<= |$alpha-1:n| 0)) )
      (|sum$unknown:2| (+ |$alpha-1:n| |$knormal:3|) |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (<= |$alpha-1:n| 0) )
      (|sum$unknown:2| 0 |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) )
    ( and (|sum$unknown:2| |$knormal:5| |$alpha-2:n|) (not (<= |$alpha-2:n| |$knormal:5|)) )
    )
  )
)
(check-sat)

(get-model)

