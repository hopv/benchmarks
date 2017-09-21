(set-info :origin "Verification conditions for the caml program
  let succ x = x + 1
  let rec repeat f n =
    if n = 0
    then 0
    else f (repeat f (n-1))
  
  let main n =
    assert (repeat succ n = n)
")

(set-logic HORN)

(declare-fun |repeat$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |repeat$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (not (= |$alpha-3:n| 0)) (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|) )
      (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|succ| Int) )
    (=>
      ( and true )
      (|repeat$unknown:2| (+ |succ| 1) |succ|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (not (= |$alpha-3:n| 0)) (|repeat$unknown:4| |$knormal:5| (- |$alpha-3:n| 1)) (|repeat$unknown:2| |$knormal:7| |$knormal:5|) )
      (|repeat$unknown:4| |$knormal:7| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|repeat$unknown:4| 0 0)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:10| Int) )
    ( and (not (= |$knormal:10| |$alpha-4:n|)) (|repeat$unknown:4| |$knormal:10| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

