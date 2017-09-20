(set-info :origin "Verification conditions for the caml program
  let rec map x =
   if x=0 then x else 1 + map (x-1)
  
  let main n =
    assert(map (map n) = n)
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
      true
      (|map$unknown:1| |$alpha-2:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:n| Int) (|$knormal:5| Int) )
    (=>
      ( and (|map$unknown:2| |$knormal:5| |$alpha-2:n|) )
      (|map$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:10| (+ 1 |$knormal:3|)) (not (not (= 0 |$knormal:1|))) (|map$unknown:2| |$knormal:3| |$knormal:2|) (|map$unknown:1| |$alpha-1:x|) )
      (|map$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:8| |$alpha-1:x|) (not (= 0 |$knormal:1|)) (|map$unknown:1| |$alpha-1:x|) )
      (|map$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:1|))) (|map$unknown:1| |$alpha-1:x|) )
      (|map$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (= |$knormal:7| |$alpha-2:n|)) (not (not (= 0 |$knormal:9|))) (|map$unknown:2| |$knormal:7| |$knormal:5|) (|map$unknown:2| |$knormal:5| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

