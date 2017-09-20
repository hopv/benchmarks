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
  (not (exists ( (|$alpha-4:n| Int) (|$cond-alpha-rename:80| Int) )
    ( and (|cps_sum$unknown:10| |$cond-alpha-rename:80| (- |$alpha-4:n| 1)) (not (<= |$alpha-4:n| 0)) (not (<= |$alpha-4:n| 0)) (not (>= (+ |$cond-alpha-rename:80| |$alpha-4:n|) |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:168| Int) )
    (=>
      ( and (|cps_sum$unknown:10| |$cond-alpha-rename:151| (- (- |$cond-alpha-rename:148| 1) 1)) (|cps_sum$unknown:10| |$cond-alpha-rename:155| (- (- |$cond-alpha-rename:148| 1) 1)) (|cps_sum$unknown:10| |$cond-alpha-rename:159| (- (- |$cond-alpha-rename:148| 1) 1)) (|cps_sum$unknown:11| |$cond-alpha-rename:168| (+ (+ |$cond-alpha-rename:159| (- |$cond-alpha-rename:148| 1)) |$cond-alpha-rename:148|) |$cond-alpha-rename:148|) (<= (- |$cond-alpha-rename:148| 1) 0) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= (- |$cond-alpha-rename:148| 1) 0)) (not (<= |$cond-alpha-rename:148| 0)) (not (<= |$cond-alpha-rename:148| 0)) (not (<= |$cond-alpha-rename:148| 0)) (not (<= |$cond-alpha-rename:148| 0)) (= (+ (+ |$cond-alpha-rename:159| (- |$cond-alpha-rename:148| 1)) |$cond-alpha-rename:148|) (+ 0 |$cond-alpha-rename:148|)) (= 0 (+ |$cond-alpha-rename:151| (- |$cond-alpha-rename:148| 1))) (= 0 (+ |$cond-alpha-rename:155| (- |$cond-alpha-rename:148| 1))) )
      (|cps_sum$unknown:12| |$cond-alpha-rename:168| (- |$cond-alpha-rename:148| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:181| Int) )
    (=>
      ( and (|cps_sum$unknown:11| |$cond-alpha-rename:181| (+ 0 |$cond-alpha-rename:170|) |$cond-alpha-rename:170|) (<= (- |$cond-alpha-rename:170| 1) 0) (<= (- |$cond-alpha-rename:170| 1) 0) (<= (- |$cond-alpha-rename:170| 1) 0) (<= (- |$cond-alpha-rename:170| 1) 0) (not (<= |$cond-alpha-rename:170| 0)) (not (<= |$cond-alpha-rename:170| 0)) (not (<= |$cond-alpha-rename:170| 0)) (not (<= |$cond-alpha-rename:170| 0)) (= (+ 0 |$cond-alpha-rename:170|) (+ 0 |$cond-alpha-rename:170|)) )
      (|cps_sum$unknown:12| |$cond-alpha-rename:181| (- |$cond-alpha-rename:170| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:189| Int) )
    (=>
      ( and (|cps_sum$unknown:10| |$cond-alpha-rename:185| (- |$alpha-1:n| 1)) (|cps_sum$unknown:10| |$cond-alpha-rename:189| (- |$alpha-1:n| 1)) (>= 0 |$alpha-1:n|) (<= |$alpha-1:n| 0) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (not (<= |$alpha-1:n| 0)) (= 0 (+ |$cond-alpha-rename:185| |$alpha-1:n|)) (= 0 (+ |$cond-alpha-rename:189| |$alpha-1:n|)) )
      (|cps_sum$unknown:12| 1 |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (<= |$alpha-1:n| 0) (<= |$alpha-1:n| 0) (>= 0 |$alpha-1:n|) (<= |$alpha-1:n| 0) )
      (|cps_sum$unknown:12| 1 |$alpha-1:n|)
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
(check-sat)

(get-model)

