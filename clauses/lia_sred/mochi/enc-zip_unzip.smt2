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

(declare-fun |zip$unknown:12|
  ( Int ) Bool
)

(declare-fun |unzip$unknown:8|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|unzip$unknown:8| |$V-reftype:17| |$alpha-8:n|) )
      (|zip$unknown:12| |$V-reftype:17|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:33| Int) (|$knormal:6| Bool) (|$cond-alpha-rename:34| Bool) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:73| Bool) (|$V-reftype:1| Int) (|$cond-alpha-rename:3| Int) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$cond-alpha-rename:74| (- |$cond-alpha-rename:72| 1)) (= |$cond-alpha-rename:73| (= |$cond-alpha-rename:72| 0)) (= |$cond-alpha-rename:35| (- |$cond-alpha-rename:33| 1)) (= |$cond-alpha-rename:34| (= |$cond-alpha-rename:33| 0)) (= |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 1)) (= |$V-reftype:1| (+ |$cond-alpha-rename:1| 1)) (not |$knormal:6|) (not |$cond-alpha-rename:73|) (not |$cond-alpha-rename:34|) (|unzip$unknown:9| |$cond-alpha-rename:2| |$cond-alpha-rename:1| |$cond-alpha-rename:74|) (|unzip$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:74|) (|unzip$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:35|) )
      (|unzip$unknown:8| |$V-reftype:1| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:9| Int) (|$alpha-5:k| Int) (|$V-reftype:3| Int) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:37| Bool) (|$cond-alpha-rename:76| Bool) (|$knormal:6| Bool) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:78| Int) (|$alpha-4:x| Int) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$cond-alpha-rename:9| (+ |$cond-alpha-rename:8| 1)) (= |$cond-alpha-rename:80| (- |$cond-alpha-rename:78| 1)) (= |$cond-alpha-rename:79| (= |$cond-alpha-rename:78| 0)) (= |$cond-alpha-rename:77| (- |$cond-alpha-rename:75| 1)) (= |$cond-alpha-rename:76| (= |$cond-alpha-rename:75| 0)) (= |$cond-alpha-rename:41| (- |$cond-alpha-rename:39| 1)) (= |$cond-alpha-rename:40| (= |$cond-alpha-rename:39| 0)) (= |$cond-alpha-rename:38| (- |$cond-alpha-rename:36| 1)) (= |$cond-alpha-rename:37| (= |$cond-alpha-rename:36| 0)) (= |$alpha-5:k| (+ |$cond-alpha-rename:7| 1)) (= |$alpha-5:k| (+ |$cond-alpha-rename:15| 1)) (= |$V-reftype:3| (+ |$cond-alpha-rename:16| 1)) (not |$knormal:6|) (not |$cond-alpha-rename:79|) (not |$cond-alpha-rename:76|) (not |$cond-alpha-rename:40|) (not |$cond-alpha-rename:37|) (|unzip$unknown:9| |$cond-alpha-rename:8| |$cond-alpha-rename:7| |$cond-alpha-rename:80|) (|unzip$unknown:9| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:77|) (|unzip$unknown:8| |$cond-alpha-rename:7| |$cond-alpha-rename:80|) (|unzip$unknown:8| |$cond-alpha-rename:7| |$cond-alpha-rename:41|) (|unzip$unknown:8| |$cond-alpha-rename:15| |$cond-alpha-rename:77|) (|unzip$unknown:8| |$cond-alpha-rename:15| |$cond-alpha-rename:38|) )
      (|unzip$unknown:9| |$V-reftype:3| |$alpha-5:k| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:111| Int) (|$knormal:6| Bool) (|$cond-alpha-rename:131| Bool) (|$cond-alpha-rename:126| Bool) (|$cond-alpha-rename:115| Bool) (|$cond-alpha-rename:125| Int) (|$knormal:8| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:124| Int) (|$knormal:7| Int) (|$V-reftype:10| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:112| Bool) (|$cond-alpha-rename:118| Bool) (|$cond-alpha-rename:128| Bool) (|$cond-alpha-rename:134| Bool) (|$V-reftype:11| Int) (|$cond-alpha-rename:123| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$cond-alpha-rename:137| (+ |$cond-alpha-rename:125| 1)) (= |$cond-alpha-rename:137| (+ |$V-reftype:10| 1)) (= |$cond-alpha-rename:136| (+ |$knormal:7| 1)) (= |$cond-alpha-rename:136| (+ |$cond-alpha-rename:124| 1)) (= |$cond-alpha-rename:136| (+ |$cond-alpha-rename:121| 1)) (= |$cond-alpha-rename:135| (- |$cond-alpha-rename:133| 1)) (= |$cond-alpha-rename:134| (= |$cond-alpha-rename:133| 0)) (= |$cond-alpha-rename:132| (- |$cond-alpha-rename:130| 1)) (= |$cond-alpha-rename:131| (= |$cond-alpha-rename:130| 0)) (= |$cond-alpha-rename:129| (- |$cond-alpha-rename:127| 1)) (= |$cond-alpha-rename:128| (= |$cond-alpha-rename:127| 0)) (= |$cond-alpha-rename:126| (= |$cond-alpha-rename:120| 0)) (= |$cond-alpha-rename:123| (+ |$cond-alpha-rename:122| 1)) (= |$cond-alpha-rename:119| (- |$cond-alpha-rename:117| 1)) (= |$cond-alpha-rename:118| (= |$cond-alpha-rename:117| 0)) (= |$cond-alpha-rename:116| (- |$cond-alpha-rename:114| 1)) (= |$cond-alpha-rename:115| (= |$cond-alpha-rename:114| 0)) (= |$cond-alpha-rename:113| (- |$cond-alpha-rename:111| 1)) (= |$cond-alpha-rename:112| (= |$cond-alpha-rename:111| 0)) (= |$V-reftype:11| |$cond-alpha-rename:138|) (not |$knormal:6|) (not |$cond-alpha-rename:134|) (not |$cond-alpha-rename:131|) (not |$cond-alpha-rename:128|) (not |$cond-alpha-rename:126|) (not |$cond-alpha-rename:118|) (not |$cond-alpha-rename:115|) (not |$cond-alpha-rename:112|) (|unzip$unknown:9| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:116|) (|unzip$unknown:9| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:119|) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| |$knormal:8|) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| |$cond-alpha-rename:113|) (|unzip$unknown:8| |$knormal:7| |$knormal:8|) (|unzip$unknown:8| |$knormal:7| |$cond-alpha-rename:129|) (|unzip$unknown:8| |$knormal:7| |$cond-alpha-rename:113|) (|unzip$unknown:8| |$cond-alpha-rename:124| |$cond-alpha-rename:132|) (|unzip$unknown:8| |$cond-alpha-rename:124| |$cond-alpha-rename:116|) (|unzip$unknown:8| |$cond-alpha-rename:121| |$cond-alpha-rename:135|) (|unzip$unknown:8| |$cond-alpha-rename:121| |$cond-alpha-rename:119|) (|unzip$unknown:10| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136| |$cond-alpha-rename:120|) )
      (|unzip$unknown:10| |$V-reftype:11| |$V-reftype:10| |$knormal:7| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$alpha-4:x| Int) (|$V-reftype:35| Int) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:15| 0) (= |$knormal:13| 0) (= |$V-reftype:35| |$knormal:17|) |$knormal:6| true (|unzip$unknown:10| |$knormal:17| |$knormal:15| |$knormal:13| |$alpha-4:x|) )
      (|unzip$unknown:11| |$V-reftype:35| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:6| Bool) (|$knormal:12| Int) (|$knormal:8| Int) (|$V-reftype:37| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-4:x| 1)) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$V-reftype:37| |$knormal:12|) (not |$knormal:6|) true (|unzip$unknown:11| |$knormal:12| |$knormal:8|) )
      (|unzip$unknown:11| |$V-reftype:37| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:13| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:13| 0) |$knormal:6| true )
      (|unzip$unknown:8| |$knormal:13| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$knormal:6| Bool) (|$knormal:15| Int) (|$alpha-4:x| Int) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:15| 0) (= |$knormal:13| 0) |$knormal:6| true )
      (|unzip$unknown:9| |$knormal:15| |$knormal:13| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|zip| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|unzip$unknown:9| |$V-reftype:19| |zip| |$alpha-8:n|) (|unzip$unknown:8| |zip| |$alpha-8:n|) )
      (|zip$unknown:13| |$V-reftype:19| |zip|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-8:n| Int) (|zip| Int) (|$V-reftype:27| Int) )
    (=>
      ( and (|zip$unknown:14| |$V-reftype:28| |$V-reftype:27| |zip|) (|unzip$unknown:9| |$V-reftype:27| |zip| |$alpha-8:n|) (|unzip$unknown:8| |zip| |$alpha-8:n|) )
      (|unzip$unknown:10| |$V-reftype:28| |$V-reftype:27| |zip| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Int) (|$knormal:18| Bool) (|$knormal:22| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:24| Int) (|$knormal:20| Int) (|$knormal:19| Bool) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$V-reftype:46| (+ 1 |$knormal:24|)) (not |$knormal:19|) (not |$knormal:18|) (|zip$unknown:14| |$knormal:24| |$knormal:22| |$knormal:20|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
      (|zip$unknown:14| |$V-reftype:46| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) (|$V-reftype:40| Int) )
    (=>
      ( and (= |$knormal:26| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$V-reftype:40| 0) |$knormal:26| |$knormal:18| (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
      (|zip$unknown:14| |$V-reftype:40| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:26| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) )
    ( and (= |$knormal:26| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (not |$knormal:26|) |$knormal:18| (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:19| Bool) )
    ( and (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (not |$knormal:18|) |$knormal:19| (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:18| Bool) (|$alpha-7:y| Int) (|$alpha-6:x| Int) (|$knormal:19| Bool) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (not |$knormal:19|) (not |$knormal:18|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
      (|zip$unknown:12| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| (- |$alpha-7:y| 1)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:18| (= |$alpha-6:x| 0)) (not |$knormal:19|) (not |$knormal:18|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:12| |$alpha-6:x|) )
      (|zip$unknown:13| |$knormal:22| |$knormal:20|)
    )
  )
)
(check-sat)

(get-model)

