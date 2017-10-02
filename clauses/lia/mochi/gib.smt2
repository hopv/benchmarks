(set-info :origin "Verification conditions for the caml program
  (*
  let rec gib a b n =
    if n=0 then a
    else if n=1 then b
    else gib a b (n-1) + gib a b (n-2)
  
  let main n =
    assert (gib 0 1 n >= 0)
  *)
  
  let rec gib a b n =
    if n=0 then a
    else if n=1 then b
    else gib a b (n-1) + gib a b (n-2)
  
  let main n a b =
  if a >= 0 && b >= 0 then
    assert (gib 0 1 n >= 0)
")

(set-logic HORN)

(declare-fun |gib$unknown:4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:15| Int) (|$knormal:8| Int) )
    (=>
      ( and (|gib$unknown:4| |$knormal:15| (- |$alpha-3:n| 2) |$alpha-2:b| |$alpha-1:a|) (|gib$unknown:4| |$knormal:8| (- |$alpha-3:n| 1) |$alpha-2:b| |$alpha-1:a|) (not (= |$alpha-3:n| 0)) (not (= |$alpha-3:n| 1)) )
      (|gib$unknown:4| (+ |$knormal:8| |$knormal:15|) |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$alpha-3:n| 0) )
      (|gib$unknown:4| |$alpha-1:a| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$alpha-3:n| 1) (not (= |$alpha-3:n| 0)) )
      (|gib$unknown:4| |$alpha-2:b| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:a| Int) (|$alpha-6:b| Int) (|$knormal:26| Int) )
    ( and (|gib$unknown:4| |$knormal:26| |$alpha-4:n| 1 0) (>= |$alpha-6:b| 0) (>= |$alpha-5:a| 0) (not (>= |$knormal:26| 0)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

