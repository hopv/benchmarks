(set-info :origin "Verification conditions for the caml program
  
  let update a i x j = if j=i then x else a j
  
  let rec dotprod v1 v2 n i sum =
    if i > n
    then sum
    else
      begin
        assert (0<=i && i<=n);
        dotprod v1 v2 n (i+1) (sum + v1 i * v2 i)
      end
  
  let main i n =
    let v1 i = 0 in
    let v2 i = 0 in
    dotprod v1 v2 n 0 0; ()
")

(set-logic HORN)

(declare-fun |update$unknown:17|
  ( Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:13|
  ( Int ) Bool
)

(declare-fun |dotprod$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:11|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:5|
  ( Int ) Bool
)

(declare-fun |dotprod$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:9|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-17:i| Int) (|$alpha-18:n| Int) (|$alpha-19:i| Int) )
    (=>
      ( and (= |$V-reftype:63| 0) (|$innerFunc:1-v1$unknown:3| |$alpha-19:i| |$alpha-18:n| |$alpha-17:i|) (|$innerFunc:1-v1$unknown:2| |$alpha-18:n| |$alpha-17:i|) (|$innerFunc:1-v1$unknown:1| |$alpha-17:i|) )
      (|$innerFunc:1-v1$unknown:4| |$V-reftype:63| |$alpha-19:i| |$alpha-18:n| |$alpha-17:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:25| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (|dotprod$unknown:9| |$knormal:25|) (|$innerFunc:1-v1$unknown:4| |$V-reftype:7| |$knormal:25| |$alpha-12:n| |$alpha-11:i|) )
      (|dotprod$unknown:10| |$V-reftype:7| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-14:i| Int) (|$alpha-15:n| Int) (|$alpha-16:i| Int) )
    (=>
      ( and (= |$V-reftype:62| 0) (|$innerFunc:2-v2$unknown:7| |$alpha-16:i| |$alpha-15:n| |$alpha-14:i|) (|$innerFunc:2-v2$unknown:6| |$alpha-15:n| |$alpha-14:i|) (|$innerFunc:2-v2$unknown:5| |$alpha-14:i|) )
      (|$innerFunc:2-v2$unknown:8| |$V-reftype:62| |$alpha-16:i| |$alpha-15:n| |$alpha-14:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:28| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (|dotprod$unknown:11| |$knormal:28|) (|$innerFunc:2-v2$unknown:8| |$V-reftype:14| |$knormal:28| |$alpha-12:n| |$alpha-11:i|) )
      (|dotprod$unknown:12| |$V-reftype:14| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-10:$$tmp::1| Int) (|$alpha-5:v1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:9| |$alpha-5:v1|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|) )
      (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:11| |$V-reftype:19|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:11| |$V-reftype:19|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-10:$$tmp::1| Int) (|$alpha-6:v2| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|) (|dotprod$unknown:11| |$alpha-6:v2|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (= |$V-reftype:58| |$knormal:19|) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:16| |$knormal:19| |$knormal:17| |$knormal:14| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:16| |$V-reftype:58| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:9| |$V-reftype:15|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:9| |$V-reftype:15|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:13| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:14| |$knormal:14| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:15| |$knormal:17| |$knormal:14| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:11| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (|dotprod$unknown:11| |$V-reftype:19|) )
      (|$innerFunc:2-v2$unknown:7| |$V-reftype:19| |$alpha-12:n| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (= |$alpha-10:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:22|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) )
      (|dotprod$unknown:9| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= |$V-reftype:50| |$alpha-9:sum|) (not (= 0 |$knormal:3|)) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) )
      (|dotprod$unknown:16| |$V-reftype:50| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (<= |$alpha-8:i| |$alpha-7:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-8:i|)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:22|))) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:14| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:13| |$alpha-7:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (|dotprod$unknown:9| |$V-reftype:15|) )
      (|$innerFunc:1-v1$unknown:3| |$V-reftype:15| |$alpha-12:n| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-2:i| Int) (|$alpha-3:x| Int) (|$alpha-4:j| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-4:j| |$alpha-2:i|)) (= |$V-reftype:48| |$knormal:2|) (not (not (= 0 |$knormal:1|))) (|update$unknown:21| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:20| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:19| |$alpha-2:i|) (|update$unknown:18| |$knormal:2| |$alpha-4:j|) )
      (|update$unknown:22| |$V-reftype:48| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-2:i| Int) (|$alpha-3:x| Int) (|$alpha-4:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-4:j| |$alpha-2:i|)) (= |$V-reftype:47| |$alpha-3:x|) (not (= 0 |$knormal:1|)) (|update$unknown:21| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:20| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:19| |$alpha-2:i|) )
      (|update$unknown:22| |$V-reftype:47| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:i| Int) (|$alpha-3:x| Int) (|$alpha-4:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-4:j| |$alpha-2:i|)) (not (not (= 0 |$knormal:1|))) (|update$unknown:21| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:20| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:19| |$alpha-2:i|) )
      (|update$unknown:17| |$alpha-4:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|$innerFunc:1-v1$unknown:1| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|$innerFunc:1-v1$unknown:2| |$alpha-12:n| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|$innerFunc:2-v2$unknown:5| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|$innerFunc:2-v2$unknown:6| |$alpha-12:n| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|dotprod$unknown:13| |$alpha-12:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|dotprod$unknown:14| |$knormal:36| |$alpha-12:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) )
      (|dotprod$unknown:15| |$knormal:39| |$knormal:36| |$alpha-12:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

