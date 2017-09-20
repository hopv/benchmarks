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
  (forall ( (|$alpha-1:x| Int) (|$knormal:2| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:2| 1) )
      (|loop$unknown:2| |$knormal:2| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:12| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:12| 1) (= |$alpha-3:y| 0) (not (= |$alpha-2:x| 0)) )
      (|zip$unknown:5| |$knormal:12| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:15| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:15| 1) (= |$alpha-2:x| 0) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:5| |$knormal:15| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:9| Int) )
    (=>
      ( and (|zip$unknown:5| |$knormal:9| (- |$alpha-3:y| 1) (- |$alpha-2:x| 1)) (not (= |$alpha-2:x| 0)) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:5| (+ 1 |$knormal:9|) |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    (=>
      ( and (= |$alpha-3:y| 0) (= |$alpha-2:x| 0) )
      (|zip$unknown:5| 0 |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:18| Int) )
    ( and (|zip$unknown:5| |$knormal:18| |$alpha-4:n| |$alpha-4:n|) (not (= |$knormal:18| |$alpha-4:n|)) )
    )
  )
)
(check-sat)

(get-model)

