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

(declare-fun |map$unknown:1|
  ( Int ) Bool
)

(declare-fun |zip$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:4|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) )
    (=>
      ( and (= |$cond-alpha-rename:1| |$alpha-4:n|) (= |$cond-alpha-rename:2| |$alpha-4:n|) )
      (|zip$unknown:4| |$cond-alpha-rename:1| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:16| Int) )
    (=>
      ( and (|zip$unknown:5| |$knormal:16| |$alpha-4:n| |$alpha-4:n|) )
      (|map$unknown:1| |$knormal:16|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Bool) (|$knormal:12| Int) (|$alpha-3:x| Int) (|$knormal:11| Int) (|$V-reftype:24| Int) )
    (=>
      ( and (= |$knormal:11| (- |$alpha-3:x| 1)) (= |$knormal:10| (= |$alpha-3:x| 0)) (= |$V-reftype:24| (+ 1 |$knormal:12|)) (not |$knormal:10|) (|map$unknown:2| |$knormal:12| |$knormal:11|) (|map$unknown:1| |$alpha-3:x|) )
      (|map$unknown:2| |$V-reftype:24| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Bool) (|$alpha-3:x| Int) (|$V-reftype:22| Int) )
    (=>
      ( and (= |$knormal:10| (= |$alpha-3:x| 0)) (= |$V-reftype:22| |$alpha-3:x|) |$knormal:10| (|map$unknown:1| |$alpha-3:x|) )
      (|map$unknown:2| |$V-reftype:22| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-3:x| Int) (|$knormal:10| Bool) )
    (=>
      ( and (= |$knormal:11| (- |$alpha-3:x| 1)) (= |$knormal:10| (= |$alpha-3:x| 0)) (not |$knormal:10|) (|map$unknown:1| |$alpha-3:x|) )
      (|map$unknown:1| |$knormal:11|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Int) (|$knormal:16| Int) (|$alpha-4:n| Int) (|$knormal:20| Bool) )
    ( and (= |$knormal:20| (= |$knormal:18| |$alpha-4:n|)) (not |$knormal:20|) (|zip$unknown:5| |$knormal:16| |$alpha-4:n| |$alpha-4:n|) (|map$unknown:2| |$knormal:18| |$knormal:16|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$knormal:1| Bool) (|$knormal:5| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:7| Int) (|$knormal:3| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:20| (+ 1 |$knormal:7|)) (not |$knormal:2|) (not |$knormal:1|) (|zip$unknown:5| |$knormal:7| |$knormal:5| |$knormal:3|) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:5| |$V-reftype:20| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$knormal:1| Bool) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:14| |$alpha-1:x|) |$knormal:9| |$knormal:1| (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:5| |$V-reftype:14| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:9| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) )
    ( and (= |$knormal:9| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:9|) |$knormal:1| (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (not (exists ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:2| Bool) )
    ( and (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:1|) |$knormal:2| (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:2|) (not |$knormal:1|) (|zip$unknown:4| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:4| |$knormal:5| |$knormal:3|)
    )
  )
)
(check-sat)

(get-model)
