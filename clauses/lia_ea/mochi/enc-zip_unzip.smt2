(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as l-zipunzip
  USED: PEPM2013 as l-zipunzip
  *)
  
  let f g x y = g (x+1) (y+1)
  let rec unzip x k =
   if x=0 then k 0 0
   else
     unzip (x-1) (f k)
  
  let rec zip x y =
   if x=0 then
    if y=0 then 0
      else assert false
   else if y=0 then assert false
    else 1 + zip (x-1) (y-1)
  
  let main n =
   let x = unzip n zip in ()
")

(set-logic HORN)

(declare-fun |zip$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:6|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |unzip$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:7|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-8:n| Int) )
    (=>
      true
      (|unzip$unknown:7| |$alpha-8:n|)
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
  (forall ( (|$alpha-4:x| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:7| |$alpha-4:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$V-reftype:21| Int) (|$alpha-4:x| Int) (|$alpha-5:k| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:10| |$V-reftype:21| |$V-reftype:20| |$alpha-5:k| |$alpha-4:x|) (|f$unknown:2| |$V-reftype:20| |$alpha-5:k|) true )
      (|f$unknown:3| |$V-reftype:21| |$V-reftype:20| |$alpha-5:k|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:x| Int) (|$alpha-5:k| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:7| |$alpha-4:x|) (|f$unknown:2| |$V-reftype:3| |$alpha-5:k|) true )
      (|unzip$unknown:9| |$V-reftype:3| |$alpha-5:k| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:1| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-3:y| 1)) (= |$knormal:1| (+ |$alpha-2:x| 1)) (= |$V-reftype:31| |$knormal:5|) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) true (|f$unknown:3| |$knormal:5| |$knormal:3| |$knormal:1|) )
      (|f$unknown:6| |$V-reftype:31| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-3:y| 1)) (= |$knormal:1| (+ |$alpha-2:x| 1)) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-3:y| 1)) (= |$knormal:1| (+ |$alpha-2:x| 1)) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) true )
      (|f$unknown:2| |$knormal:3| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-4:x| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| |$knormal:8|) true (|unzip$unknown:7| |$alpha-4:x|) (|f$unknown:6| |$V-reftype:11| |$V-reftype:10| |$knormal:7|) )
      (|unzip$unknown:10| |$V-reftype:11| |$V-reftype:10| |$knormal:7| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Int) (|$alpha-4:x| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (= |$knormal:15| 0) (= |$knormal:13| 0) (= |$V-reftype:35| |$knormal:17|) (not (= 0 |$knormal:6|)) (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:10| |$knormal:17| |$knormal:15| |$knormal:13| |$alpha-4:x|) )
      (|unzip$unknown:11| |$V-reftype:35| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$alpha-4:x| Int) (|$knormal:12| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (= |$V-reftype:37| |$knormal:12|) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:11| |$knormal:12| |$knormal:8|) )
      (|unzip$unknown:11| |$V-reftype:37| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) true (|unzip$unknown:7| |$alpha-4:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-4:x| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:9| |$V-reftype:19| |$knormal:7| |$knormal:8|) true (|unzip$unknown:7| |$alpha-4:x|) )
      (|f$unknown:5| |$V-reftype:19| |$knormal:7|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (= |$knormal:15| 0) (= |$knormal:13| 0) (not (= 0 |$knormal:6|)) (|unzip$unknown:7| |$alpha-4:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (= |$knormal:15| 0) (= |$knormal:13| 0) (not (= 0 |$knormal:6|)) (|unzip$unknown:7| |$alpha-4:x|) )
      (|unzip$unknown:9| |$knormal:15| |$knormal:13| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= (not (= 0 |$knormal:6|)) (= |$alpha-4:x| 0)) (not (not (= 0 |$knormal:6|))) (|unzip$unknown:7| |$alpha-4:x|) )
      (|unzip$unknown:7| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-8:n| Int) (|zip| Int) )
    (=>
      ( and (|unzip$unknown:9| |$V-reftype:19| |zip| |$alpha-8:n|) true )
      (|zip$unknown:13| |$V-reftype:19| |zip|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$V-reftype:28| Int) (|$alpha-8:n| Int) (|zip| Int) )
    (=>
      ( and (|zip$unknown:14| |$V-reftype:28| |$V-reftype:27| |zip|) (|unzip$unknown:9| |$V-reftype:27| |zip| |$alpha-8:n|) true )
      (|unzip$unknown:10| |$V-reftype:28| |$V-reftype:27| |zip| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= (not (= 0 |$knormal:19|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (= |$V-reftype:46| (+ 1 |$knormal:24|)) (not (not (= 0 |$knormal:19|))) (not (not (= 0 |$knormal:18|))) (|zip$unknown:14| |$knormal:24| |$knormal:22| |$knormal:20|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
      (|zip$unknown:14| |$V-reftype:46| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:26| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:26|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (= |$V-reftype:40| 0) (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:18|)) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
      (|zip$unknown:14| |$V-reftype:40| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:26| Int) )
    ( and (= (not (= 0 |$knormal:26|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (not (not (= 0 |$knormal:26|))) (not (= 0 |$knormal:18|)) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:19| Int) )
    ( and (= (not (= 0 |$knormal:19|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (not (not (= 0 |$knormal:18|))) (not (= 0 |$knormal:19|)) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= (not (= 0 |$knormal:19|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (not (not (= 0 |$knormal:19|))) (not (not (= 0 |$knormal:18|))) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= (not (= 0 |$knormal:19|)) (= |$alpha-7:y| 0)) (= (not (= 0 |$knormal:18|)) (= |$alpha-6:x| 0)) (not (not (= 0 |$knormal:19|))) (not (not (= 0 |$knormal:18|))) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) true )
      (|zip$unknown:13| |$knormal:22| |$knormal:20|)
    )
  )
)
(check-sat)

(get-model)

(exit)

