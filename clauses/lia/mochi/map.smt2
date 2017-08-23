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

(declare-fun |map$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:n| Int) )
    (=>
      ( and true )
      (|map$unknown:1| |$alpha-2:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:3| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (|map$unknown:1| |$alpha-1:x|) (|map$unknown:2| |$knormal:3| |$knormal:2|) (not |$knormal:1|) (= |$V-reftype:10| (+ 1 |$knormal:3|)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|map$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|map$unknown:1| |$alpha-1:x|) |$knormal:1| (= |$V-reftype:8| 0) (= |$knormal:1| (= |$alpha-1:x| 0)) )
      (|map$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|map$unknown:1| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|map$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Bool) )
    ( and (|map$unknown:2| |$knormal:5| |$alpha-2:n|) (not |$knormal:7|) (= |$knormal:7| (= |$knormal:5| |$alpha-2:n|)) )
    )
  )
)
(check-sat)

