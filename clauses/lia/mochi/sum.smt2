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

(declare-fun |sum$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:n| Int) )
    (=>
      true
      (|sum$unknown:1| |$alpha-2:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:10| (+ |$alpha-1:n| |$knormal:3|)) (not |$knormal:1|) (|sum$unknown:2| |$knormal:3| |$knormal:2|) (|sum$unknown:1| |$alpha-1:n|) )
      (|sum$unknown:2| |$V-reftype:10| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:8| 0) |$knormal:1| (|sum$unknown:1| |$alpha-1:n|) )
      (|sum$unknown:2| |$V-reftype:8| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (not |$knormal:1|) (|sum$unknown:1| |$alpha-1:n|) )
      (|sum$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Bool) )
    ( and (= |$knormal:7| (<= |$alpha-2:n| |$knormal:5|)) (not |$knormal:7|) (|sum$unknown:2| |$knormal:5| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

