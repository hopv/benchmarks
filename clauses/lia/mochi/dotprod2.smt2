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

(declare-fun |update$unknown:13|
  ( Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int ) Bool
)

(declare-fun |update$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:9|
  ( Int ) Bool
)

(declare-fun |dotprod$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-v2$unknown:3|
  ( Int ) Bool
)

(declare-fun |dotprod$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:5|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-v1$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-15:i| Int) )
    (=>
      ( and (|$innerFunc:1-v1$unknown:1| |$alpha-15:i|) (= |$V-reftype:55| 0) )
      (|$innerFunc:1-v1$unknown:2| |$V-reftype:55| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$V-reftype:3| Int) (|$innerFunc:1-v1| Int) (|$knormal:28| Int) )
    (=>
      ( and (|$innerFunc:1-v1$unknown:2| |$V-reftype:3| |$innerFunc:1-v1|) (|dotprod$unknown:5| |$innerFunc:1-v1|) (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|dotprod$unknown:6| |$V-reftype:3| |$innerFunc:1-v1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$alpha-14:i| Int) )
    (=>
      ( and (|$innerFunc:2-v2$unknown:3| |$alpha-14:i|) (= |$V-reftype:54| 0) )
      (|$innerFunc:2-v2$unknown:4| |$V-reftype:54| |$alpha-14:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$V-reftype:6| Int) (|$innerFunc:2-v2| Int) (|$knormal:28| Int) )
    (=>
      ( and (|$innerFunc:2-v2$unknown:4| |$V-reftype:6| |$innerFunc:2-v2|) (|dotprod$unknown:7| |$innerFunc:2-v2|) (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|dotprod$unknown:8| |$V-reftype:6| |$innerFunc:2-v2|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:3| Bool) (|$knormal:6| Int) (|$knormal:4| Int) (|$knormal:14| Int) (|$knormal:19| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:17| Int) (|$knormal:22| Bool) (|$V-reftype:50| Int) (|$alpha-10:$$tmp::1| Int) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:19| |$knormal:17| |$knormal:14| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$V-reftype:50| |$knormal:19|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:12| |$V-reftype:50| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$V-reftype:7| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:3| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:5| |$V-reftype:7|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:5| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:17| Int) (|$knormal:14| Int) (|$knormal:3| Bool) (|$knormal:6| Int) (|$knormal:4| Int) (|$V-reftype:9| Int) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$alpha-5:v1| Int) (|$knormal:22| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:5| |$alpha-5:v1|) (|dotprod$unknown:6| |$V-reftype:9| |$alpha-5:v1|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:6| |$V-reftype:9| |$alpha-5:v1|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$V-reftype:11| Int) (|$knormal:4| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:6| Int) (|$knormal:3| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:7| |$V-reftype:11|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:7| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:17| Int) (|$knormal:14| Int) (|$knormal:3| Bool) (|$knormal:6| Int) (|$V-reftype:13| Int) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:4| Int) (|$alpha-6:v2| Int) (|$knormal:22| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:7| |$alpha-6:v2|) (|dotprod$unknown:8| |$V-reftype:13| |$alpha-6:v2|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:8| |$V-reftype:13| |$alpha-6:v2|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:17| Int) (|$knormal:14| Int) (|$knormal:3| Bool) (|$knormal:6| Int) (|$knormal:4| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:22| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:10| |$knormal:14| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:3| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:11| |$knormal:17| |$knormal:14| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:3| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:8| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) )
      (|dotprod$unknown:9| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:4| Int) (|$knormal:3| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:6| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) )
      (|dotprod$unknown:7| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:$$tmp::1| Int) (|$knormal:22| Bool) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:3| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:22| (not |$knormal:3|) (= |$alpha-10:$$tmp::1| 1) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) )
      (|dotprod$unknown:5| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:9| |$alpha-7:n|) |$knormal:3| (= |$V-reftype:42| |$alpha-9:sum|) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) )
      (|dotprod$unknown:12| |$V-reftype:42| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:22| Bool) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$alpha-7:n| Int) (|$knormal:3| Bool) )
    ( and (|dotprod$unknown:10| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:11| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:9| |$alpha-7:n|) (not |$knormal:22|) (not |$knormal:3|) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) )
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$V-reftype:7| Int) (|$knormal:31| Int) )
    (=>
      ( and (|dotprod$unknown:5| |$V-reftype:7|) (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|$innerFunc:1-v1$unknown:1| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$V-reftype:11| Int) (|$knormal:31| Int) )
    (=>
      ( and (|dotprod$unknown:7| |$V-reftype:11|) (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|$innerFunc:2-v2$unknown:3| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-3:x| Int) (|$alpha-4:j| Int) (|$knormal:2| Int) (|$alpha-2:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|update$unknown:14| |$knormal:2| |$alpha-4:j|) (|update$unknown:15| |$alpha-2:i|) (|update$unknown:16| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:17| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) (not |$knormal:1|) (= |$V-reftype:40| |$knormal:2|) (= |$knormal:1| (= |$alpha-4:j| |$alpha-2:i|)) )
      (|update$unknown:18| |$V-reftype:40| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-4:j| Int) (|$alpha-3:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|update$unknown:15| |$alpha-2:i|) (|update$unknown:16| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:17| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) |$knormal:1| (= |$V-reftype:39| |$alpha-3:x|) (= |$knormal:1| (= |$alpha-4:j| |$alpha-2:i|)) )
      (|update$unknown:18| |$V-reftype:39| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:i| Int) (|$alpha-3:x| Int) (|$alpha-4:j| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-2:i|) (|update$unknown:16| |$alpha-3:x| |$alpha-2:i|) (|update$unknown:17| |$alpha-4:j| |$alpha-3:x| |$alpha-2:i|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-4:j| |$alpha-2:i|)) )
      (|update$unknown:13| |$alpha-4:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:31| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|dotprod$unknown:10| |$knormal:28| |$alpha-12:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|dotprod$unknown:11| |$knormal:31| |$knormal:28| |$alpha-12:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:31| 0) )
      (|dotprod$unknown:9| |$alpha-12:n|)
    )
  )
)
(check-sat)

