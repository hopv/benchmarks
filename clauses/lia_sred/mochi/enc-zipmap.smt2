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

(declare-fun |zip$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |map$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:4|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and true )
      (|zip$unknown:4| |$alpha-4:n| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) (|$knormal:12| Int) )
    (=>
      ( and (|map$unknown:2| |$knormal:12| (- |$alpha-3:x| 1)) (not (= |$alpha-3:x| 0)) )
      (|map$unknown:2| (+ 1 |$knormal:12|) |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) )
    (=>
      ( and (= |$alpha-3:x| 0) )
      (|map$unknown:2| |$alpha-3:x| |$alpha-3:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:16| Int) (|$knormal:18| Int) )
    ( and (|map$unknown:2| |$knormal:18| |$knormal:16|) (|zip$unknown:5| |$knormal:16| |$alpha-4:n| |$alpha-4:n|) (not (= |$knormal:18| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:7| Int) )
    (=>
      ( and (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) (|zip$unknown:5| |$knormal:7| (- |$alpha-2:y| 1) (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) (not (= |$alpha-2:y| 0)) )
      (|zip$unknown:5| (+ 1 |$knormal:7|) |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-1:x| 0) (= |$alpha-2:y| 0) )
      (|zip$unknown:5| |$alpha-1:x| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    ( and (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-1:x| 0) (not (= |$alpha-2:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    ( and (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-2:y| 0) (not (= |$alpha-1:x| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) (not (= |$alpha-1:x| 0)) (not (= |$alpha-2:y| 0)) )
      (|zip$unknown:4| (- |$alpha-2:y| 1) (- |$alpha-1:x| 1))
    )
  )
)
(check-sat)

(get-model)

