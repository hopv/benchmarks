(set-info :origin "Verification conditions for the caml program
  let rec cps_sum n k : unit =
    if n <= 0 then
      k 0
    else
      let f x = k (x + n) in
      cps_sum (n-1) f
  let main n =
    let f x = assert (x >= n) in
    cps_sum n f
")

(set-logic HORN)

(declare-fun |cps_sum$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-f$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |cps_sum$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-f$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |cps_sum$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |cps_sum$unknown:9|
  ( Int ) Bool
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
  (forall ( (|$alpha-3:n| Int) )
    (=>
      true
      (|cps_sum$unknown:9| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (|cps_sum$unknown:10| |$V-reftype:17| |$alpha-3:n|) )
      (|$innerFunc:2-f$unknown:7| |$V-reftype:17| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:18| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:18| (+ |$alpha-8:x| |$alpha-6:n|)) (= |$V-reftype:34| |$knormal:19|) (|$innerFunc:1-f$unknown:4| |$alpha-8:x| |$alpha-6:n|) (|$innerFunc:1-f$unknown:3| |$knormal:19| |$knormal:18| |$alpha-6:n|) true )
      (|$innerFunc:1-f$unknown:5| |$V-reftype:34| |$alpha-8:x| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:18| (+ |$alpha-8:x| |$alpha-6:n|)) (|$innerFunc:1-f$unknown:4| |$alpha-8:x| |$alpha-6:n|) true )
      (|$innerFunc:1-f$unknown:2| |$knormal:18| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) (|$innerFunc:1-f$unknown:2| |$V-reftype:3| |$alpha-1:n|) )
      (|cps_sum$unknown:10| |$V-reftype:3| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-1:n| Int) (|$alpha-2:k| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) (|cps_sum$unknown:11| |$V-reftype:19| |$alpha-2:k| |$alpha-1:n|) (|$innerFunc:1-f$unknown:2| |$alpha-2:k| |$alpha-1:n|) )
      (|$innerFunc:1-f$unknown:3| |$V-reftype:19| |$alpha-2:k| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) (|cps_sum$unknown:10| |$knormal:4| |$knormal:5|) (|$innerFunc:1-f$unknown:5| |$V-reftype:9| |$knormal:4| |$alpha-1:n|) )
      (|cps_sum$unknown:11| |$V-reftype:9| |$knormal:4| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-4:n| Int) (|$alpha-5:x| Int) (|$knormal:17| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:x| |$alpha-4:n|)) (= |$V-reftype:32| 1) (not (= 0 |$knormal:17|)) (|$innerFunc:2-f$unknown:7| |$alpha-5:x| |$alpha-4:n|) true )
      (|$innerFunc:2-f$unknown:8| |$V-reftype:32| |$alpha-5:x| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:x| Int) (|$knormal:17| Int) )
    ( and (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:x| |$alpha-4:n|)) (not (not (= 0 |$knormal:17|))) (|$innerFunc:2-f$unknown:7| |$alpha-5:x| |$alpha-4:n|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-3:n| Int) (|$knormal:12| Int) )
    (=>
      ( and (|cps_sum$unknown:10| |$knormal:12| |$alpha-3:n|) (|$innerFunc:2-f$unknown:8| |$V-reftype:14| |$knormal:12| |$alpha-3:n|) )
      (|cps_sum$unknown:11| |$V-reftype:14| |$knormal:12| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) (|cps_sum$unknown:10| |$V-reftype:17| |$knormal:5|) )
      (|$innerFunc:1-f$unknown:4| |$V-reftype:17| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:10| 0) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:27| |$knormal:11|) (not (= 0 |$knormal:1|)) (|cps_sum$unknown:9| |$alpha-1:n|) (|cps_sum$unknown:11| |$knormal:11| |$knormal:10| |$alpha-1:n|) )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:29| |$knormal:9|) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) (|cps_sum$unknown:12| |$knormal:9| |$knormal:5|) )
      (|cps_sum$unknown:12| |$V-reftype:29| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 0) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (= 0 |$knormal:1|)) (|cps_sum$unknown:9| |$alpha-1:n|) )
      (|cps_sum$unknown:10| |$knormal:10| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|cps_sum$unknown:9| |$alpha-1:n|) )
      (|cps_sum$unknown:9| |$knormal:5|)
    )
  )
)
(check-sat)

(get-model)

(exit)

