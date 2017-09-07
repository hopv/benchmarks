(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update i n a x = a i; let a j = if i=j then x else a j in a
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else bcopy_aux m src (update i m des (src i)) (i+1)
  
  let main i n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if i=0 && n<=m then bcopy_aux n array1 array2 i else ()
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:11|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:116| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:89| Bool) (|$cond-alpha-rename:85| Bool) (|$cond-alpha-rename:49| Bool) (|$cond-alpha-rename:43| Bool) (|$cond-alpha-rename:121| Bool) (|$cond-alpha-rename:115| Bool) (|$knormal:46| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:111| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-18:i| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:50| Int) (|$alpha-22:$$tmp::2| Int) (|$cond-alpha-rename:16| Int) (|$alpha-23:j| Int) (|$cond-alpha-rename:112| Bool) (|$cond-alpha-rename:118| Bool) (|$cond-alpha-rename:14| Bool) (|$cond-alpha-rename:46| Bool) (|$cond-alpha-rename:52| Bool) (|$cond-alpha-rename:87| Bool) (|$knormal:45| Bool) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:88| Int) )
    (=>
      ( and (= |$knormal:45| (= |$alpha-18:i| |$alpha-23:j|)) (= |$cond-alpha-rename:90| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:89| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:88| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:87| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:86| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:85| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:54| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:52| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:51| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:49| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:48| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:46| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:45| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:43| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:14| (= |$alpha-18:i| |$alpha-23:j|)) (= |$cond-alpha-rename:122| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:121| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:120| (+ |$cond-alpha-rename:117| 1)) (= |$cond-alpha-rename:118| (>= |$cond-alpha-rename:117| |$alpha-19:n|)) (= |$cond-alpha-rename:116| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:115| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:114| (+ |$cond-alpha-rename:111| 1)) (= |$cond-alpha-rename:112| (>= |$cond-alpha-rename:111| |$alpha-19:n|)) (= |$V-reftype:70| |$knormal:46|) (not |$knormal:45|) (not |$cond-alpha-rename:89|) (not |$cond-alpha-rename:87|) (not |$cond-alpha-rename:85|) (not |$cond-alpha-rename:52|) (not |$cond-alpha-rename:49|) (not |$cond-alpha-rename:46|) (not |$cond-alpha-rename:43|) (not |$cond-alpha-rename:14|) (not |$cond-alpha-rename:121|) (not |$cond-alpha-rename:118|) (not |$cond-alpha-rename:115|) (not |$cond-alpha-rename:112|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:117|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:111|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-18:i| |$alpha-19:n| |$alpha-18:i|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:117| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:111| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$knormal:46| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:16| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:13| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:53| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:50| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:47| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:44| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:15| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:12| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:119| |$cond-alpha-rename:117| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:113| |$cond-alpha-rename:111| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-18:i| |$alpha-19:n|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:70| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:128| Int) (|$V-reftype:69| Int) (|$cond-alpha-rename:55| Bool) (|$cond-alpha-rename:124| Bool) (|$alpha-23:j| Int) (|$alpha-22:$$tmp::2| Int) (|$cond-alpha-rename:125| Int) (|$alpha-18:i| Int) (|$alpha-21:x| Int) (|$alpha-19:n| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:56| Int) (|$knormal:45| Bool) (|$cond-alpha-rename:127| Bool) (|$cond-alpha-rename:91| Bool) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:57| Int) )
    (=>
      ( and (= |$knormal:45| (= |$alpha-18:i| |$alpha-23:j|)) (= |$cond-alpha-rename:92| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:91| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:57| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:55| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:128| (+ |$alpha-18:i| 1)) (= |$cond-alpha-rename:127| (>= |$alpha-18:i| |$alpha-19:n|)) (= |$cond-alpha-rename:126| (+ |$cond-alpha-rename:123| 1)) (= |$cond-alpha-rename:124| (>= |$cond-alpha-rename:123| |$alpha-19:n|)) (= |$V-reftype:69| |$alpha-21:x|) (not |$cond-alpha-rename:91|) (not |$cond-alpha-rename:55|) (not |$cond-alpha-rename:127|) (not |$cond-alpha-rename:124|) |$knormal:45| (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:123|) (|update$unknown:21| |$alpha-18:i| |$alpha-19:n| |$alpha-18:i|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:123| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:56| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:125| |$cond-alpha-rename:123| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-18:i| |$alpha-19:n|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:69| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:61| Bool) (|$cond-alpha-rename:5| Bool) (|$cond-alpha-rename:130| Bool) (|$V-reftype:5| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:131| Int) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:62| Int) (|$knormal:13| Int) (|$cond-alpha-rename:133| Bool) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:93| Bool) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:94| Int) )
    (=>
      ( and (= |$cond-alpha-rename:96| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:95| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:94| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:93| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:63| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:61| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:60| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:58| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:5| (= |$alpha-4:i| |$V-reftype:5|)) (= |$cond-alpha-rename:134| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:133| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:132| (+ |$cond-alpha-rename:129| 1)) (= |$cond-alpha-rename:130| (>= |$cond-alpha-rename:129| |$alpha-5:n|)) (not |$cond-alpha-rename:95|) (not |$cond-alpha-rename:93|) (not |$cond-alpha-rename:61|) (not |$cond-alpha-rename:58|) (not |$cond-alpha-rename:5|) (not |$cond-alpha-rename:133|) (not |$cond-alpha-rename:130|) (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$cond-alpha-rename:129|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:129| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$knormal:13| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:4| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:62| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:59| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:3| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:131| |$cond-alpha-rename:129| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$knormal:35| Bool) (|$V-reftype:18| Int) (|$alpha-14:n| Int) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:33| (= |$alpha-13:i| 0)) |$knormal:35| (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-14:n|) )
      (|make_array$unknown:17| |$V-reftype:18| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$V-reftype:18| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$alpha-12:i| Int) (|$V-reftype:20| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:34| Bool) (|$knormal:33| Bool) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:37| Bool) (|$knormal:35| Bool) (|$alpha-14:n| Int) (|$knormal:44| Int) (|$cond-alpha-rename:39| Bool) (|$V-reftype:40| Int) (|$alpha-13:i| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:33| (= |$alpha-13:i| 0)) (= |$cond-alpha-rename:39| (and |$cond-alpha-rename:37| |$cond-alpha-rename:38|)) (= |$cond-alpha-rename:38| (< |$knormal:44| |$alpha-14:n|)) (= |$cond-alpha-rename:37| (<= 0 |$knormal:44|)) (= |$V-reftype:40| 0) |$knormal:35| |$cond-alpha-rename:39| (|make_array$unknown:17| |$knormal:44| |$alpha-14:n|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-14:n|) )
      (|bcopy_aux$unknown:11| |$V-reftype:40| |$knormal:44| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:22| Bool) (|$cond-alpha-rename:171| Bool) (|$cond-alpha-rename:165| Bool) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:169| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:176| Int) (|$V-reftype:53| Int) (|$knormal:23| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:168| Bool) (|$cond-alpha-rename:173| Bool) (|$knormal:14| Bool) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:24| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:24| (+ |$cond-alpha-rename:21| 1)) (= |$cond-alpha-rename:22| (>= |$cond-alpha-rename:21| |$alpha-9:m|)) (= |$cond-alpha-rename:175| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:173| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:172| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:171| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:170| (+ |$cond-alpha-rename:167| 1)) (= |$cond-alpha-rename:168| (>= |$cond-alpha-rename:167| |$alpha-9:m|)) (= |$cond-alpha-rename:166| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:165| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (not |$cond-alpha-rename:22|) (not |$cond-alpha-rename:173|) (not |$cond-alpha-rename:171|) (not |$cond-alpha-rename:168|) (not |$cond-alpha-rename:165|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:21|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:167|) (|update$unknown:21| |$alpha-12:i| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:21| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:167| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:176| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:23| |$cond-alpha-rename:21| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:174| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:169| |$cond-alpha-rename:167| |$alpha-9:m|) (|$innerFunc:1-a$unknown:8| |$V-reftype:53| |$knormal:23| |$cond-alpha-rename:176| |$knormal:15| |$alpha-9:m| |$alpha-12:i|) )
      (|bcopy_aux$unknown:13| |$V-reftype:53| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Bool) (|$knormal:30| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) (|$knormal:32| Int) (|$V-reftype:62| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:62| |$knormal:32|) (not |$knormal:14|) true (|bcopy_aux$unknown:15| |$knormal:32| |$knormal:30| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:62| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:14| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$knormal:35| Bool) (|$alpha-14:n| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:25| Int) (|$V-reftype:22| Int) (|$cond-alpha-rename:26| Bool) (|$cond-alpha-rename:28| Int) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:33| (= |$alpha-13:i| 0)) (= |$cond-alpha-rename:28| (+ |$cond-alpha-rename:25| 1)) (= |$cond-alpha-rename:26| (>= |$cond-alpha-rename:25| |$alpha-14:n|)) (not |$cond-alpha-rename:26|) |$knormal:35| (|update$unknown:21| |$V-reftype:22| |$alpha-14:n| |$cond-alpha-rename:25|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:25| |$alpha-14:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:27| |$cond-alpha-rename:25| |$alpha-14:n|) )
      (|make_array$unknown:17| |$V-reftype:22| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:33| Bool) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:32| Int) (|$V-reftype:40| Int) (|$knormal:35| Bool) (|$knormal:43| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:31| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:42| Bool) (|$cond-alpha-rename:30| Bool) (|$alpha-13:i| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:33| (= |$alpha-13:i| 0)) (= |$cond-alpha-rename:42| (and |$cond-alpha-rename:40| |$cond-alpha-rename:41|)) (= |$cond-alpha-rename:41| (< |$knormal:43| |$alpha-15:m|)) (= |$cond-alpha-rename:40| (<= 0 |$knormal:43|)) (= |$cond-alpha-rename:32| (+ |$cond-alpha-rename:29| 1)) (= |$cond-alpha-rename:30| (>= |$cond-alpha-rename:29| |$alpha-14:n|)) (= |$V-reftype:40| 0) (not |$cond-alpha-rename:30|) |$knormal:35| |$cond-alpha-rename:42| (|update$unknown:21| |$knormal:43| |$alpha-14:n| |$cond-alpha-rename:29|) (|make_array$unknown:17| |$knormal:43| |$alpha-15:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:29| |$alpha-14:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:31| |$cond-alpha-rename:29| |$alpha-14:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:40| |$knormal:43| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:14| Bool) )
    (=>
      ( and (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:60| 1) |$knormal:14| true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:60| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:99| Bool) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:2| Int) )
    (=>
      ( and (= |$cond-alpha-rename:99| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:2| |$alpha-4:i|) (= |$cond-alpha-rename:100| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:1| |$alpha-4:i|) (not |$cond-alpha-rename:99|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:21| |$cond-alpha-rename:1| |$alpha-5:n| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-13:i| Int) (|$knormal:35| Bool) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:33| (= |$alpha-13:i| 0)) |$knormal:35| )
      (|bcopy_aux$unknown:14| |$alpha-13:i| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

