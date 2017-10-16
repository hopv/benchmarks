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
  (forall ( (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (= |$V-reftype:13| |$knormal:6|) (not (not (= 0 |$knormal:1|))) (|rev$unknown:3| |$knormal:6| |$knormal:4| |$knormal:2|) true true )
      (|rev$unknown:3| |$V-reftype:13| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (= |$V-reftype:10| |$alpha-2:m|) (not (= 0 |$knormal:1|)) true true )
      (|rev$unknown:3| |$V-reftype:10| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:10| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    ( and (= |$knormal:8| 0) (= (not (= 0 |$knormal:12|)) (>= |$knormal:10| |$alpha-3:n|)) (not (not (= 0 |$knormal:12|))) (|rev$unknown:3| |$knormal:10| |$knormal:8| |$alpha-3:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

