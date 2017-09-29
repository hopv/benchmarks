(set-info :origin "Verification conditions for the caml program
  let rec map x =
    if x = 0
    then 0
    else 1 + map (x-1)
  
  let main n =
    assert (map n = n)
")

(set-logic HORN)

(declare-fun |map$unknown:2|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:10| (+ 1 |$knormal:3|)) (not (not (= 0 |$knormal:1|))) (|map$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|map$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:8| 0) (not (= 0 |$knormal:1|)) true )
      (|map$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    ( and (= (not (= 0 |$knormal:7|)) (= |$knormal:5| |$alpha-2:n|)) (not (not (= 0 |$knormal:7|))) (|map$unknown:2| |$knormal:5| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

