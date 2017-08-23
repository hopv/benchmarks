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
      ( and true )
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
  (forall ( (|$knormal:27| Int) (|$alpha-10:n| Int) )
    (=>
      ( and (= |$knormal:27| 0) )
      (|init$unknown:2| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$knormal:13| Int) (|$V-reftype:5| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:3| |$V-reftype:5| |$alpha-8:n| |$knormal:13|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|update$unknown:14| |$V-reftype:5| |$knormal:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:10| Int) (|$V-reftype:32| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:3| |$knormal:12| |$alpha-8:n| |$knormal:13|) (|update$unknown:15| |$V-reftype:32| |$knormal:12| |$knormal:10| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:4| |$V-reftype:32| |$knormal:12| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$V-reftype:6| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:4| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:5| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) |$knormal:6| (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-9:a| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:7| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:4| |$V-reftype:7| |$alpha-9:a| |$alpha-8:n| |$alpha-7:i|) (|update$unknown:11| |$alpha-9:a| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|update$unknown:12| |$V-reftype:7| |$alpha-9:a| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$V-reftype:11| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:10| Int) (|$knormal:13| Int) (|$knormal:10| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:5| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$knormal:13|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:9| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) |$knormal:6| (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:3| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$V-reftype:9| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$knormal:6| Bool) (|$knormal:13| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:24| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (|update$unknown:11| |$V-reftype:24| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:3| |$V-reftype:24| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:6| Bool) (|$knormal:13| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:1| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$knormal:6| Bool) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$knormal:10| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:2| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|update$unknown:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$knormal:10| Int) )
    (=>
      ( and (|init$unknown:1| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) (not |$knormal:6|) (= |$knormal:10| 1) (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|update$unknown:13| |$knormal:10| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$V-reftype:5| Int) (|$knormal:27| Int) )
    (=>
      ( and (|init$unknown:3| |$V-reftype:5| |$alpha-10:n| |$knormal:27|) (= |$knormal:27| 0) )
      (|mk_array$unknown:8| |$V-reftype:5| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) (|$knormal:26| Int) (|$alpha-10:n| Int) (|$V-reftype:21| Int) )
    (=>
      ( and (|init$unknown:3| |$knormal:26| |$alpha-10:n| |$knormal:27|) (|mk_array$unknown:9| |$V-reftype:21| |$knormal:26| |$alpha-10:n|) (= |$knormal:27| 0) )
      (|init$unknown:4| |$V-reftype:21| |$knormal:26| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:22| Bool) (|$alpha-10:n| Int) (|$knormal:23| Int) (|$alpha-11:i| Int) (|$knormal:27| Int) (|$knormal:25| Bool) )
    ( and (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| |$knormal:27|) |$knormal:22| (not |$knormal:25|) (= |$knormal:20| (<= 0 |$alpha-11:i|)) (= |$knormal:21| (< |$alpha-11:i| |$alpha-10:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:25| (>= |$knormal:23| 1)) (= |$knormal:27| 0) )
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$V-reftype:36| Int) )
    (=>
      ( and (|mk_array$unknown:7| |$alpha-1:n|) (|mk_array$unknown:8| |$alpha-2:i| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:36| 0) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|mk_array$unknown:9| |$V-reftype:36| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$V-reftype:37| Int) )
    (=>
      ( and (|mk_array$unknown:7| |$alpha-1:n|) (|mk_array$unknown:8| |$alpha-2:i| |$alpha-1:n|) (not |$knormal:3|) (= |$V-reftype:37| (- 1)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|mk_array$unknown:9| |$V-reftype:37| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$alpha-3:i| Int) (|$knormal:5| Int) (|$knormal:4| Bool) )
    (=>
      ( and (|update$unknown:10| |$alpha-3:i|) (|update$unknown:12| |$knormal:5| |$alpha-6:j| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) (not |$knormal:4|) (= |$V-reftype:40| |$knormal:5|) (= |$knormal:4| (= |$alpha-6:j| |$alpha-3:i|)) )
      (|update$unknown:15| |$V-reftype:40| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-6:j| Int) (|$alpha-5:x| Int) (|$alpha-3:i| Int) (|$knormal:4| Bool) )
    (=>
      ( and (|update$unknown:10| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) |$knormal:4| (= |$V-reftype:39| |$alpha-5:x|) (= |$knormal:4| (= |$alpha-6:j| |$alpha-3:i|)) )
      (|update$unknown:15| |$V-reftype:39| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:j| Int) (|$alpha-5:x| Int) (|$alpha-3:i| Int) (|$knormal:4| Bool) )
    (=>
      ( and (|update$unknown:10| |$alpha-3:i|) (|update$unknown:13| |$alpha-5:x| |$alpha-3:i|) (|update$unknown:14| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|) (not |$knormal:4|) (= |$knormal:4| (= |$alpha-6:j| |$alpha-3:i|)) )
      (|update$unknown:11| |$alpha-6:j| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:22| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) (|$alpha-10:n| Int) (|$knormal:27| Int) )
    (=>
      ( and |$knormal:22| (= |$knormal:20| (<= 0 |$alpha-11:i|)) (= |$knormal:21| (< |$alpha-11:i| |$alpha-10:n|)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:27| 0) )
      (|init$unknown:5| |$alpha-11:i| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(check-sat)

