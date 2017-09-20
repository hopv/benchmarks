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

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:3| Int) )
    (=>
      ( and (|map$unknown:2| |$knormal:3| (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) )
      (|map$unknown:2| (+ 1 |$knormal:3|) |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (= |$alpha-1:x| 0) )
      (|map$unknown:2| |$alpha-1:x| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    ( and (|map$unknown:2| |$knormal:5| |$alpha-2:n|) (|map$unknown:2| |$knormal:7| |$knormal:5|) (not (= |$knormal:7| |$alpha-2:n|)) )
    )
  )
)
(check-sat)

(get-model)

