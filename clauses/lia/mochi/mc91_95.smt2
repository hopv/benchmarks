(set-info :origin "Verification conditions for the caml program
  let rec m x =
    if x > 100
    then x - 10
    else m (m (x + 11))
  
  let main n =
    if n <= 95
    then assert (m n = 91)
    else ()
")

(set-logic HORN)

(declare-fun |m$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (= |$V-reftype:10| |$knormal:5|) (not (not (= 0 |$knormal:1|))) (|m$unknown:2| |$knormal:5| |$knormal:3|) (|m$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|m$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (not (not (= 0 |$knormal:1|))) (|m$unknown:2| |$knormal:3| |$knormal:2|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 100)) (= |$V-reftype:8| (- |$alpha-1:x| 10)) (not (= 0 |$knormal:1|)) true )
      (|m$unknown:2| |$V-reftype:8| |$alpha-1:x|)
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
    ( and (= (not (= 0 |$knormal:9|)) (= |$knormal:7| 91)) (= (not (= 0 |$knormal:6|)) (<= |$alpha-2:n| 95)) (not (not (= 0 |$knormal:9|))) (not (= 0 |$knormal:6|)) (|m$unknown:2| |$knormal:7| |$alpha-2:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (<= |$alpha-2:n| 95)) (not (= 0 |$knormal:6|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

