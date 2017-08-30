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

(declare-fun |$innerFunc:1-f$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |m$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:1|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-k$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:9|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-k$unknown:6|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      true
      (|$innerFunc:2-k$unknown:6| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      true
      (|m$unknown:9| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:17| Int) )
    (=>
      ( and (|m$unknown:10| |$V-reftype:17| |$alpha-3:n|) )
      (|$innerFunc:2-k$unknown:7| |$V-reftype:17| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:r| Int) (|$alpha-7:k| Int) (|$alpha-6:x| Int) (|$V-reftype:5| Int) )
    (=>
      ( and (|m$unknown:10| |$alpha-7:k| |$alpha-8:r|) (|$innerFunc:1-f$unknown:4| |$alpha-8:r| |$alpha-6:x|) (|$innerFunc:1-f$unknown:3| |$V-reftype:5| |$alpha-7:k| |$alpha-6:x|) (|$innerFunc:1-f$unknown:1| |$alpha-6:x|) )
      (|m$unknown:11| |$V-reftype:5| |$alpha-7:k| |$alpha-8:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:r| Int) (|$alpha-6:x| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:4| |$alpha-8:r| |$alpha-6:x|) (|$innerFunc:1-f$unknown:1| |$alpha-6:x|) )
      (|m$unknown:9| |$alpha-8:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-8:r| Int) (|$V-reftype:17| Int) )
    (=>
      ( and (|m$unknown:10| |$V-reftype:17| |$alpha-8:r|) (|$innerFunc:1-f$unknown:4| |$alpha-8:r| |$alpha-6:x|) (|$innerFunc:1-f$unknown:1| |$alpha-6:x|) )
      (|$innerFunc:1-f$unknown:2| |$V-reftype:17| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Int) (|$knormal:21| Int) (|$alpha-8:r| Int) (|$alpha-6:x| Int) )
    (=>
      ( and (= |$V-reftype:35| |$knormal:21|) (|m$unknown:12| |$knormal:21| |$alpha-8:r|) (|$innerFunc:1-f$unknown:4| |$alpha-8:r| |$alpha-6:x|) (|$innerFunc:1-f$unknown:1| |$alpha-6:x|) )
      (|$innerFunc:1-f$unknown:5| |$V-reftype:35| |$alpha-8:r| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$V-reftype:3| Int) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) (|$innerFunc:1-f$unknown:2| |$V-reftype:3| |$alpha-1:x|) )
      (|m$unknown:10| |$V-reftype:3| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:k| Int) (|$V-reftype:19| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) (|m$unknown:11| |$V-reftype:19| |$alpha-2:k| |$alpha-1:x|) (|$innerFunc:1-f$unknown:2| |$alpha-2:k| |$alpha-1:x|) )
      (|$innerFunc:1-f$unknown:3| |$V-reftype:19| |$alpha-2:k| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$V-reftype:9| Int) (|$alpha-1:x| Int) (|$knormal:5| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) (|m$unknown:10| |$knormal:4| |$knormal:5|) (|$innerFunc:1-f$unknown:5| |$V-reftype:9| |$knormal:4| |$alpha-1:x|) )
      (|m$unknown:11| |$V-reftype:9| |$knormal:4| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:17| Bool) (|$V-reftype:33| Int) )
    (=>
      ( and (= |$knormal:18| (= |$alpha-5:r| 91)) (= |$knormal:17| (<= |$alpha-4:n| 101)) (= |$V-reftype:33| 1) |$knormal:18| |$knormal:17| (|$innerFunc:2-k$unknown:7| |$alpha-5:r| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-4:n|) )
      (|$innerFunc:2-k$unknown:8| |$V-reftype:33| |$alpha-5:r| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:17| Bool) )
    ( and (= |$knormal:18| (= |$alpha-5:r| 91)) (= |$knormal:17| (<= |$alpha-4:n| 101)) (not |$knormal:18|) |$knormal:17| (|$innerFunc:2-k$unknown:7| |$alpha-5:r| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$knormal:17| Bool) (|$alpha-5:r| Int) (|$alpha-4:n| Int) (|$V-reftype:34| Int) )
    (=>
      ( and (= |$knormal:17| (<= |$alpha-4:n| 101)) (= |$V-reftype:34| 1) (not |$knormal:17|) (|$innerFunc:2-k$unknown:7| |$alpha-5:r| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-4:n|) )
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
  (forall ( (|$knormal:1| Bool) (|$knormal:5| Int) (|$V-reftype:17| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) (|m$unknown:10| |$V-reftype:17| |$knormal:5|) )
      (|$innerFunc:1-f$unknown:4| |$V-reftype:17| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$V-reftype:27| Int) )
    (=>
      ( and (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) |$knormal:1| (|m$unknown:9| |$alpha-1:x|) (|m$unknown:11| |$knormal:11| |$knormal:10| |$alpha-1:x|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:5| Int) (|$knormal:9| Int) (|$alpha-1:x| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) (|m$unknown:12| |$knormal:9| |$knormal:5|) )
      (|m$unknown:12| |$V-reftype:29| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) |$knormal:1| (|m$unknown:9| |$alpha-1:x|) )
      (|m$unknown:10| |$knormal:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) )
      (|$innerFunc:1-f$unknown:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|m$unknown:9| |$alpha-1:x|) )
      (|m$unknown:9| |$knormal:5|)
    )
  )
)
(check-sat)

(get-model)

