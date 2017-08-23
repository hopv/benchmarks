(set-info :origin "Verification conditions for the caml program
  
  let rec sum n =
    if n <= 0
    then 0
    else n + sum (n-1)
  
  let rec sigma f n =
    if n <= 0
    then 0
    else f n + sigma f (n-1)
  
  let main n =
    assert (sigma sum n >= n)
")

(set-logic HORN)

(declare-fun |sigma$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |sum$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |sigma$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |sum$unknown:5|
  ( Int ) Bool
)

(declare-fun |sigma$unknown:1|
  ( Int ) Bool
)

(declare-fun |sigma$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and true )
      (|sigma$unknown:3| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:4| Int) )
    (=>
      ( and (|sigma$unknown:1| |$V-reftype:4|) )
      (|sum$unknown:5| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:6| Int) (|$V-reftype:4| Int) (|$alpha-3:n| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|sigma$unknown:1| |$V-reftype:4|) (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:3| |$alpha-3:n|) (not |$knormal:5|) (= |$knormal:5| (<= |$alpha-3:n| 0)) (= |$knormal:9| (- |$alpha-3:n| 1)) )
      (|sigma$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$alpha-3:n| Int) (|$alpha-2:f| Int) (|$V-reftype:6| Int) (|$knormal:6| Int) (|$knormal:9| Int) )
    (=>
      ( and (|sigma$unknown:1| |$alpha-2:f|) (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|) (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:3| |$alpha-3:n|) (not |$knormal:5|) (= |$knormal:5| (<= |$alpha-3:n| 0)) (= |$knormal:9| (- |$alpha-3:n| 1)) )
      (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|sum| Int) (|$V-reftype:13| Int) )
    (=>
      ( and (|sigma$unknown:1| |sum|) (|sum$unknown:6| |$V-reftype:13| |sum|) )
      (|sigma$unknown:2| |$V-reftype:13| |sum|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$knormal:9| Int) (|$knormal:6| Int) (|$alpha-3:n| Int) (|$knormal:11| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:3| |$alpha-3:n|) (|sigma$unknown:4| |$knormal:11| |$knormal:9|) (not |$knormal:5|) (= |$V-reftype:21| (+ |$knormal:6| |$knormal:11|)) (= |$knormal:5| (<= |$alpha-3:n| 0)) (= |$knormal:9| (- |$alpha-3:n| 1)) )
      (|sigma$unknown:4| |$V-reftype:21| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:6| Int) (|$alpha-3:n| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:3| |$alpha-3:n|) (not |$knormal:5|) (= |$knormal:5| (<= |$alpha-3:n| 0)) (= |$knormal:9| (- |$alpha-3:n| 1)) )
      (|sigma$unknown:3| |$knormal:9|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:n| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|sigma$unknown:3| |$alpha-3:n|) |$knormal:5| (= |$V-reftype:19| 0) (= |$knormal:5| (<= |$alpha-3:n| 0)) )
      (|sigma$unknown:4| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|sigma$unknown:3| |$alpha-3:n|) (not |$knormal:5|) (= |$knormal:5| (<= |$alpha-3:n| 0)) )
      (|sigma$unknown:1| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:15| Int) (|$knormal:17| Bool) )
    ( and (|sigma$unknown:4| |$knormal:15| |$alpha-4:n|) (not |$knormal:17|) (= |$knormal:17| (>= |$knormal:15| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|sum$unknown:5| |$alpha-1:n|) (|sum$unknown:6| |$knormal:3| |$knormal:2|) (not |$knormal:1|) (= |$V-reftype:17| (+ |$alpha-1:n| |$knormal:3|)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|sum$unknown:6| |$V-reftype:17| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|sum$unknown:5| |$alpha-1:n|) |$knormal:1| (= |$V-reftype:15| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) )
      (|sum$unknown:6| |$V-reftype:15| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|sum$unknown:5| |$alpha-1:n|) (not |$knormal:1|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|sum$unknown:5| |$knormal:2|)
    )
  )
)
(check-sat)

