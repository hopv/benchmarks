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

(declare-fun |map$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |loop$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:6|
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
  (forall ( (|$alpha-5:n| Int) )
    (=>
      true
      (|zip$unknown:6| |$alpha-5:n| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:17| Int) )
    (=>
      ( and (|zip$unknown:7| |$knormal:17| |$alpha-5:n| |$alpha-5:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$V-reftype:15| |$knormal:1|) (|loop$unknown:2| |$knormal:1| |$alpha-1:x|) true )
      (|loop$unknown:2| |$V-reftype:15| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-4:x| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$knormal:12| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:11|)) (= |$alpha-4:x| 0)) (= |$V-reftype:28| (+ 1 |$knormal:13|)) (not (not (= 0 |$knormal:11|))) (|map$unknown:4| |$knormal:13| |$knormal:12|) true )
      (|map$unknown:4| |$V-reftype:28| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-4:x| Int) (|$knormal:11| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (= |$alpha-4:x| 0)) (= |$V-reftype:26| |$alpha-4:x|) (not (= 0 |$knormal:11|)) true )
      (|map$unknown:4| |$V-reftype:26| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$knormal:12| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:11|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:11|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:21| Int) )
    ( and (= (not (= 0 |$knormal:21|)) (= |$knormal:19| |$alpha-5:n|)) (not (not (= 0 |$knormal:21|))) (|zip$unknown:7| |$knormal:17| |$alpha-5:n| |$alpha-5:n|) (|map$unknown:4| |$knormal:19| |$knormal:17|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$V-reftype:24| (+ 1 |$knormal:8|)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:7| |$knormal:8| |$knormal:6| |$knormal:4|) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
      (|zip$unknown:7| |$V-reftype:24| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:10| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= (not (= 0 |$knormal:10|)) (= |$alpha-3:y| 0)) (= |$V-reftype:18| |$alpha-2:x|) (not (= 0 |$knormal:2|)) (not (= 0 |$knormal:10|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
      (|zip$unknown:7| |$V-reftype:18| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:10| Int) (|$knormal:2| Int) )
    ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= (not (= 0 |$knormal:10|)) (= |$alpha-3:y| 0)) (not (not (= 0 |$knormal:10|))) (not (= 0 |$knormal:2|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:2|))) (not (= 0 |$knormal:3|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) true )
      (|zip$unknown:6| |$knormal:6| |$knormal:4|)
    )
  )
)
(check-sat)

(get-model)

(exit)

