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

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
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
  (forall ( (|$V-reftype:13| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:13| |$knormal:2|) (|loop$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|loop$unknown:2| |$V-reftype:13| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= |$knormal:11| 1) (= |$V-reftype:21| |$knormal:12|) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true (|loop$unknown:2| |$knormal:12| |$knormal:11|) )
      (|zip$unknown:5| |$V-reftype:21| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= |$knormal:14| 1) (= (not (= 0 |$knormal:13|)) (= |$alpha-3:y| 0)) (= |$V-reftype:18| |$knormal:15|) (not (not (= 0 |$knormal:13|))) (not (= 0 |$knormal:3|)) true true (|loop$unknown:2| |$knormal:15| |$knormal:14|) )
      (|zip$unknown:5| |$V-reftype:18| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= |$V-reftype:24| (+ 1 |$knormal:9|)) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|zip$unknown:5| |$knormal:9| |$knormal:7| |$knormal:5|) true true )
      (|zip$unknown:5| |$V-reftype:24| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:13| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= (not (= 0 |$knormal:13|)) (= |$alpha-3:y| 0)) (= |$V-reftype:16| 0) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:13|)) true true )
      (|zip$unknown:5| |$V-reftype:16| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= |$knormal:14| 1) (= (not (= 0 |$knormal:13|)) (= |$alpha-3:y| 0)) (not (not (= 0 |$knormal:13|))) (not (= 0 |$knormal:3|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:11| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (= |$knormal:11| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-3:y| 1)) (= |$knormal:5| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:18| Int) (|$knormal:20| Int) )
    ( and (= (not (= 0 |$knormal:20|)) (= |$knormal:18| |$alpha-4:n|)) (not (not (= 0 |$knormal:20|))) (|zip$unknown:5| |$knormal:18| |$alpha-4:n| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

