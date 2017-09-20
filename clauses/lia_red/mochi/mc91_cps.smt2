(set-info :origin "Verification conditions for the caml program
  let rec m x k =
    if x > 100
    then k (x-10)
    else
      let f r = m r k in
      m (x+11) f
  
  let main n =
    let k r = if n <= 101 then assert (r = 91) in
    m n k
")

(set-logic HORN)

(declare-fun |m$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |m$unknown:10|
  ( Int Int ) Bool
)

(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$cond-alpha-rename:133| Int) )
    ( and (|m$unknown:10| |$alpha-5:r| |$cond-alpha-rename:133|) (|m$unknown:10| |$cond-alpha-rename:133| (+ |$alpha-4:n| 11)) (<= |$alpha-4:n| 101) (not (> |$alpha-4:n| 100)) (not (> |$alpha-4:n| 100)) (not (= |$alpha-5:r| 91)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:262| Int) (|$knormal:11| Int) )
    (=>
      ( and (|m$unknown:10| |$cond-alpha-rename:244| (+ |$alpha-1:x| 11)) (|m$unknown:10| |$cond-alpha-rename:248| (+ (+ |$cond-alpha-rename:241| 11) 11)) (|m$unknown:10| |$cond-alpha-rename:252| (+ |$cond-alpha-rename:262| 11)) (|m$unknown:10| |$cond-alpha-rename:256| (+ (+ |$cond-alpha-rename:241| 11) 11)) (|m$unknown:10| (+ |$cond-alpha-rename:241| 11) |$cond-alpha-rename:248|) (|m$unknown:10| |$cond-alpha-rename:262| |$cond-alpha-rename:256|) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:244|) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:252|) (|m$unknown:11| |$knormal:11| (- |$alpha-1:x| 10) |$cond-alpha-rename:241|) (> |$alpha-1:x| 100) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (> (+ |$cond-alpha-rename:241| 11) 100)) (not (> (+ |$cond-alpha-rename:241| 11) 100)) (not (> |$cond-alpha-rename:262| 100)) (not (> |$cond-alpha-rename:262| 100)) (not (> (+ |$cond-alpha-rename:241| 11) 100)) (not (> (+ |$cond-alpha-rename:241| 11) 100)) (not (> |$cond-alpha-rename:241| 100)) (not (> |$cond-alpha-rename:241| 100)) (not (> |$cond-alpha-rename:241| 100)) )
      (|m$unknown:12| |$knormal:11| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$cond-alpha-rename:264| Int) (|$knormal:11| Int) )
    (=>
      ( and (|m$unknown:11| |$knormal:11| (- |$alpha-1:x| 10) |$cond-alpha-rename:264|) (> |$alpha-1:x| 100) (> (+ |$cond-alpha-rename:264| 11) 100) (> (- (+ |$cond-alpha-rename:264| 11) 10) 100) (> (+ |$cond-alpha-rename:264| 11) 100) (> |$alpha-1:x| 100) (not (> |$cond-alpha-rename:264| 100)) (not (> |$cond-alpha-rename:264| 100)) (not (> |$cond-alpha-rename:264| 100)) (= (+ |$cond-alpha-rename:264| 11) (- (+ |$cond-alpha-rename:264| 11) 10)) (= (- |$alpha-1:x| 10) (- (- (+ |$cond-alpha-rename:264| 11) 10) 10)) )
      (|m$unknown:12| |$knormal:11| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:286| Int) )
    (=>
      ( and (|m$unknown:10| |$cond-alpha-rename:278| (+ (+ |$cond-alpha-rename:275| 11) 11)) (|m$unknown:10| |$cond-alpha-rename:282| (+ (+ |$cond-alpha-rename:275| 11) 11)) (|m$unknown:10| (- (+ |$cond-alpha-rename:275| 11) 10) |$cond-alpha-rename:278|) (|m$unknown:10| (- (+ |$cond-alpha-rename:275| 11) 10) |$cond-alpha-rename:282|) (|m$unknown:12| |$cond-alpha-rename:286| (- (+ |$cond-alpha-rename:275| 11) 10)) (> (+ |$cond-alpha-rename:275| 11) 100) (not (> (+ |$cond-alpha-rename:275| 11) 100)) (not (> (+ |$cond-alpha-rename:275| 11) 100)) (not (> (+ |$cond-alpha-rename:275| 11) 100)) (not (> (+ |$cond-alpha-rename:275| 11) 100)) (not (> |$cond-alpha-rename:275| 100)) (not (> |$cond-alpha-rename:275| 100)) )
      (|m$unknown:12| |$cond-alpha-rename:286| (+ |$cond-alpha-rename:275| 11))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:293| Int) )
    (=>
      ( and (|m$unknown:12| |$cond-alpha-rename:293| (- (+ |$cond-alpha-rename:288| 11) 10)) (> (+ |$cond-alpha-rename:288| 11) 100) (> (+ |$cond-alpha-rename:288| 11) 100) (> (+ |$cond-alpha-rename:288| 11) 100) (not (> |$cond-alpha-rename:288| 100)) (not (> |$cond-alpha-rename:288| 100)) (= (- (+ |$cond-alpha-rename:288| 11) 10) (- (+ |$cond-alpha-rename:288| 11) 10)) )
      (|m$unknown:12| |$cond-alpha-rename:293| (+ |$cond-alpha-rename:288| 11))
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:301| Int) )
    (=>
      ( and (|m$unknown:10| |$cond-alpha-rename:297| (+ |$alpha-1:x| 11)) (|m$unknown:10| |$cond-alpha-rename:301| (+ |$alpha-1:x| 11)) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:297|) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:301|) (<= |$alpha-1:x| 101) (= (- |$alpha-1:x| 10) 91) (> |$alpha-1:x| 100) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) )
      (|m$unknown:12| 1 |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (> |$alpha-1:x| 100) (> |$alpha-1:x| 100) (<= |$alpha-1:x| 101) (= (- |$alpha-1:x| 10) 91) (> |$alpha-1:x| 100) )
      (|m$unknown:12| 1 |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:315| Int) )
    (=>
      ( and (|m$unknown:10| |$cond-alpha-rename:311| (+ |$alpha-1:x| 11)) (|m$unknown:10| |$cond-alpha-rename:315| (+ |$alpha-1:x| 11)) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:311|) (|m$unknown:10| (- |$alpha-1:x| 10) |$cond-alpha-rename:315|) (> |$alpha-1:x| 100) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (> |$alpha-1:x| 100)) (not (<= |$alpha-1:x| 101)) )
      (|m$unknown:12| 1 |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (> |$alpha-1:x| 100) (> |$alpha-1:x| 100) (> |$alpha-1:x| 100) (not (<= |$alpha-1:x| 101)) )
      (|m$unknown:12| 1 |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:9| Int) )
    (=>
      ( and (|m$unknown:12| |$knormal:9| (+ |$alpha-1:x| 11)) (not (> |$alpha-1:x| 100)) )
      (|m$unknown:12| |$knormal:9| |$alpha-1:x|)
    )
  )
)
(check-sat)

(get-model)

