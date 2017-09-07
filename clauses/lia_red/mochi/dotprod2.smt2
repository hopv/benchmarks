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

(declare-fun |dotprod$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:11|
  ( Int ) Bool
)

(declare-fun |dotprod$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:9|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:7| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$V-reftype:7| 0) (|dotprod$unknown:9| |$knormal:25|) )
      (|dotprod$unknown:10| |$V-reftype:7| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$V-reftype:14| 0) (|dotprod$unknown:11| |$knormal:28|) )
      (|dotprod$unknown:12| |$V-reftype:14| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:17| Int) (|$knormal:14| Int) (|$knormal:22| Bool) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$knormal:6| Int) (|$knormal:4| Int) (|$V-reftype:17| Int) (|$alpha-5:v1| Int) (|$alpha-8:i| Int) (|$knormal:3| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:9| |$alpha-5:v1|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|) )
      (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:3| Bool) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$knormal:6| Int) (|$alpha-8:i| Int) (|$knormal:4| Int) (|$V-reftype:19| Int) (|$knormal:22| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:11| |$V-reftype:19|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:11| |$V-reftype:19|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:17| Int) (|$knormal:14| Int) (|$knormal:22| Bool) (|$alpha-6:v2| Int) (|$knormal:4| Int) (|$alpha-8:i| Int) (|$V-reftype:21| Int) (|$knormal:6| Int) (|$alpha-9:sum| Int) (|$alpha-7:n| Int) (|$knormal:3| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|) (|dotprod$unknown:11| |$alpha-6:v2|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$V-reftype:58| Int) (|$knormal:22| Bool) (|$knormal:14| Int) (|$knormal:19| Int) (|$alpha-8:i| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$alpha-9:sum| Int) (|$alpha-7:n| Int) (|$knormal:17| Int) (|$knormal:3| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (= |$V-reftype:58| |$knormal:19|) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:16| |$knormal:19| |$knormal:17| |$knormal:14| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:16| |$V-reftype:58| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:3| Bool) (|$V-reftype:15| Int) (|$alpha-8:i| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$alpha-9:sum| Int) (|$alpha-7:n| Int) (|$knormal:22| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:9| |$V-reftype:15|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:9| |$V-reftype:15|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:3| Bool) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$knormal:6| Int) (|$knormal:4| Int) (|$alpha-8:i| Int) (|$knormal:22| Bool) (|$knormal:14| Int) (|$knormal:17| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (* |$knormal:4| |$knormal:6|)) (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (= |$knormal:17| (+ |$alpha-9:sum| |$knormal:8|)) (= |$knormal:14| (+ |$alpha-8:i| 1)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:15| |$knormal:17| |$knormal:14| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$knormal:4| Int) (|$alpha-8:i| Int) (|$knormal:22| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:11| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$knormal:22| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (not |$knormal:3|) |$knormal:22| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true )
      (|dotprod$unknown:9| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-7:n| Int) (|$alpha-9:sum| Int) (|$alpha-8:i| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$V-reftype:50| |$alpha-9:sum|) |$knormal:3| (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true )
      (|dotprod$unknown:16| |$V-reftype:50| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:22| Bool) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$alpha-7:n| Int) (|$knormal:3| Bool) )
    ( and (= |$knormal:3| (> |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (<= |$alpha-8:i| |$alpha-7:n|)) (= |$knormal:20| (<= 0 |$alpha-8:i|)) (not |$knormal:3|) (not |$knormal:22|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) true true )
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

