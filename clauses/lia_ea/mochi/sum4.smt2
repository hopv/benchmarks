(set-info :origin "Verification conditions for the caml program
  let rec sum n =
    if n <= 0 then
      0
    else
      n + sum (n-1)
  let main n = assert (4*n-6 <= sum n)
")

(set-logic HORN)

(declare-fun |sum$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:10| (+ |$alpha-1:n| |$knormal:3|)) (not (not (= 0 |$knormal:1|))) (|sum$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|sum$unknown:2| |$V-reftype:10| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:8| 0) (not (= 0 |$knormal:1|)) true )
      (|sum$unknown:2| |$V-reftype:8| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (<= |$knormal:6| |$knormal:7|)) (= |$knormal:6| (- |$knormal:5| 6)) (= |$knormal:5| (* 4 |$alpha-2:n|)) (not (not (= 0 |$knormal:9|))) (|sum$unknown:2| |$knormal:7| |$alpha-2:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$knormal:5| 6)) (= |$knormal:5| (* 4 |$alpha-2:n|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

