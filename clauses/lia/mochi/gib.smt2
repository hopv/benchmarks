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

(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (= |$V-reftype:21| (+ |$knormal:8| |$knormal:15|)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) (|gib$unknown:4| |$knormal:15| |$knormal:13| |$alpha-2:b| |$alpha-1:a|) true true true )
      (|gib$unknown:4| |$V-reftype:21| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:13| Int) (|$knormal:2| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= |$knormal:13| (- |$alpha-3:n| 2)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|gib$unknown:4| |$knormal:8| |$knormal:6| |$alpha-2:b| |$alpha-1:a|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (= |$V-reftype:16| |$alpha-1:a|) (not (= 0 |$knormal:1|)) true true true )
      (|gib$unknown:4| |$V-reftype:16| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-1:a| Int) (|$alpha-2:b| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (= |$V-reftype:18| |$alpha-2:b|) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true true )
      (|gib$unknown:4| |$V-reftype:18| |$alpha-3:n| |$alpha-2:b| |$alpha-1:a|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:a| Int) (|$alpha-6:b| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    ( and (= (not (= 0 |$knormal:28|)) (>= |$knormal:26| 0)) (= |$knormal:22| 1) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-6:b| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:a| 0)) (not (not (= 0 |$knormal:28|))) (not (= 0 |$knormal:19|)) (|gib$unknown:4| |$knormal:26| |$alpha-4:n| |$knormal:22| |$knormal:20|) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:a| Int) (|$alpha-6:b| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-6:b| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:a| 0)) (not (= 0 |$knormal:19|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:a| Int) (|$alpha-6:b| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-6:b| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:a| 0)) (not (= 0 |$knormal:19|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:a| Int) (|$alpha-6:b| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-6:b| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-5:a| 0)) (not (= 0 |$knormal:19|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

