(set-info :origin "Verification conditions for the caml program
  let rec loop x = loop x
  let rec zip x y =
   if x=0 then
     if y=0 then x
     else assert false
   else if y=0 then assert false
   else 1 + zip (x-1) (y-1)
  
  let rec map x =
    if x=0 then x else 1+ map (x-1)
  
  let main n =
    assert(map (zip n n)=n)
")

(set-logic HORN)

(declare-fun |zip$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |map$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |loop$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-5:n| Int) )
    (=>
      ( and true )
      (|zip$unknown:6| |$alpha-5:n| |$alpha-5:n|)
    )
  )
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
  (forall ( (|$alpha-4:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|map$unknown:4| |$knormal:13| (- |$alpha-4:x| 1)) (not (= |$alpha-4:x| 0)) )
      (|map$unknown:4| (+ 1 |$knormal:13|) |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) )
    (=>
      ( and (= |$alpha-4:x| 0) )
      (|map$unknown:4| |$alpha-4:x| |$alpha-4:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:17| Int) (|$knormal:19| Int) )
    ( and (|map$unknown:4| |$knormal:19| |$knormal:17|) (|zip$unknown:7| |$knormal:17| |$alpha-5:n| |$alpha-5:n|) (not (= |$knormal:19| |$alpha-5:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:8| Int) )
    (=>
      ( and (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:7| |$knormal:8| (- |$alpha-3:y| 1) (- |$alpha-2:x| 1)) (not (= |$alpha-2:x| 0)) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:7| (+ 1 |$knormal:8|) |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    (=>
      ( and (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (= |$alpha-3:y| 0) (= |$alpha-2:x| 0) )
      (|zip$unknown:7| |$alpha-2:x| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    ( and (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (= |$alpha-2:x| 0) (not (= |$alpha-3:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    ( and (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (= |$alpha-3:y| 0) (not (= |$alpha-2:x| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) )
    (=>
      ( and (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (not (= |$alpha-2:x| 0)) (not (= |$alpha-3:y| 0)) )
      (|zip$unknown:6| (- |$alpha-3:y| 1) (- |$alpha-2:x| 1))
    )
  )
)
(check-sat)

(get-model)

