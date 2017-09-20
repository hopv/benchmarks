(set-info :origin "Verification conditions for the caml program
  let rec loop x i =
    if i < 0 then
      x
    else if x < 1 then
      loop (x - 1) (i - 1)
    else if x > 2 then
      loop x (i - 1)
    else
      loop (3 - x) (i - 1)
  let main n =
    assert (loop 3 n >= 3);
    assert (loop 1 n >= 0)
")

(set-logic HORN)

(declare-fun |loop$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:12| Int) )
    (=>
      ( and (|loop$unknown:3| |$knormal:12| (- |$alpha-2:i| 1) |$alpha-1:x|) (> |$alpha-1:x| 2) (not (< |$alpha-2:i| 0)) (not (< |$alpha-1:x| 1)) )
      (|loop$unknown:3| |$knormal:12| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:17| Int) )
    (=>
      ( and (|loop$unknown:3| |$knormal:17| (- |$alpha-2:i| 1) (- |$alpha-1:x| 1)) (< |$alpha-1:x| 1) (not (< |$alpha-2:i| 0)) )
      (|loop$unknown:3| |$knormal:17| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:8| Int) )
    (=>
      ( and (|loop$unknown:3| |$knormal:8| (- |$alpha-2:i| 1) (- 3 |$alpha-1:x|)) (not (< |$alpha-2:i| 0)) (not (< |$alpha-1:x| 1)) (not (> |$alpha-1:x| 2)) )
      (|loop$unknown:3| |$knormal:8| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) )
    (=>
      ( and (< |$alpha-2:i| 0) )
      (|loop$unknown:3| |$alpha-1:x| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:21| Int) (|$knormal:27| Int) )
    ( and (|loop$unknown:3| |$knormal:21| |$alpha-3:n| 1) (|loop$unknown:3| |$knormal:27| |$alpha-3:n| 3) (>= |$knormal:27| 3) (not (>= |$knormal:21| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:27| Int) )
    ( and (|loop$unknown:3| |$knormal:27| |$alpha-3:n| 3) (not (>= |$knormal:27| 3)) )
    )
  )
)
(check-sat)

(get-model)

