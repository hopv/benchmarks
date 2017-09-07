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

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:35| Int) (|$knormal:28| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:24| Bool) (|$cond-alpha-rename:23| Bool) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:18| Bool) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$cond-alpha-rename:20| Bool) (|$cond-alpha-rename:25| Bool) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:17| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (= |$knormal:28| |$alpha-14:v1|) (= |$cond-alpha-rename:4| |$cond-alpha-rename:22|) (= |$cond-alpha-rename:25| (and |$cond-alpha-rename:23| |$cond-alpha-rename:24|)) (= |$cond-alpha-rename:24| (= |$cond-alpha-rename:21| |$cond-alpha-rename:22|)) (= |$cond-alpha-rename:23| (<= 0 |$cond-alpha-rename:21|)) (= |$cond-alpha-rename:20| (and |$cond-alpha-rename:18| |$cond-alpha-rename:19|)) (= |$cond-alpha-rename:19| (= |$cond-alpha-rename:16| |$cond-alpha-rename:17|)) (= |$cond-alpha-rename:18| (<= 0 |$cond-alpha-rename:16|)) (= |$alpha-15:v2| |$cond-alpha-rename:17|) (= |$alpha-14:v1| |$cond-alpha-rename:21|) (= |$alpha-14:v1| |$cond-alpha-rename:16|) |$cond-alpha-rename:25| |$cond-alpha-rename:20| )
      (|dotprod_aux$unknown:10| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:10| Int) (|$cond-alpha-rename:50| Bool) (|$cond-alpha-rename:49| Bool) (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:46| Bool) (|$V-reftype:56| Int) (|$cond-alpha-rename:51| Bool) (|$knormal:25| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:27| Int) (|$knormal:22| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:7| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:51| (and |$cond-alpha-rename:49| |$cond-alpha-rename:50|)) (= |$cond-alpha-rename:50| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:49| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:48| (and |$cond-alpha-rename:46| |$cond-alpha-rename:47|)) (= |$cond-alpha-rename:47| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:46| (<= 0 |$alpha-12:i|)) (= |$V-reftype:56| |$knormal:27|) (not |$knormal:7|) |$cond-alpha-rename:51| |$cond-alpha-rename:48| (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:14| Int) (|$knormal:7| Bool) (|$cond-alpha-rename:54| Bool) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:57| Bool) (|$cond-alpha-rename:52| Bool) (|$cond-alpha-rename:53| Bool) (|$cond-alpha-rename:55| Bool) (|$cond-alpha-rename:56| Bool) (|$knormal:10| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:57| (and |$cond-alpha-rename:55| |$cond-alpha-rename:56|)) (= |$cond-alpha-rename:56| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:55| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:54| (and |$cond-alpha-rename:52| |$cond-alpha-rename:53|)) (= |$cond-alpha-rename:53| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:52| (<= 0 |$alpha-12:i|)) (not |$knormal:7|) |$cond-alpha-rename:57| |$cond-alpha-rename:54| (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|) (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$cond-alpha-rename:60| Bool) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:59| Bool) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:10| 0) (= |$cond-alpha-rename:60| (and |$cond-alpha-rename:58| |$cond-alpha-rename:59|)) (= |$cond-alpha-rename:59| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:58| (<= 0 |$alpha-12:i|)) (not |$knormal:7|) |$cond-alpha-rename:60| (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$V-reftype:52| |$alpha-13:sum|) |$knormal:7| true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:52| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (not |$knormal:7|) true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-6:src| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (not |$knormal:6|) (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) true )
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-3:des| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (not |$knormal:3|) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

