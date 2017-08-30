(set-info :origin "Verification conditions for the caml program
  let rec loop x = loop ()
  let rec zip x y =
    if x = 0
    then
      if y = 0
      then 0
      else loop ()
    else
      if y = 0
      then loop ()
      else 1 + zip (x-1) (y-1)
  
  let main n =
    assert (zip n n = n)
")

(set-logic HORN)

(declare-fun |zip$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |loop$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |loop$unknown:1|
  ( Int ) Bool
)

(declare-fun |zip$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      true
      (|zip$unknown:3| |$alpha-4:n|)
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
  (forall ( (|$V-reftype:13| Int) (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:13| |$knormal:2|) (|loop$unknown:2| |$knormal:2| |$knormal:1|) (|loop$unknown:1| |$alpha-1:x|) )
      (|loop$unknown:2| |$V-reftype:13| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|loop$unknown:1| |$alpha-1:x|) )
      (|loop$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-2:x| Int) (|$knormal:12| Int) (|$knormal:11| Int) (|$alpha-3:y| Int) (|$knormal:4| Bool) (|$V-reftype:21| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-3:y| 0)) (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$knormal:11| 1) (= |$V-reftype:21| |$knormal:12|) (not |$knormal:3|) |$knormal:4| (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) (|loop$unknown:2| |$knormal:12| |$knormal:11|) )
      (|zip$unknown:5| |$V-reftype:21| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Bool) (|$alpha-2:x| Int) (|$knormal:15| Int) (|$knormal:14| Int) (|$alpha-3:y| Int) (|$knormal:3| Bool) (|$V-reftype:18| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$knormal:14| 1) (= |$knormal:13| (= |$alpha-3:y| 0)) (= |$V-reftype:18| |$knormal:15|) (not |$knormal:13|) |$knormal:3| (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) (|loop$unknown:2| |$knormal:15| |$knormal:14|) )
      (|zip$unknown:5| |$V-reftype:18| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$knormal:3| Bool) (|$knormal:7| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:9| Int) (|$knormal:5| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= |$knormal:4| (= |$alpha-3:y| 0)) (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$V-reftype:24| (+ 1 |$knormal:9|)) (not |$knormal:4|) (not |$knormal:3|) (|zip$unknown:5| |$knormal:9| |$knormal:7| |$knormal:5|) (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|zip$unknown:5| |$V-reftype:24| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:13| Bool) (|$V-reftype:16| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$knormal:13| (= |$alpha-3:y| 0)) (= |$V-reftype:16| 0) |$knormal:3| |$knormal:13| (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|zip$unknown:5| |$V-reftype:16| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Bool) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$knormal:14| 1) (= |$knormal:13| (= |$alpha-3:y| 0)) (not |$knormal:13|) |$knormal:3| (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|loop$unknown:1| |$knormal:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:4| Bool) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-3:y| 0)) (= |$knormal:3| (= |$alpha-2:x| 0)) (= |$knormal:11| 1) (not |$knormal:3|) |$knormal:4| (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|loop$unknown:1| |$knormal:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:5| Int) (|$knormal:3| Bool) (|$alpha-3:y| Int) (|$alpha-2:x| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= |$knormal:4| (= |$alpha-3:y| 0)) (= |$knormal:3| (= |$alpha-2:x| 0)) (not |$knormal:4|) (not |$knormal:3|) (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|zip$unknown:3| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Bool) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= |$knormal:4| (= |$alpha-3:y| 0)) (= |$knormal:3| (= |$alpha-2:x| 0)) (not |$knormal:4|) (not |$knormal:3|) (|zip$unknown:4| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:3| |$alpha-2:x|) )
      (|zip$unknown:4| |$knormal:7| |$knormal:5|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Int) (|$alpha-4:n| Int) (|$knormal:20| Bool) )
    ( and (= |$knormal:20| (= |$knormal:18| |$alpha-4:n|)) (not |$knormal:20|) (|zip$unknown:5| |$knormal:18| |$alpha-4:n| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

