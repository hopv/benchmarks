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

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:5|))) true (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$alpha-3:n| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:5|))) true (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|) true )
      (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|sum| Int) )
    (=>
      ( and (|sum$unknown:6| |$V-reftype:13| |sum|) true )
      (|sigma$unknown:2| |$V-reftype:13| |sum|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-3:n| Int) (|$knormal:11| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (= |$V-reftype:21| (+ |$knormal:6| |$knormal:11|)) (not (not (= 0 |$knormal:5|))) (|sigma$unknown:4| |$knormal:11| |$knormal:9|) true (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) )
      (|sigma$unknown:4| |$V-reftype:21| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:5|))) true (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:n| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (= |$V-reftype:19| 0) (not (= 0 |$knormal:5|)) true )
      (|sigma$unknown:4| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (<= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:5|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:15| Int) (|$knormal:17| Int) )
    ( and (= (not (= 0 |$knormal:17|)) (>= |$knormal:15| |$alpha-4:n|)) (not (not (= 0 |$knormal:17|))) (|sigma$unknown:4| |$knormal:15| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:17| (+ |$alpha-1:n| |$knormal:3|)) (not (not (= 0 |$knormal:1|))) (|sum$unknown:6| |$knormal:3| |$knormal:2|) true )
      (|sum$unknown:6| |$V-reftype:17| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:15| 0) (not (= 0 |$knormal:1|)) true )
      (|sum$unknown:6| |$V-reftype:15| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

