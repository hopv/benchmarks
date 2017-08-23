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

(declare-fun |$innerFunc:2-k$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:10|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:1|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-k$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-f$unknown:3|
  ( Int ) Bool
)

(declare-fun |m$unknown:8|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-k$unknown:5|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and true )
      (|$innerFunc:2-k$unknown:5| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and true )
      (|m$unknown:8| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:r| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:3| |$alpha-7:r|) )
      (|m$unknown:8| |$alpha-7:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:15| Int) )
    (=>
      ( and (|m$unknown:9| |$V-reftype:15| |$alpha-3:n|) )
      (|$innerFunc:2-k$unknown:6| |$V-reftype:15| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$V-reftype:1| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:1| |$V-reftype:1|) (|m$unknown:8| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) )
      (|m$unknown:9| |$V-reftype:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$V-reftype:17| Int) (|$alpha-2:k| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:1| |$alpha-2:k|) (|m$unknown:10| |$V-reftype:17| |$alpha-2:k| |$alpha-1:x|) (|m$unknown:8| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) )
      (|$innerFunc:1-f$unknown:2| |$V-reftype:17| |$alpha-2:k|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:k| Int) (|$V-reftype:3| Int) (|$alpha-7:r| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:2| |$V-reftype:3| |$alpha-6:k|) (|$innerFunc:1-f$unknown:3| |$alpha-7:r|) (|m$unknown:9| |$alpha-6:k| |$alpha-7:r|) )
      (|m$unknown:10| |$V-reftype:3| |$alpha-6:k| |$alpha-7:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:r| Int) (|$knormal:19| Int) (|$V-reftype:33| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:3| |$alpha-7:r|) (|m$unknown:11| |$knormal:19| |$alpha-7:r|) (= |$V-reftype:33| |$knormal:19|) )
      (|$innerFunc:1-f$unknown:4| |$V-reftype:33| |$alpha-7:r|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-7:r| Int) )
    (=>
      ( and (|$innerFunc:1-f$unknown:3| |$alpha-7:r|) (|m$unknown:9| |$V-reftype:15| |$alpha-7:r|) )
      (|$innerFunc:1-f$unknown:1| |$V-reftype:15|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-1:x| Int) (|$V-reftype:7| Int) (|$knormal:2| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|$innerFunc:1-f$unknown:4| |$V-reftype:7| |$knormal:2|) (|m$unknown:8| |$alpha-1:x|) (|m$unknown:9| |$knormal:2| |$knormal:3|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:3| (+ |$alpha-1:x| 11)) )
      (|m$unknown:10| |$V-reftype:7| |$knormal:2| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:15| Bool) (|$V-reftype:31| Int) )
    (=>
      ( and (|$innerFunc:2-k$unknown:5| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-5:r| |$alpha-4:n|) |$knormal:15| |$knormal:16| (= |$V-reftype:31| 1) (= |$knormal:15| (<= |$alpha-4:n| 101)) (= |$knormal:16| (= |$alpha-5:r| 91)) )
      (|$innerFunc:2-k$unknown:7| |$V-reftype:31| |$alpha-5:r| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:16| Bool) (|$alpha-4:n| Int) (|$alpha-5:r| Int) (|$knormal:15| Bool) )
    ( and (|$innerFunc:2-k$unknown:5| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-5:r| |$alpha-4:n|) |$knormal:15| (not |$knormal:16|) (= |$knormal:15| (<= |$alpha-4:n| 101)) (= |$knormal:16| (= |$alpha-5:r| 91)) )
    )
  )
)
(assert
  (forall ( (|$knormal:15| Bool) (|$alpha-5:r| Int) (|$alpha-4:n| Int) (|$V-reftype:32| Int) )
    (=>
      ( and (|$innerFunc:2-k$unknown:5| |$alpha-4:n|) (|$innerFunc:2-k$unknown:6| |$alpha-5:r| |$alpha-4:n|) (not |$knormal:15|) (= |$V-reftype:32| 1) (= |$knormal:15| (<= |$alpha-4:n| 101)) )
      (|$innerFunc:2-k$unknown:7| |$V-reftype:32| |$alpha-5:r| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$V-reftype:12| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (|$innerFunc:2-k$unknown:7| |$V-reftype:12| |$knormal:10| |$alpha-3:n|) (|m$unknown:9| |$knormal:10| |$alpha-3:n|) )
      (|m$unknown:10| |$V-reftype:12| |$knormal:10| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$V-reftype:25| Int) )
    (=>
      ( and (|m$unknown:10| |$knormal:9| |$knormal:8| |$alpha-1:x|) (|m$unknown:8| |$alpha-1:x|) |$knormal:1| (= |$V-reftype:25| |$knormal:9|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:8| (- |$alpha-1:x| 10)) )
      (|m$unknown:11| |$V-reftype:25| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:7| Int) (|$alpha-1:x| Int) (|$V-reftype:27| Int) )
    (=>
      ( and (|m$unknown:11| |$knormal:7| |$knormal:3|) (|m$unknown:8| |$alpha-1:x|) (not |$knormal:1|) (= |$V-reftype:27| |$knormal:7|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:3| (+ |$alpha-1:x| 11)) )
      (|m$unknown:11| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-1:x| Int) (|$V-reftype:15| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|m$unknown:8| |$alpha-1:x|) (|m$unknown:9| |$V-reftype:15| |$knormal:3|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:3| (+ |$alpha-1:x| 11)) )
      (|$innerFunc:1-f$unknown:3| |$V-reftype:15|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:8| Int) )
    (=>
      ( and (|m$unknown:8| |$alpha-1:x|) |$knormal:1| (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:8| (- |$alpha-1:x| 10)) )
      (|m$unknown:9| |$knormal:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|m$unknown:8| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:3| (+ |$alpha-1:x| 11)) )
      (|m$unknown:8| |$knormal:3|)
    )
  )
)
(check-sat)

