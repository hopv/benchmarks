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

(declare-fun |loop$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |map$unknown:3|
  ( Int ) Bool
)

(declare-fun |zip$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |loop$unknown:1|
  ( Int ) Bool
)

(declare-fun |zip$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:5|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-5:n| Int) )
    (=>
      true
      (|zip$unknown:5| |$alpha-5:n|)
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
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (|loop$unknown:1| |$alpha-1:x|) )
      (|loop$unknown:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:21| Int) )
    (=>
      ( and (|zip$unknown:7| |$knormal:21| |$alpha-5:n| |$alpha-5:n|) )
      (|map$unknown:3| |$knormal:21|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$V-reftype:15| |$knormal:1|) (|loop$unknown:2| |$knormal:1| |$alpha-1:x|) (|loop$unknown:1| |$alpha-1:x|) )
      (|loop$unknown:2| |$V-reftype:15| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$knormal:10| 1) (= |$V-reftype:23| |$knormal:11|) (not (not (= 0 |$knormal:2|))) (not (= 0 |$knormal:3|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) (|loop$unknown:2| |$knormal:11| |$knormal:10|) )
      (|zip$unknown:7| |$V-reftype:23| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$knormal:13| 1) (= (not (= 0 |$knormal:12|)) (= |$alpha-3:y| 0)) (= |$V-reftype:20| |$knormal:14|) (not (not (= 0 |$knormal:12|))) (not (= 0 |$knormal:2|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) (|loop$unknown:2| |$knormal:14| |$knormal:13|) )
      (|zip$unknown:7| |$V-reftype:20| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-4:x| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-4:x| 0)) (= |$V-reftype:30| (+ 1 |$knormal:17|)) (not (not (= 0 |$knormal:15|))) (|map$unknown:4| |$knormal:17| |$knormal:16|) (|map$unknown:3| |$alpha-4:x|) )
      (|map$unknown:4| |$V-reftype:30| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-4:x| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-4:x| 0)) (= |$V-reftype:28| 0) (not (= 0 |$knormal:15|)) (|map$unknown:3| |$alpha-4:x|) )
      (|map$unknown:4| |$V-reftype:28| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:15|))) (|map$unknown:3| |$alpha-4:x|) )
      (|map$unknown:3| |$knormal:16|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:25| Int) )
    ( and (= (not (= 0 |$knormal:25|)) (>= |$knormal:23| |$alpha-5:n|)) (not (not (= 0 |$knormal:25|))) (|zip$unknown:7| |$knormal:21| |$alpha-5:n| |$alpha-5:n|) (|map$unknown:4| |$knormal:23| |$knormal:21|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$V-reftype:26| (+ 1 |$knormal:8|)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:7| |$knormal:8| |$knormal:6| |$knormal:4|) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|zip$unknown:7| |$V-reftype:26| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:12| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= (not (= 0 |$knormal:12|)) (= |$alpha-3:y| 0)) (= |$V-reftype:18| 0) (not (= 0 |$knormal:2|)) (not (= 0 |$knormal:12|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|zip$unknown:7| |$V-reftype:18| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$knormal:13| 1) (= (not (= 0 |$knormal:12|)) (= |$alpha-3:y| 0)) (not (not (= 0 |$knormal:12|))) (not (= 0 |$knormal:2|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|loop$unknown:1| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:10| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:2|))) (not (= 0 |$knormal:3|)) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|loop$unknown:1| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|zip$unknown:5| |$knormal:4|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:y| 1)) (= |$knormal:4| (- |$alpha-2:x| 1)) (= (not (= 0 |$knormal:3|)) (= |$alpha-3:y| 0)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:x| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (|zip$unknown:6| |$alpha-3:y| |$alpha-2:x|) (|zip$unknown:5| |$alpha-2:x|) )
      (|zip$unknown:6| |$knormal:6| |$knormal:4|)
    )
  )
)
(check-sat)

(get-model)

