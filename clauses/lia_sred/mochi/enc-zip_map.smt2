(set-info :origin "Verification conditions for the caml program
  let rec loop x = loop x
  let rec zip x y =
   if x=0 then
     if y=0 then 0
       else loop()
   else if y=0 then loop()
     else 1 + zip (x-1) (y-1)
  
  let rec map x =
    if x=0 then 0 else 1+ map (x-1)
  
  let main n =
   assert(map (zip n n)>=n)
")

(set-logic HORN)

(declare-fun |map$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |loop$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:1| |$alpha-1:x|) )
      (|loop$unknown:2| |$knormal:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:11| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:11| 1) (= |$alpha-3:y| 0) (not (= |$alpha-2:x| 0)) )
      (|zip$unknown:7| |$knormal:11| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:14| Int) )
    (=>
      ( and (|loop$unknown:2| |$knormal:14| 1) (= |$alpha-2:x| 0) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:7| |$knormal:14| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:17| Int) )
    (=>
      ( and (|map$unknown:4| |$knormal:17| (- |$alpha-4:x| 1)) (not (= |$alpha-4:x| 0)) )
      (|map$unknown:4| (+ 1 |$knormal:17|) |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) )
    (=>
      ( and (= |$alpha-4:x| 0) )
      (|map$unknown:4| 0 |$alpha-4:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    ( and (|map$unknown:4| |$knormal:23| |$knormal:21|) (|zip$unknown:7| |$knormal:21| |$alpha-5:n| |$alpha-5:n|) (not (>= |$knormal:23| |$alpha-5:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:8| Int) )
    (=>
      ( and (|zip$unknown:7| |$knormal:8| (- |$alpha-3:y| 1) (- |$alpha-2:x| 1)) (not (= |$alpha-2:x| 0)) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:7| (+ 1 |$knormal:8|) |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    (=>
      ( and (= |$alpha-3:y| 0) (= |$alpha-2:x| 0) )
      (|zip$unknown:7| 0 |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(check-sat)

(get-model)

