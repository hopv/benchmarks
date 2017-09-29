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

(declare-fun |add$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (= |$V-reftype:12| (+ |$alpha-1:x| |$alpha-2:y|)) true true )
      (|add$unknown:3| |$V-reftype:12| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-3:n| 0)) (= |$V-reftype:16| |$knormal:7|) (not (not (= 0 |$knormal:1|))) (|sum$unknown:5| |$knormal:3| |$knormal:2|) true (|add$unknown:3| |$knormal:7| |$knormal:3| |$alpha-3:n|) )
      (|sum$unknown:5| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) (|sum$unknown:5| |$knormal:3| |$knormal:2|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) (|sum$unknown:5| |$knormal:3| |$knormal:2|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-3:n| 0)) (= |$V-reftype:14| 0) (not (= 0 |$knormal:1|)) true )
      (|sum$unknown:5| |$V-reftype:14| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    ( and (= (not (= 0 |$knormal:10|)) (<= |$alpha-4:n| |$knormal:8|)) (not (not (= 0 |$knormal:10|))) (|sum$unknown:5| |$knormal:8| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

