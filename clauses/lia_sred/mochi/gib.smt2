(set-info :origin "Verification conditions for the caml program
  (*
  let rec gib a b n =
    if n=0 then a
    else if n=1 then b
    else gib a b (n-1) + gib a b (n-2)
  
  let main n =
    assert (gib 0 1 n >= 0)
  *)
  
  let rec gib a b n =
    if n=0 then a
    else if n=1 then b
    else gib a b (n-1) + gib a b (n-2)
  
  let main n a b =
  if a >= 0 && b >= 0 then
    assert (gib 0 1 n >= 0)
")

(set-logic HORN)

(declare-fun |gib$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |gib$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:21| Int) (|$knormal:1| Bool) (|$knormal:8| Int) (|$knormal:15| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$alpha-1:a| Int) (|$knormal:13| Int) (|$knormal:6| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= |$knormal:2| (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:21| (+ |$knormal:8| |$knormal:15|)) (not |$knormal:2|) (not |$knormal:1|) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) (|gib$unknown:4| |$knormal:15| |$knormal:13| |$alpha-2:b| |$alpha-1:a|) (|gib$unknown:3| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|) true true )
      (|gib$unknown:4| |$V-reftype:21| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$knormal:1| Bool) (|$knormal:8| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$alpha-1:a| Int) (|$knormal:6| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= |$knormal:2| (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:2|) (not |$knormal:1|) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) (|gib$unknown:3| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|) true true )
      (|gib$unknown:3| |$knormal:13| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$alpha-1:a| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:16| |$alpha-1:a|) |$knormal:1| (|gib$unknown:3| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|) true true )
      (|gib$unknown:4| |$V-reftype:16| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:a| Int) (|$alpha-3:n| Int) (|$alpha-2:b| Int) (|$knormal:2| Bool) (|$V-reftype:18| Int) )
    (=>
      ( and (= |$knormal:2| (= |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:18| |$alpha-2:b|) (not |$knormal:1|) |$knormal:2| (|gib$unknown:3| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|) true true )
      (|gib$unknown:4| |$V-reftype:18| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) (|$knormal:1| Bool) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$alpha-1:a| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= |$knormal:2| (= |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:2|) (not |$knormal:1|) (|gib$unknown:3| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|) true true )
      (|gib$unknown:3| |$knormal:6| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Bool) (|$knormal:17| Bool) (|$knormal:19| Bool) (|$knormal:22| Int) (|$knormal:26| Int) (|$alpha-4:n| Int) (|$knormal:20| Int) (|$knormal:28| Bool) (|$alpha-5:a| Int) (|$alpha-6:b| Int) )
    ( and (= |$knormal:28| (>= |$knormal:26| 0)) (= |$knormal:22| 1) (= |$knormal:20| 0) (= |$knormal:19| (and |$knormal:17| |$knormal:18|)) (= |$knormal:18| (>= |$alpha-6:b| 0)) (= |$knormal:17| (>= |$alpha-5:a| 0)) (not |$knormal:28|) |$knormal:19| (|gib$unknown:4| |$knormal:26| |$alpha-4:n| |$knormal:22| |$knormal:20|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:20| Int) (|$alpha-6:b| Int) (|$alpha-5:a| Int) (|$knormal:19| Bool) (|$knormal:17| Bool) (|$knormal:18| Bool) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 0) (= |$knormal:19| (and |$knormal:17| |$knormal:18|)) (= |$knormal:18| (>= |$alpha-6:b| 0)) (= |$knormal:17| (>= |$alpha-5:a| 0)) |$knormal:19| )
      (|gib$unknown:3| |$alpha-4:n| |$knormal:22| |$knormal:20|)
    )
  )
)
(check-sat)

(get-model)
