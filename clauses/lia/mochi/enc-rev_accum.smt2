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

(declare-fun |rev$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |rev$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      (|rev$unknown:1| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      (|rev$unknown:2| |$knormal:8| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$alpha-2:m| Int) (|$alpha-1:n| Int) (|$knormal:4| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (= |$alpha-1:n| 0)) (= |$V-reftype:13| |$knormal:6|) (not |$knormal:1|) (|rev$unknown:3| |$knormal:6| |$knormal:4| |$knormal:2|) (|rev$unknown:2| |$alpha-2:m| |$alpha-1:n|) (|rev$unknown:1| |$alpha-1:n|) )
      (|rev$unknown:3| |$V-reftype:13| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-1:n| 0)) (= |$V-reftype:10| |$alpha-2:m|) |$knormal:1| (|rev$unknown:2| |$alpha-2:m| |$alpha-1:n|) (|rev$unknown:1| |$alpha-1:n|) )
      (|rev$unknown:3| |$V-reftype:10| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (= |$alpha-1:n| 0)) (not |$knormal:1|) (|rev$unknown:2| |$alpha-2:m| |$alpha-1:n|) (|rev$unknown:1| |$alpha-1:n|) )
      (|rev$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:m| Int) (|$alpha-1:n| Int) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (+ |$alpha-2:m| 1)) (= |$knormal:2| (- |$alpha-1:n| 1)) (= |$knormal:1| (= |$alpha-1:n| 0)) (not |$knormal:1|) (|rev$unknown:2| |$alpha-2:m| |$alpha-1:n|) (|rev$unknown:1| |$alpha-1:n|) )
      (|rev$unknown:2| |$knormal:4| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:12| Bool) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-3:n| Int) )
    ( and (= |$knormal:8| 0) (= |$knormal:12| (>= |$knormal:10| |$alpha-3:n|)) (not |$knormal:12|) (|rev$unknown:3| |$knormal:10| |$knormal:8| |$alpha-3:n|) )
    )
  )
)
(check-sat)

(get-model)

