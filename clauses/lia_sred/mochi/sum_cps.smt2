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

(declare-fun |cps_sum$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |cps_sum$unknown:10|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:n| Int) (|$V-reftype:3| Int) (|$cond-alpha-rename:12| Bool) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:13| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:13| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:12| (<= |$alpha-1:n| 0)) (= |$V-reftype:3| (+ |$cond-alpha-rename:1| |$alpha-1:n|)) (not |$knormal:1|) (not |$cond-alpha-rename:12|) (|cps_sum$unknown:10| |$cond-alpha-rename:1| |$cond-alpha-rename:13|) )
      (|cps_sum$unknown:10| |$V-reftype:3| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$cond-alpha-rename:27| Bool) (|$cond-alpha-rename:22| Bool) (|$cond-alpha-rename:28| Int) (|$knormal:5| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$knormal:4| Int) (|$cond-alpha-rename:29| Int) (|$alpha-1:n| Int) (|$cond-alpha-rename:24| Bool) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:28| (+ |$knormal:4| |$alpha-1:n|)) (= |$cond-alpha-rename:28| (+ |$cond-alpha-rename:26| |$alpha-1:n|)) (= |$cond-alpha-rename:27| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:25| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:24| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:23| (- |$alpha-1:n| 1)) (= |$cond-alpha-rename:22| (<= |$alpha-1:n| 0)) (= |$V-reftype:9| |$cond-alpha-rename:29|) (not |$knormal:1|) (not |$cond-alpha-rename:27|) (not |$cond-alpha-rename:24|) (not |$cond-alpha-rename:22|) (|cps_sum$unknown:11| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$alpha-1:n|) (|cps_sum$unknown:10| |$knormal:4| |$knormal:5|) (|cps_sum$unknown:10| |$knormal:4| |$cond-alpha-rename:23|) (|cps_sum$unknown:10| |$cond-alpha-rename:26| |$cond-alpha-rename:25|) )
      (|cps_sum$unknown:11| |$V-reftype:9| |$knormal:4| |$knormal:5|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:x| Int) (|$knormal:17| Bool) )
    ( and (= |$knormal:17| (>= |$alpha-5:x| |$alpha-4:n|)) (not |$knormal:17|) (|cps_sum$unknown:10| |$alpha-5:x| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-3:n| Int) (|$knormal:12| Int) (|$cond-alpha-rename:30| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:30| (>= |$knormal:12| |$alpha-3:n|)) (= |$V-reftype:14| 1) |$cond-alpha-rename:30| (|cps_sum$unknown:10| |$knormal:12| |$alpha-3:n|) )
      (|cps_sum$unknown:11| |$V-reftype:14| |$knormal:12| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-1:n| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:27| |$knormal:11|) |$knormal:1| true (|cps_sum$unknown:11| |$knormal:11| |$knormal:10| |$alpha-1:n|) )
      (|cps_sum$unknown:12| |$V-reftype:27| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:9| Int) (|$knormal:5| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:1|) true (|cps_sum$unknown:12| |$knormal:9| |$knormal:5|) )
      (|cps_sum$unknown:12| |$V-reftype:29| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$knormal:1| Bool) (|$alpha-1:n| Int) )
    (=>
      ( and (= |$knormal:10| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) |$knormal:1| true )
      (|cps_sum$unknown:10| |$knormal:10| |$alpha-1:n|)
    )
  )
)
(check-sat)

(get-model)

