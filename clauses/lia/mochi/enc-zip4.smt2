(set-info :origin "Verification conditions for the caml program
  let rec zip x y =
    if x = 0
    then if y = 0 then 0 else assert false
    else if y = 0 then assert false
    else 1 + zip (x-1) (y-1)
  
  let main n =
    let m = zip n n in
    assert (m >= n && m <= n)
")

(set-logic HORN)

(declare-fun |zip$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and true )
      (|zip$unknown:2| |$alpha-3:n| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:7| Int) )
    (=>
      ( and (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) (|zip$unknown:3| |$knormal:7| (- |$alpha-2:y| 1) (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) (not (= |$alpha-2:y| 0)) )
      (|zip$unknown:3| (+ 1 |$knormal:7|) |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-1:x| 0) (= |$alpha-2:y| 0) )
      (|zip$unknown:3| 0 |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    ( and (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-1:x| 0) (not (= |$alpha-2:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    ( and (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) (= |$alpha-2:y| 0) (not (= |$alpha-1:x| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) (not (= |$alpha-1:x| 0)) (not (= |$alpha-2:y| 0)) )
      (|zip$unknown:2| (- |$alpha-2:y| 1) (- |$alpha-1:x| 1))
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:15| Int) )
    ( and (|zip$unknown:3| |$knormal:15| |$alpha-3:n| |$alpha-3:n|) (not (and (>= |$knormal:15| |$alpha-3:n|) (<= |$knormal:15| |$alpha-3:n|))) )
    )
  )
)
(check-sat)

(get-model)

(exit)

