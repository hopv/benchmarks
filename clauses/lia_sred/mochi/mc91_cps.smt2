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

(declare-fun |$innerFunc:2-k$unknown:8|
  ( Int Int Int ) Bool
)

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
  (forall ( (|$cond-alpha-rename:6| Bool) (|$alpha-6:x| Int) (|$V-reftype:5| Int) (|$alpha-7:k| Int) (|$alpha-8:r| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:5| Bool) (|$cond-alpha-rename:8| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:9| (+ |$alpha-6:x| 11)) (= |$cond-alpha-rename:8| (> |$alpha-6:x| 100)) (= |$cond-alpha-rename:7| (+ |$alpha-6:x| 11)) (= |$cond-alpha-rename:6| (> |$alpha-6:x| 100)) (= |$cond-alpha-rename:5| (> |$alpha-6:x| 100)) (not |$cond-alpha-rename:8|) (not |$cond-alpha-rename:6|) (not |$cond-alpha-rename:5|) (|m$unknown:11| |$V-reftype:5| |$alpha-7:k| |$alpha-6:x|) (|m$unknown:10| |$cond-alpha-rename:4| |$cond-alpha-rename:9|) (|m$unknown:10| |$alpha-8:r| |$cond-alpha-rename:7|) (|m$unknown:10| |$alpha-7:k| |$cond-alpha-rename:4|) (|m$unknown:10| |$alpha-7:k| |$alpha-8:r|) )
      (|m$unknown:11| |$V-reftype:5| |$alpha-7:k| |$alpha-8:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:1| Int) (|$V-reftype:3| Int) (|$cond-alpha-rename:12| Bool) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:13| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:12| (> |$alpha-1:x| 100)) (not |$knormal:1|) (not |$cond-alpha-rename:12|) (|m$unknown:10| |$cond-alpha-rename:1| |$cond-alpha-rename:13|) (|m$unknown:10| |$V-reftype:3| |$cond-alpha-rename:1|) )
      (|m$unknown:10| |$V-reftype:3| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$cond-alpha-rename:20| Bool) (|$cond-alpha-rename:22| Int) (|$knormal:4| Int) (|$cond-alpha-rename:21| Int) (|$knormal:5| Int) (|$knormal:1| Bool) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:21| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:20| (> |$alpha-1:x| 100)) (= |$V-reftype:9| |$cond-alpha-rename:22|) (not |$knormal:1|) (not |$cond-alpha-rename:20|) (|m$unknown:12| |$cond-alpha-rename:22| |$knormal:4|) (|m$unknown:10| |$knormal:4| |$knormal:5|) (|m$unknown:10| |$knormal:4| |$cond-alpha-rename:21|) )
      (|m$unknown:11| |$V-reftype:9| |$knormal:4| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:17| Bool) (|$V-reftype:33| Int) )
    (=>
      ( and (= |$knormal:18| (= |$alpha-5:r| 91)) (= |$knormal:17| (<= |$alpha-4:n| 101)) (= |$V-reftype:33| 1) |$knormal:18| |$knormal:17| (|m$unknown:10| |$alpha-5:r| |$alpha-4:n|) )
      (|$innerFunc:2-k$unknown:8| |$V-reftype:33| |$alpha-5:r| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:17| Bool) )
    ( and (= |$knormal:18| (= |$alpha-5:r| 91)) (= |$knormal:17| (<= |$alpha-4:n| 101)) (not |$knormal:18|) |$knormal:17| (|m$unknown:10| |$alpha-5:r| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$knormal:17| Bool) (|$alpha-5:r| Int) (|$alpha-4:n| Int) (|$V-reftype:34| Int) )
    (=>
      ( and (= |$knormal:17| (<= |$alpha-4:n| 101)) (= |$V-reftype:34| 1) (not |$knormal:17|) (|m$unknown:10| |$alpha-5:r| |$alpha-4:n|) )
      (|$innerFunc:2-k$unknown:8| |$V-reftype:34| |$alpha-5:r| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$V-reftype:14| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (|m$unknown:10| |$knormal:12| |$alpha-3:n|) (|$innerFunc:2-k$unknown:8| |$V-reftype:14| |$knormal:12| |$alpha-3:n|) )
      (|m$unknown:11| |$V-reftype:14| |$knormal:12| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$alpha-1:x| Int) (|$V-reftype:27| Int) )
    (=>
      ( and (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) |$knormal:1| true (|m$unknown:11| |$knormal:11| |$knormal:10| |$alpha-1:x|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$knormal:9| Int) (|$knormal:5| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:1|) true (|m$unknown:12| |$knormal:9| |$knormal:5|) )
      (|m$unknown:12| |$V-reftype:29| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) |$knormal:1| true )
      (|m$unknown:10| |$knormal:10| |$alpha-1:x|)
    )
  )
)
(check-sat)

(get-model)

