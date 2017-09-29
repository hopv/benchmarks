(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as l-zipmap
  USED: PEPM2013 as l-zipmap
  *)
  
  let rec zip x y =
    if x = 0 then
      if y = 0 then
        x
      else
        assert false
    else
      if y = 0 then
        assert false
      else
        1 + zip (x - 1) (y - 1)
  let rec map x =
    if x = 0 then x else 1 + map (x - 1)
  let main n =
    assert (map (zip n n) = n)
")

(set-logic HORN)

(declare-fun |map$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:4|
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
  (forall ( (|$alpha-4:n| Int) )
    (=>
      true
      (|zip$unknown:4| |$alpha-4:n| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:16| Int) )
    (=>
      ( and (|zip$unknown:5| |$knormal:16| |$alpha-4:n| |$alpha-4:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-3:x| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$knormal:11| (- |$alpha-3:x| 1)) (= (not (= 0 |$knormal:10|)) (= |$alpha-3:x| 0)) (= |$V-reftype:24| (+ 1 |$knormal:12|)) (not (not (= 0 |$knormal:10|))) (|map$unknown:2| |$knormal:12| |$knormal:11|) true )
      (|map$unknown:2| |$V-reftype:24| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-3:x| Int) (|$knormal:10| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:10|)) (= |$alpha-3:x| 0)) (= |$V-reftype:22| |$alpha-3:x|) (not (= 0 |$knormal:10|)) true )
      (|map$unknown:2| |$V-reftype:22| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) (|$knormal:10| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| (- |$alpha-3:x| 1)) (= (not (= 0 |$knormal:10|)) (= |$alpha-3:x| 0)) (not (not (= 0 |$knormal:10|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$knormal:20| Int) )
    ( and (= (not (= 0 |$knormal:20|)) (= |$knormal:18| |$alpha-4:n|)) (not (not (= 0 |$knormal:20|))) (|zip$unknown:5| |$knormal:16| |$alpha-4:n| |$alpha-4:n|) (|map$unknown:2| |$knormal:18| |$knormal:16|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:20| (+ 1 |$knormal:7|)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|zip$unknown:5| |$knormal:7| |$knormal:5| |$knormal:3|) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:5| |$V-reftype:20| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:14| |$alpha-1:x|) (not (= 0 |$knormal:9|)) (not (= 0 |$knormal:1|)) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:5| |$V-reftype:14| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:9|))) (not (= 0 |$knormal:1|)) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:4| |$knormal:5| |$knormal:3|)
    )
  )
)
(check-sat)

(get-model)

(exit)

