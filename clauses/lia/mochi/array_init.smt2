(set-info :origin "Verification conditions for the caml program
  let mk_array n i = if 0<=i && i<n then 0 else -1
  let update i a x j = if j=i then x else a(j)
  let rec init i n a =
    if i>=n then a
    else init (i+1) n (update i a 1)
  
  let main n i =
    let x = init 0 n (mk_array n) in
     if 0<=i && i<n then
      assert (x i >=1) (* check that the array has been initialized *)
    else ()
")

(set-logic HORN)

(declare-fun |mk_array$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |mk_array$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:10|
  ( Int ) Bool
)

(declare-fun |update$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |init$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |init$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |init$unknown:1|
  ( Int ) Bool
)

(declare-fun |mk_array$unknown:7|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-10:n| Int) )
    (=>
      true
      (|mk_array$unknown:7| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) )
      (|init$unknown:1| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) )
      (|init$unknown:2| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:3| |$V-reftype:5| |$alpha-8:n| |$knormal:13|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|update$unknown:14| |$V-reftype:5| |$knormal:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|update$unknown:15| |$V-reftype:32| |$knormal:12| |$knormal:10| |$alpha-7:i|) (|init$unknown:3| |$knormal:12| |$alpha-8:n| |$knormal:13|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:4| |$V-reftype:32| |$knormal:12| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (not (= 0 |$knormal:6|)) (|init$unknown:5| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:4| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$alpha-9:a| Int) (|$knormal:10| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|update$unknown:11| |$alpha-9:a| |$alpha-7:i|) (|init$unknown:4| |$V-reftype:7| |$alpha-9:a| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|update$unknown:12| |$V-reftype:7| |$alpha-9:a| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$knormal:13|) (|init$unknown:5| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (not (= 0 |$knormal:6|)) (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:3| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|update$unknown:11| |$V-reftype:24| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:3| |$V-reftype:24| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:1| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:13| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|init$unknown:2| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|update$unknown:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:10| 1) (not (not (= 0 |$knormal:6|))) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:1| |$alpha-7:i|) )
      (|update$unknown:13| |$knormal:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:n| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) (|init$unknown:3| |$V-reftype:5| |$alpha-10:n| |$knormal:27|) )
      (|mk_array$unknown:8| |$V-reftype:5| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-10:n| Int) (|$knormal:26| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) (|mk_array$unknown:9| |$V-reftype:21| |$knormal:26| |$alpha-10:n|) (|init$unknown:3| |$knormal:26| |$alpha-10:n| |$knormal:27|) )
      (|init$unknown:4| |$V-reftype:21| |$knormal:26| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:n| Int) (|$alpha-11:i| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:27| Int) )
    ( and (= |$knormal:27| 0) (= (not (= 0 |$knormal:25|)) (>= |$knormal:23| 1)) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (< |$alpha-11:i| |$alpha-10:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-11:i|)) (not (not (= 0 |$knormal:25|))) (not (= 0 |$knormal:22|)) (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| |$knormal:27|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$V-reftype:36| 0) (not (= 0 |$knormal:3|)) (|mk_array$unknown:8| |$alpha-2:i| |$alpha-1:n|) (|mk_array$unknown:7| |$alpha-1:n|) )
      (|mk_array$unknown:9| |$V-reftype:36| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$V-reftype:37| (- 1)) (not (not (= 0 |$knormal:3|))) (|mk_array$unknown:8| |$alpha-2:i| |$alpha-1:n|) (|mk_array$unknown:7| |$alpha-1:n|) )
      (|mk_array$unknown:9| |$V-reftype:37| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-3:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-6:j| |$alpha-3:i|)) (= |$V-reftype:40| |$knormal:5|) (not (not (= 0 |$knormal:4|))) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:12| |$knormal:5| |$alpha-6:j| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:15| |$V-reftype:40| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-3:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-6:j| |$alpha-3:i|)) (= |$V-reftype:39| |$alpha-5:x|) (not (= 0 |$knormal:4|)) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:15| |$V-reftype:39| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-6:j| |$alpha-3:i|)) (not (not (= 0 |$knormal:4|))) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:11| |$alpha-6:j| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$alpha-11:i| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) (= (not (= 0 |$knormal:22|)) (and (not (= 0 |$knormal:20|)) (not (= 0 |$knormal:21|)))) (= (not (= 0 |$knormal:21|)) (< |$alpha-11:i| |$alpha-10:n|)) (= (not (= 0 |$knormal:20|)) (<= 0 |$alpha-11:i|)) (not (= 0 |$knormal:22|)) )
      (|init$unknown:5| |$alpha-11:i| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(check-sat)

(get-model)

(exit)

