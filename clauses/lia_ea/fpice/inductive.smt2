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
  (forall ( (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:24| 3) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:24| 3) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:12| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:10| (- |$alpha-2:i| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (= |$V-reftype:17| |$knormal:12|) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) (|loop$unknown:3| |$knormal:12| |$knormal:10| |$alpha-1:x|) true true )
      (|loop$unknown:3| |$V-reftype:17| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:15| (- |$alpha-2:i| 1)) (= |$knormal:13| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (= |$V-reftype:14| |$knormal:17|) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) (|loop$unknown:3| |$knormal:17| |$knormal:15| |$knormal:13|) true true )
      (|loop$unknown:3| |$V-reftype:14| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:i| 1)) (= |$knormal:4| (- 3 |$alpha-1:x|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (= |$V-reftype:20| |$knormal:8|) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|loop$unknown:3| |$knormal:8| |$knormal:6| |$knormal:4|) true true )
      (|loop$unknown:3| |$V-reftype:20| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (= |$V-reftype:10| |$alpha-1:x|) (not (= 0 |$knormal:1|)) true true )
      (|loop$unknown:3| |$V-reftype:10| |$alpha-2:i| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:15| (- |$alpha-2:i| 1)) (= |$knormal:13| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:15| (- |$alpha-2:i| 1)) (= |$knormal:13| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:10| (- |$alpha-2:i| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= |$knormal:10| (- |$alpha-2:i| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:3|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:i| 1)) (= |$knormal:4| (- 3 |$alpha-1:x|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-2:i| 1)) (= |$knormal:4| (- 3 |$alpha-1:x|)) (= (not (= 0 |$knormal:3|)) (> |$alpha-1:x| 2)) (= (not (= 0 |$knormal:2|)) (< |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (< |$alpha-2:i| 0)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$alpha-4:$$tmp::1| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    ( and (= (not (= 0 |$knormal:29|)) (>= |$knormal:27| 3)) (= |$knormal:24| 3) (= (not (= 0 |$knormal:23|)) (>= |$knormal:21| 0)) (= |$knormal:18| 1) (= |$alpha-4:$$tmp::1| 1) (not (not (= 0 |$knormal:23|))) (not (= 0 |$knormal:29|)) (|loop$unknown:3| |$knormal:27| |$alpha-3:n| |$knormal:24|) (|loop$unknown:3| |$knormal:21| |$alpha-3:n| |$knormal:18|) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:$$tmp::1| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:29|)) (>= |$knormal:27| 3)) (= |$knormal:24| 3) (= |$knormal:18| 1) (= |$alpha-4:$$tmp::1| 1) (not (= 0 |$knormal:29|)) (|loop$unknown:3| |$knormal:27| |$alpha-3:n| |$knormal:24|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:$$tmp::1| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:29|)) (>= |$knormal:27| 3)) (= |$knormal:24| 3) (= |$knormal:18| 1) (= |$alpha-4:$$tmp::1| 1) (not (= 0 |$knormal:29|)) (|loop$unknown:3| |$knormal:27| |$alpha-3:n| |$knormal:24|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:24| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    ( and (= (not (= 0 |$knormal:29|)) (>= |$knormal:27| 3)) (= |$knormal:24| 3) (not (not (= 0 |$knormal:29|))) (|loop$unknown:3| |$knormal:27| |$alpha-3:n| |$knormal:24|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

