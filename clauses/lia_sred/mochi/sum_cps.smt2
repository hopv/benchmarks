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
  (forall ( (|$alpha-1:n| Int) (|$cond-alpha-rename:1| Int) )
    (=>
      ( and (|cps_sum$unknown:10| |$cond-alpha-rename:1| (- |$alpha-1:n| 1)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) )
      (|cps_sum$unknown:10| (+ |$cond-alpha-rename:1| |$alpha-1:n|) |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:46| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:39| |$alpha-1:n|) (+ |$knormal:4| |$alpha-1:n|)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (|cps_sum$unknown:11| |$cond-alpha-rename:46| (+ |$cond-alpha-rename:39| |$alpha-1:n|) |$alpha-1:n|) (|cps_sum$unknown:10| |$knormal:4| (- |$alpha-1:n| 1)) (|cps_sum$unknown:10| |$knormal:4| (- |$alpha-1:n| 1)) (|cps_sum$unknown:10| |$cond-alpha-rename:39| (- |$alpha-1:n| 1)) )
      (|cps_sum$unknown:11| |$cond-alpha-rename:46| |$knormal:4| (- |$alpha-1:n| 1))
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:x| Int) )
    ( and (|cps_sum$unknown:10| |$alpha-5:x| |$alpha-4:n|) (not (>= |$alpha-5:x| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:12| Int) )
    (=>
      ( and (>= |$knormal:12| |$alpha-3:n|) (|cps_sum$unknown:10| |$knormal:12| |$alpha-3:n|) )
      (|cps_sum$unknown:11| 1 |$knormal:12| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:11| Int) )
    (=>
      ( and (|cps_sum$unknown:11| |$knormal:11| 0 |$alpha-1:n|) (<= |$alpha-1:n| 0) )
      (|cps_sum$unknown:12| |$knormal:11| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|cps_sum$unknown:12| |$knormal:9| (- |$alpha-1:n| 1)) (not (<= |$alpha-1:n| 0)) )
      (|cps_sum$unknown:12| |$knormal:9| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (<= |$alpha-1:n| 0) )
      (|cps_sum$unknown:10| 0 |$alpha-1:n|)
    )
  )
)
(check-sat)

(get-model)

