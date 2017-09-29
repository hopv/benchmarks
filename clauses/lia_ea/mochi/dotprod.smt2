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

(declare-fun |sub$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |sub$unknown:16|
  ( Int Int Int ) Bool
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

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:13|
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
  (forall ( (|$alpha-16:n| Int) (|$knormal:48| Int) )
    (=>
      ( and (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-2:src| Int) )
    (=>
      ( and (= |$V-reftype:41| |$alpha-2:src|) true )
      (|arraysize$unknown:2| |$V-reftype:41| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (= |$V-reftype:59| |$knormal:40|) (|dotprod_aux$unknown:11| |$knormal:40| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      (|dotprod$unknown:5| |$V-reftype:59| |$alpha-15:v2| |$alpha-14:v1|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      (|dotprod_aux$unknown:10| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true (|arraysize$unknown:2| |$knormal:28| |$alpha-14:v1|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:v1| Int) (|$alpha-15:v2| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (|dotprod$unknown:4| |$alpha-15:v2| |$alpha-14:v1|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$V-reftype:56| |$knormal:27|) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:22| Int) (|$knormal:25| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:14| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:16| |$knormal:10| |$alpha-12:i| |$alpha-10:v1|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (= |$V-reftype:52| |$alpha-13:sum|) (not (= 0 |$knormal:7|)) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:52| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (not (not (= 0 |$knormal:7|))) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-12:i| |$alpha-9:n|)) (not (not (= 0 |$knormal:7|))) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-1:n| Int) )
    (=>
      ( and (= |$V-reftype:40| |$alpha-1:n|) true )
      (|make_array$unknown:13| |$V-reftype:40| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:47| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (= |$alpha-16:n| |$alpha-17:m|)) (= (not (= 0 |$knormal:41|)) (<= 0 |$alpha-16:n|)) (not (= 0 |$knormal:43|)) (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) (|make_array$unknown:13| |$knormal:47| |$alpha-17:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:47| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (= |$alpha-16:n| |$alpha-17:m|)) (= (not (= 0 |$knormal:41|)) (<= 0 |$alpha-16:n|)) (not (= 0 |$knormal:43|)) (|make_array$unknown:13| |$knormal:48| |$alpha-16:n|) (|make_array$unknown:13| |$knormal:47| |$alpha-17:m|) )
      (|dotprod$unknown:4| |$knormal:47| |$knormal:48|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$alpha-8:$$tmp::1| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (= |$alpha-8:$$tmp::1| 1) (= |$V-reftype:50| 0) (not (= 0 |$knormal:6|)) (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) true )
      (|sub$unknown:16| |$V-reftype:50| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (not (not (= 0 |$knormal:6|))) (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (= |$V-reftype:45| 1) (not (= 0 |$knormal:3|)) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
      (|update$unknown:20| |$V-reftype:45| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (not (not (= 0 |$knormal:3|))) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

(exit)

