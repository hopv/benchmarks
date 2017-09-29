(set-info :origin "Verification conditions for the caml program
  let rec succ x = x + 1
  and repeat f n s =
    if n = 0 then
      s
    else
      f (repeat f (n - 1) s)
  and main n = assert (repeat succ n 0 >= n)
")

(set-logic HORN)

(declare-fun |repeat$unknown:5|
  ( Int Int Int ) Bool
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
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:s| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (= |$alpha-3:n| 0)) (|repeat$unknown:5| |$knormal:7| |$alpha-4:s| (- |$alpha-3:n| 1)) (|repeat$unknown:2| |$knormal:9| |$knormal:7|) )
      (|repeat$unknown:5| |$knormal:9| |$alpha-4:s| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:s| Int) )
    (=>
      ( and true )
      (|repeat$unknown:5| |$alpha-4:s| |$alpha-4:s| 0)
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:15| Int) )
    ( and (not (>= |$knormal:15| |$alpha-5:n|)) (|repeat$unknown:5| |$knormal:15| 0 |$alpha-5:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

