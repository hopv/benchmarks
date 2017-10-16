(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as mc91
  USED: PEPM2013 as mc91
  *)
  
  let rec mc91 x =
    if x > 100 then
      x - 10
    else
      mc91 (mc91 (x + 11))
  let main n =
    if n <= 101 then assert (mc91 n = 91)
")

(set-logic HORN)

(declare-fun |mc91$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (= |$V-reftype:10| |$knormal:5|) (not (not (= 0 |$knormal:1|))) (|mc91$unknown:2| |$knormal:5| |$knormal:3|) (|mc91$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|mc91$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (not (not (= 0 |$knormal:1|))) (|mc91$unknown:2| |$knormal:3| |$knormal:2|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (= |$V-reftype:8| (- |$alpha-1:x| 10)) (not (= 0 |$knormal:1|)) true )
      (|mc91$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (= |$knormal:7| 91)) (= (not (= 0 |$knormal:6|)) (<= |$alpha-2:n| 101)) (not (not (= 0 |$knormal:9|))) (not (= 0 |$knormal:6|)) (|mc91$unknown:2| |$knormal:7| |$alpha-2:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (<= |$alpha-2:n| 101)) (not (= 0 |$knormal:6|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

