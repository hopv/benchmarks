(set-info :origin "Verification conditions for the caml program
  let g (x:int) (y:unit) = x
  let twice f (x:unit->int) (y:unit) = f (f x) y
  let neg x (y:unit) = - x ()
  let main n =
    if n>=0 then
      let z = twice neg (g n) () in
      assert (z>=0)
")

(set-logic HORN)

(declare-fun |twice$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |neg$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |neg$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:3|
  ( Int Int Int ) Bool
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
  (forall ( (|$V-reftype:31| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (= |$V-reftype:31| |$alpha-1:x|) true true )
      (|g$unknown:3| |$V-reftype:31| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) true (|g$unknown:3| |$V-reftype:5| |$knormal:11| |$alpha-8:n|) )
      (|twice$unknown:13| |$V-reftype:5| |$knormal:11|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-7:y| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$V-reftype:34| (- |$knormal:7|)) true (|neg$unknown:5| |$knormal:7| |$knormal:6|) )
      (|neg$unknown:7| |$V-reftype:34| |$alpha-7:y|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$knormal:1| Int) )
    (=>
      ( and true true (|twice$unknown:11| |$V-reftype:22| |$knormal:1|) )
      (|twice$unknown:9| |$V-reftype:22| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-5:y| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$V-reftype:32| |$knormal:5|) true (|twice$unknown:11| |$knormal:5| |$alpha-5:y|) )
      (|twice$unknown:15| |$V-reftype:32| |$alpha-5:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-4:x| Int) )
    (=>
      ( and true true (|twice$unknown:13| |$V-reftype:26| |$alpha-4:x|) )
      (|twice$unknown:9| |$V-reftype:26| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (= (not (= 0 |$knormal:10|)) (>= |$knormal:18| 0)) (not (not (= 0 |$knormal:10|))) (not (= 0 |$knormal:9|)) (|twice$unknown:15| |$knormal:18| |$knormal:16|) )
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$V-reftype:18| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (|twice$unknown:9| |$V-reftype:18| |$V-reftype:17|) true (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      (|neg$unknown:5| |$V-reftype:18| |$V-reftype:17|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and true (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:15| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (|neg$unknown:7| |$V-reftype:15| |$V-reftype:14|) true (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      (|twice$unknown:11| |$V-reftype:15| |$V-reftype:14|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and true (= (not (= 0 |$knormal:9|)) (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (not (= 0 |$knormal:9|)) )
      true
    )
  )
)
(check-sat)

(exit)

