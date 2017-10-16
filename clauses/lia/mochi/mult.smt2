(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as mult
  USED: PEPM2013 as mult
  *)
  let rec mult n m =
    if n <= 0 || m <= 0 then
      0
    else
      n + mult n (m-1)
  let main n = assert (n <= mult n n)
")

(set-logic HORN)

(declare-fun |mult$unknown:3|
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
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:m| 1)) (= (not (= 0 |$knormal:3|)) (or (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:m| 0)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:14| (+ |$alpha-1:n| |$knormal:7|)) (not (not (= 0 |$knormal:3|))) (|mult$unknown:3| |$knormal:7| |$knormal:5| |$alpha-1:n|) true true )
      (|mult$unknown:3| |$V-reftype:14| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (or (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:m| 0)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:12| 0) (not (= 0 |$knormal:3|)) true true )
      (|mult$unknown:3| |$V-reftype:12| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:m| 1)) (= (not (= 0 |$knormal:3|)) (or (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:m| 0)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:3|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:m| 1)) (= (not (= 0 |$knormal:3|)) (or (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:m| 0)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:3|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:11| Int) (|$knormal:13| Int) )
    ( and (= (not (= 0 |$knormal:13|)) (<= |$alpha-3:n| |$knormal:11|)) (not (not (= 0 |$knormal:13|))) (|mult$unknown:3| |$knormal:11| |$alpha-3:n| |$alpha-3:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

