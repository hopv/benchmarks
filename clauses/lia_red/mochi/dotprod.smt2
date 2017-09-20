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

(declare-fun |dotprod_aux$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |sub$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:7| Int) )
    (=>
      ( and (= |$cond-alpha-rename:6| |$cond-alpha-rename:7|) (<= 0 |$cond-alpha-rename:6|) )
      (|dotprod_aux$unknown:10| 0 0 |$cond-alpha-rename:7| |$cond-alpha-rename:6| |$cond-alpha-rename:6|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) (|$knormal:27| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:44| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:43| |$cond-alpha-rename:45|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:59| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:58| |$cond-alpha-rename:60|) (|dotprod_aux$unknown:11| |$knormal:27| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$cond-alpha-rename:46| |$alpha-12:i| |$cond-alpha-rename:43|) (|sub$unknown:16| |$cond-alpha-rename:61| |$alpha-12:i| |$cond-alpha-rename:58|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:45|)) (not (= |$alpha-12:i| |$cond-alpha-rename:60|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$knormal:27| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$knormal:27| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:44| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:43| |$cond-alpha-rename:45|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:67| |$alpha-12:i| |$cond-alpha-rename:66| |$alpha-11:v2| |$cond-alpha-rename:68|) (|dotprod_aux$unknown:11| |$knormal:27| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$cond-alpha-rename:46| |$alpha-12:i| |$cond-alpha-rename:43|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:45|)) (not (= |$alpha-12:i| |$cond-alpha-rename:68|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$knormal:27| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$knormal:27| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:52| |$alpha-12:i| |$cond-alpha-rename:51| |$alpha-10:v1| |$cond-alpha-rename:53|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:74| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:73| |$cond-alpha-rename:75|) (|dotprod_aux$unknown:11| |$knormal:27| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:16| |$cond-alpha-rename:76| |$alpha-12:i| |$cond-alpha-rename:73|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:53|)) (not (= |$alpha-12:i| |$cond-alpha-rename:75|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$knormal:27| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:83| Int) (|$knormal:27| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:52| |$alpha-12:i| |$cond-alpha-rename:51| |$alpha-10:v1| |$cond-alpha-rename:53|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:82| |$alpha-12:i| |$cond-alpha-rename:81| |$alpha-11:v2| |$cond-alpha-rename:83|) (|dotprod_aux$unknown:11| |$knormal:27| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:53|)) (not (= |$alpha-12:i| |$cond-alpha-rename:83|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$knormal:27| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:104| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:103| |$cond-alpha-rename:105|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:89| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|sub$unknown:16| |$cond-alpha-rename:106| |$alpha-12:i| |$cond-alpha-rename:103|) (|sub$unknown:16| |$cond-alpha-rename:91| |$alpha-12:i| |$cond-alpha-rename:88|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:105|)) (not (= |$alpha-12:i| |$cond-alpha-rename:90|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:112| |$alpha-12:i| |$cond-alpha-rename:111| |$alpha-11:v2| |$cond-alpha-rename:113|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:89| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|sub$unknown:16| |$cond-alpha-rename:91| |$alpha-12:i| |$cond-alpha-rename:88|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:113|)) (not (= |$alpha-12:i| |$cond-alpha-rename:90|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:119| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:118| |$cond-alpha-rename:120|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:97| |$alpha-12:i| |$cond-alpha-rename:96| |$alpha-10:v1| |$cond-alpha-rename:98|) (|sub$unknown:16| |$cond-alpha-rename:121| |$alpha-12:i| |$cond-alpha-rename:118|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:120|)) (not (= |$alpha-12:i| |$cond-alpha-rename:98|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:127| |$alpha-12:i| |$cond-alpha-rename:126| |$alpha-11:v2| |$cond-alpha-rename:128|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:97| |$alpha-12:i| |$cond-alpha-rename:96| |$alpha-10:v1| |$cond-alpha-rename:98|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$cond-alpha-rename:128|)) (not (= |$alpha-12:i| |$cond-alpha-rename:98|)) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (= |$alpha-12:i| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$alpha-13:sum| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) )
    ( and (|dotprod_aux$unknown:10| |$cond-alpha-rename:134| |$alpha-7:i| |$cond-alpha-rename:25| |$cond-alpha-rename:133| |$cond-alpha-rename:135|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:26| |$alpha-7:i| |$alpha-6:src| |$cond-alpha-rename:25| |$cond-alpha-rename:27|) (|sub$unknown:16| |$cond-alpha-rename:136| |$alpha-7:i| |$cond-alpha-rename:133|) (< |$alpha-7:i| |$cond-alpha-rename:25|) (<= 0 |$alpha-7:i|) (not (= |$alpha-7:i| |$cond-alpha-rename:135|)) (not (= |$alpha-7:i| |$cond-alpha-rename:27|)) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) )
    ( and (|dotprod_aux$unknown:10| |$cond-alpha-rename:142| |$alpha-7:i| |$cond-alpha-rename:141| |$cond-alpha-rename:25| |$cond-alpha-rename:143|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:26| |$alpha-7:i| |$alpha-6:src| |$cond-alpha-rename:25| |$cond-alpha-rename:27|) (< |$alpha-7:i| |$cond-alpha-rename:25|) (<= 0 |$alpha-7:i|) (not (= |$alpha-7:i| |$cond-alpha-rename:143|)) (not (= |$alpha-7:i| |$cond-alpha-rename:27|)) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) )
    ( and (|dotprod_aux$unknown:10| |$cond-alpha-rename:31| |$alpha-7:i| |$cond-alpha-rename:30| |$alpha-6:src| |$cond-alpha-rename:32|) (not (= |$alpha-7:i| |$cond-alpha-rename:32|)) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) )
    ( and (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) )
    )
  )
)
(check-sat)

(get-model)

