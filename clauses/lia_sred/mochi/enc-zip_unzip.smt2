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

(declare-fun |unzip$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |unzip$unknown:9|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-4:x| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) )
    (=>
      ( and (|unzip$unknown:9| |$cond-alpha-rename:4| |$cond-alpha-rename:3| (- |$cond-alpha-rename:15| 1)) (not (= |$cond-alpha-rename:15| 0)) (not (= |$alpha-4:x| 0)) )
      (|unzip$unknown:9| (+ |$cond-alpha-rename:4| 1) (+ |$cond-alpha-rename:3| 1) |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-4:x| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:48| Int) (|$knormal:7| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:48| (+ |$V-reftype:10| 1) (+ |$cond-alpha-rename:37| 1) |$cond-alpha-rename:36|) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| (- |$cond-alpha-rename:40| 1)) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| (- |$alpha-4:x| 1)) (|unzip$unknown:9| |$cond-alpha-rename:38| |$cond-alpha-rename:37| (- |$cond-alpha-rename:43| 1)) (not (= |$cond-alpha-rename:36| 0)) (not (= |$cond-alpha-rename:40| 0)) (not (= |$cond-alpha-rename:43| 0)) (not (= |$alpha-4:x| 0)) (= (+ |$cond-alpha-rename:37| 1) (+ |$knormal:7| 1)) (= (+ |$V-reftype:10| 1) (+ |$cond-alpha-rename:38| 1)) )
      (|unzip$unknown:10| |$cond-alpha-rename:48| |$V-reftype:10| |$knormal:7| (- |$alpha-4:x| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:17| Int) )
    (=>
      ( and (|unzip$unknown:10| |$knormal:17| 0 0 |$alpha-4:x|) (= |$alpha-4:x| 0) )
      (|unzip$unknown:11| |$knormal:17| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:12| Int) )
    (=>
      ( and (|unzip$unknown:11| |$knormal:12| (- |$alpha-4:x| 1)) (not (= |$alpha-4:x| 0)) )
      (|unzip$unknown:11| |$knormal:12| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) )
    (=>
      ( and (= |$alpha-4:x| 0) )
      (|unzip$unknown:9| 0 0 |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-8:n| Int) (|zip| Int) )
    (=>
      ( and (|unzip$unknown:9| |$V-reftype:19| |zip| |$alpha-8:n|) )
      (|zip$unknown:13| |$V-reftype:19| |zip|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$V-reftype:28| Int) (|$alpha-8:n| Int) (|zip| Int) )
    (=>
      ( and (|unzip$unknown:9| |$V-reftype:27| |zip| |$alpha-8:n|) (|zip$unknown:14| |$V-reftype:28| |$V-reftype:27| |zip|) )
      (|unzip$unknown:10| |$V-reftype:28| |$V-reftype:27| |zip| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:24| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:14| |$knormal:24| (- |$alpha-7:y| 1) (- |$alpha-6:x| 1)) (not (= |$alpha-6:x| 0)) (not (= |$alpha-7:y| 0)) )
      (|zip$unknown:14| (+ 1 |$knormal:24|) |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-6:x| 0) (= |$alpha-7:y| 0) )
      (|zip$unknown:14| 0 |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-6:x| 0) (not (= |$alpha-7:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-7:y| 0) (not (= |$alpha-6:x| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (not (= |$alpha-6:x| 0)) (not (= |$alpha-7:y| 0)) )
      (|zip$unknown:13| (- |$alpha-7:y| 1) (- |$alpha-6:x| 1))
    )
  )
)
(check-sat)

(get-model)

