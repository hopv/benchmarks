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

(declare-fun |init$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:2|
  ( Int Int ) Bool
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
  (forall ( (|$knormal:6| Bool) (|$knormal:10| Int) (|$V-reftype:32| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (= |$knormal:10| 1) (not |$knormal:6|) (|update$unknown:15| |$V-reftype:32| |$knormal:12| |$knormal:10| |$alpha-7:i|) (|init$unknown:3| |$knormal:12| |$alpha-8:n| |$knormal:13|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:4| |$V-reftype:32| |$knormal:12| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$V-reftype:6| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) |$knormal:6| (|init$unknown:5| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:4| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$V-reftype:10| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$V-reftype:11| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (not |$knormal:6|) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$knormal:13|) (|init$unknown:5| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:9| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) |$knormal:6| (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:3| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$V-reftype:9| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (not |$knormal:6|) (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:5| |$V-reftype:9| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:6| Bool) (|$cond-alpha-rename:14| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:13| Int) (|$alpha-8:n| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:15| Bool) (|$knormal:6| Bool) (|$cond-alpha-rename:5| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) (= |$cond-alpha-rename:6| (= |$V-reftype:24| |$alpha-7:i|)) (= |$cond-alpha-rename:5| 1) (= |$cond-alpha-rename:15| (>= |$alpha-7:i| |$cond-alpha-rename:13|)) (= |$cond-alpha-rename:14| (+ |$alpha-7:i| 1)) (not |$knormal:6|) (not |$cond-alpha-rename:6|) (not |$cond-alpha-rename:15|) (|init$unknown:3| |$V-reftype:24| |$cond-alpha-rename:13| |$cond-alpha-rename:14|) (|init$unknown:2| |$cond-alpha-rename:13| |$alpha-7:i|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) )
      (|init$unknown:3| |$V-reftype:24| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-7:i| |$alpha-8:n|)) (= |$knormal:13| (+ |$alpha-7:i| 1)) (not |$knormal:6|) (|init$unknown:2| |$alpha-8:n| |$alpha-7:i|) true )
      (|init$unknown:2| |$alpha-8:n| |$knormal:13|)
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) (|$knormal:26| Int) (|$alpha-10:n| Int) (|$V-reftype:21| Int) )
    (=>
      ( and (= |$knormal:27| 0) (|mk_array$unknown:9| |$V-reftype:21| |$knormal:26| |$alpha-10:n|) (|init$unknown:3| |$knormal:26| |$alpha-10:n| |$knormal:27|) )
      (|init$unknown:4| |$V-reftype:21| |$knormal:26| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:21| Bool) (|$knormal:20| Bool) (|$knormal:22| Bool) (|$alpha-10:n| Int) (|$knormal:23| Int) (|$alpha-11:i| Int) (|$knormal:27| Int) (|$knormal:25| Bool) )
    ( and (= |$knormal:27| 0) (= |$knormal:25| (>= |$knormal:23| 1)) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (< |$alpha-11:i| |$alpha-10:n|)) (= |$knormal:20| (<= 0 |$alpha-11:i|)) (not |$knormal:25|) |$knormal:22| (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| |$knormal:27|) )
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:36| Int) (|$cond-alpha-rename:1| Int) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:1| 0) (= |$V-reftype:36| 0) |$knormal:3| (|init$unknown:3| |$alpha-2:i| |$alpha-1:n| |$cond-alpha-rename:1|) )
      (|mk_array$unknown:9| |$V-reftype:36| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:37| Int) (|$cond-alpha-rename:2| Int) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:2| 0) (= |$V-reftype:37| (- 1)) (not |$knormal:3|) (|init$unknown:3| |$alpha-2:i| |$alpha-1:n| |$cond-alpha-rename:2|) )
      (|mk_array$unknown:9| |$V-reftype:37| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$V-reftype:40| Int) (|$cond-alpha-rename:21| Bool) (|$cond-alpha-rename:12| Bool) (|$cond-alpha-rename:20| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:9| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:17| Int) (|$knormal:5| Int) (|$cond-alpha-rename:11| Bool) (|$cond-alpha-rename:18| Bool) (|$knormal:4| Bool) (|$cond-alpha-rename:10| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-6:j| |$alpha-3:i|)) (= |$cond-alpha-rename:21| (>= |$alpha-3:i| |$cond-alpha-rename:19|)) (= |$cond-alpha-rename:20| (+ |$alpha-3:i| 1)) (= |$cond-alpha-rename:18| (>= |$alpha-3:i| |$cond-alpha-rename:16|)) (= |$cond-alpha-rename:17| (+ |$alpha-3:i| 1)) (= |$cond-alpha-rename:12| (>= |$alpha-3:i| |$cond-alpha-rename:9|)) (= |$cond-alpha-rename:11| (= |$alpha-6:j| |$alpha-3:i|)) (= |$cond-alpha-rename:10| 1) (= |$alpha-5:x| 1) (= |$V-reftype:40| |$knormal:5|) (not |$knormal:4|) (not |$cond-alpha-rename:21|) (not |$cond-alpha-rename:18|) (not |$cond-alpha-rename:12|) (not |$cond-alpha-rename:11|) (|init$unknown:4| |$knormal:5| |$alpha-6:j| |$cond-alpha-rename:9| |$alpha-3:i|) (|init$unknown:3| |$alpha-6:j| |$cond-alpha-rename:19| |$cond-alpha-rename:20|) (|init$unknown:3| |$alpha-6:j| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|init$unknown:2| |$cond-alpha-rename:9| |$alpha-3:i|) (|init$unknown:2| |$cond-alpha-rename:19| |$alpha-3:i|) (|init$unknown:2| |$cond-alpha-rename:16| |$alpha-3:i|) )
      (|update$unknown:15| |$V-reftype:40| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$knormal:4| Bool) (|$alpha-3:i| Int) (|$cond-alpha-rename:22| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Bool) (|$alpha-5:x| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-6:j| |$alpha-3:i|)) (= |$cond-alpha-rename:24| (>= |$alpha-3:i| |$cond-alpha-rename:22|)) (= |$cond-alpha-rename:23| (+ |$alpha-3:i| 1)) (= |$alpha-5:x| 1) (= |$V-reftype:39| |$alpha-5:x|) (not |$cond-alpha-rename:24|) |$knormal:4| (|init$unknown:3| |$alpha-6:j| |$cond-alpha-rename:22| |$cond-alpha-rename:23|) (|init$unknown:2| |$cond-alpha-rename:22| |$alpha-3:i|) )
      (|update$unknown:15| |$V-reftype:39| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:22| Bool) (|$knormal:20| Bool) (|$knormal:21| Bool) (|$alpha-10:n| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 0) (= |$knormal:22| (and |$knormal:20| |$knormal:21|)) (= |$knormal:21| (< |$alpha-11:i| |$alpha-10:n|)) (= |$knormal:20| (<= 0 |$alpha-11:i|)) |$knormal:22| )
      (|init$unknown:5| |$alpha-11:i| |$alpha-10:n| |$knormal:27|)
    )
  )
)
(check-sat)

(get-model)

