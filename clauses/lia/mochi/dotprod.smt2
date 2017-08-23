(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec dotprod_aux n v1 v2 i sum =
    if i = n
    then sum
    else dotprod_aux n v1 v2 (i+1) (sum + (sub v1 i) * (sub v2 i))
  
  let dotprod v1 v2 = dotprod_aux (arraysize v1) v1 v2 0 0
  
  let main n m =
    let v1 = make_array n in
    let v2 = make_array m in
    if 0<=n && n=m then (dotprod v1 v2; ()) else ()
")

(set-logic HORN)

(declare-fun |update$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |sub$unknown:14|
  ( Int ) Bool
)

(declare-fun |sub$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:9|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:6|
  ( Int ) Bool
)

(declare-fun |dotprod_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:3|
  ( Int ) Bool
)

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |arraysize$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:12|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-16:n| Int) )
    (=>
      ( and true )
      (|make_array$unknown:12| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$knormal:48| Int) (|$alpha-16:n| Int) )
    (=>
      ( and (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) )
      (|make_array$unknown:12| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:src| Int) (|$V-reftype:41| Int) )
    (=>
      ( and (|arraysize$unknown:1| |$alpha-2:src|) (= |$V-reftype:41| |$alpha-2:src|) )
      (|arraysize$unknown:2| |$V-reftype:41| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$knormal:35| Int) (|$knormal:40| Int) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$knormal:28| Int) (|$knormal:38| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (|dotprod_aux$unknown:11| |$knormal:40| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|) (= |$V-reftype:59| |$knormal:40|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod$unknown:5| |$V-reftype:59| |$alpha-15:v2| |$alpha-14:v1|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$knormal:28| Int) (|$knormal:38| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod_aux$unknown:10| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$knormal:28| Int) (|$knormal:38| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod_aux$unknown:6| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:28| Int) (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:35| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod_aux$unknown:7| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$knormal:28| Int) (|$knormal:38| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod_aux$unknown:8| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:28| Int) (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:35| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|dotprod_aux$unknown:9| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$knormal:38| Int) )
    (=>
      ( and (|dotprod$unknown:3| |$alpha-14:v1|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) (= |$knormal:35| 0) (= |$knormal:38| 0) )
      (|arraysize$unknown:1| |$alpha-14:v1|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:56| Int) (|$knormal:14| Int) (|$knormal:25| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:27| Int) (|$knormal:22| Int) (|$knormal:10| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$V-reftype:56| |$knormal:27|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:7| Bool) (|$knormal:10| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$knormal:14| Int) (|$knormal:16| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:7| Bool) (|$knormal:10| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$knormal:14| Int) (|$knormal:16| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:6| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:14| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:10| Int) (|$knormal:7| Bool) (|$knormal:22| Int) (|$knormal:25| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:7| Bool) (|$knormal:10| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$knormal:14| Int) (|$knormal:16| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:14| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:10| Int) (|$knormal:7| Bool) (|$knormal:22| Int) (|$knormal:25| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (not |$knormal:7|) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:9| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:10| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (not |$knormal:7|) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:14| |$alpha-11:v2|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) (not |$knormal:7|) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) |$knormal:7| (= |$V-reftype:52| |$alpha-13:sum|) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$V-reftype:52| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (not |$knormal:7|) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:14| |$alpha-10:v1|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:6| |$alpha-9:n|) (|dotprod_aux$unknown:7| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:8| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:9| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (not |$knormal:7|) (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$V-reftype:40| Int) )
    (=>
      ( and (|make_array$unknown:12| |$alpha-1:n|) (= |$V-reftype:40| |$alpha-1:n|) )
      (|make_array$unknown:13| |$V-reftype:40| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Bool) (|$knormal:41| Bool) (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:43| Bool) )
    (=>
      ( and (|make_array$unknown:13| |$knormal:47| |$alpha-17:m|) (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) |$knormal:43| (= |$knormal:41| (<= 0 |$alpha-16:n|)) (= |$knormal:42| (= |$alpha-16:n| |$alpha-17:m|)) (= |$knormal:43| (and |$knormal:41| |$knormal:42|)) )
      (|dotprod$unknown:3| |$knormal:48|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$knormal:48| Int) (|$knormal:47| Int) (|$alpha-17:m| Int) (|$alpha-16:n| Int) (|$knormal:41| Bool) (|$knormal:42| Bool) )
    (=>
      ( and (|make_array$unknown:13| |$knormal:47| |$alpha-17:m|) (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) |$knormal:43| (= |$knormal:41| (<= 0 |$alpha-16:n|)) (= |$knormal:42| (= |$alpha-16:n| |$alpha-17:m|)) (= |$knormal:43| (and |$knormal:41| |$knormal:42|)) )
      (|dotprod$unknown:4| |$knormal:47| |$knormal:48|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Bool) (|$V-reftype:50| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:6| Bool) (|$alpha-8:$$tmp::1| Int) )
    (=>
      ( and (|sub$unknown:14| |$alpha-6:src|) (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) |$knormal:6| (= |$V-reftype:50| 0) (= |$alpha-8:$$tmp::1| 1) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) )
      (|sub$unknown:16| |$V-reftype:50| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-6:src| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (|sub$unknown:14| |$alpha-6:src|) (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) (not |$knormal:6|) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$alpha-3:des| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (|update$unknown:17| |$alpha-3:des|) (|update$unknown:18| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) |$knormal:3| (= |$V-reftype:45| 1) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|update$unknown:20| |$V-reftype:45| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|update$unknown:17| |$alpha-3:des|) (|update$unknown:18| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(check-sat)

