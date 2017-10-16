(set-info :origin "Verification conditions for the caml program
  let g (x:int) = 2 * x
  
  let twice (x:int) f = f (f x)
  
  let neg x = (0 - x)
  
  let main n =
  	let z = twice (g n) neg in
    if (n > 0) then assert (z>=0)
  	else assert (z <= 0)
")

(set-logic HORN)

(declare-fun |twice$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |neg$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:2|
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
  (forall ( (|$alpha-5:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (|g$unknown:2| |$knormal:7| |$alpha-5:n|) )
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
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$V-reftype:17| (* 2 |$alpha-1:x|)) true )
      (|g$unknown:2| |$V-reftype:17| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-5:n| Int) (|$knormal:7| Int) (|neg| Int) )
    (=>
      ( and true (|neg$unknown:4| |$V-reftype:9| |neg|) (|g$unknown:2| |$knormal:7| |$alpha-5:n|) )
      (|twice$unknown:7| |$V-reftype:9| |neg| |$knormal:7|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:7| Int) )
    (=>
      ( and true (|g$unknown:2| |$knormal:7| |$alpha-5:n|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:11| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    ( and (= (not (= 0 |$knormal:6|)) (>= |$knormal:11| 0)) (= (not (= 0 |$knormal:4|)) (> |$alpha-5:n| 0)) (not (not (= 0 |$knormal:6|))) (not (= 0 |$knormal:4|)) (|twice$unknown:8| |$knormal:11| |$knormal:7|) (|g$unknown:2| |$knormal:7| |$alpha-5:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-5:n| Int) (|$knormal:11| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    ( and (= (not (= 0 |$knormal:5|)) (<= |$knormal:11| 0)) (= (not (= 0 |$knormal:4|)) (> |$alpha-5:n| 0)) (not (not (= 0 |$knormal:5|))) (not (not (= 0 |$knormal:4|))) (|twice$unknown:8| |$knormal:11| |$knormal:7|) (|g$unknown:2| |$knormal:7| |$alpha-5:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-4:x| Int) )
    (=>
      ( and (= |$V-reftype:19| (- 0 |$alpha-4:x|)) true )
      (|neg$unknown:4| |$V-reftype:19| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|twice$unknown:7| |$knormal:1| |$alpha-2:x| |$alpha-2:x|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$V-reftype:18| |$knormal:3|) (|twice$unknown:7| |$knormal:3| |$knormal:1| |$alpha-2:x|) (|twice$unknown:7| |$knormal:1| |$alpha-2:x| |$alpha-2:x|) true )
      (|twice$unknown:8| |$V-reftype:18| |$alpha-2:x|)
    )
  )
)
(check-sat)

(get-model)

(exit)

