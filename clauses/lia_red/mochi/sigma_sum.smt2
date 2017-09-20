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
  (forall ( (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$alpha-3:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|) (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (not (<= |$alpha-3:n| 0)) )
      (|sigma$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|sum| Int) )
    (=>
      ( and (|sum$unknown:6| |$V-reftype:13| |sum|) )
      (|sigma$unknown:2| |$V-reftype:13| |sum|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:11| Int) (|$knormal:6| Int) )
    (=>
      ( and (|sigma$unknown:2| |$knormal:6| |$alpha-3:n|) (|sigma$unknown:4| |$knormal:11| (- |$alpha-3:n| 1)) (not (<= |$alpha-3:n| 0)) )
      (|sigma$unknown:4| (+ |$knormal:6| |$knormal:11|) |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and (<= |$alpha-3:n| 0) )
      (|sigma$unknown:4| 0 |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:15| Int) )
    ( and (|sigma$unknown:4| |$knormal:15| |$alpha-4:n|) (not (>= |$knormal:15| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (|sum$unknown:6| |$knormal:3| (- |$alpha-1:n| 1)) (not (<= |$alpha-1:n| 0)) )
      (|sum$unknown:6| (+ |$alpha-1:n| |$knormal:3|) |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (<= |$alpha-1:n| 0) )
      (|sum$unknown:6| 0 |$alpha-1:n|)
    )
  )
)
(check-sat)

(get-model)

