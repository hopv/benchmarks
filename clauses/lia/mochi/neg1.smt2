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

(declare-fun |twice$unknown:8|
  ( Int ) Bool
)

(declare-fun |twice$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |neg$unknown:4|
  ( Int ) Bool
)

(declare-fun |neg$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |neg$unknown:6|
  ( Int ) Bool
)

(declare-fun |neg$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:12|
  ( Int ) Bool
)

(declare-fun |g$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:1|
  ( Int ) Bool
)

(declare-fun |twice$unknown:10|
  ( Int ) Bool
)

(declare-fun |twice$unknown:14|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-5:y| Int) )
    (=>
      ( and (|twice$unknown:14| |$alpha-5:y|) )
      (|twice$unknown:10| |$alpha-5:y|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-2:y| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$V-reftype:31| |$alpha-1:x|) (|g$unknown:2| |$alpha-2:y| |$alpha-1:x|) (|g$unknown:1| |$alpha-1:x|) )
      (|g$unknown:3| |$V-reftype:31| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:11| Int) (|$V-reftype:5| Int) (|$alpha-8:n| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|twice$unknown:12| |$knormal:11|) (|g$unknown:3| |$V-reftype:5| |$knormal:11| |$alpha-8:n|) )
      (|twice$unknown:13| |$V-reftype:5| |$knormal:11|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$alpha-7:y| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$V-reftype:34| (- |$knormal:7|)) (|neg$unknown:6| |$alpha-7:y|) (|neg$unknown:5| |$knormal:7| |$knormal:6|) )
      (|neg$unknown:7| |$V-reftype:34| |$alpha-7:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:y| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (|neg$unknown:6| |$alpha-7:y|) )
      (|neg$unknown:4| |$knormal:6|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) (|$V-reftype:22| Int) (|$alpha-5:y| Int) )
    (=>
      ( and (|twice$unknown:8| |$knormal:1|) (|twice$unknown:14| |$alpha-5:y|) (|twice$unknown:11| |$V-reftype:22| |$knormal:1|) )
      (|twice$unknown:9| |$V-reftype:22| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$alpha-5:y| Int) (|$V-reftype:32| Int) )
    (=>
      ( and (= |$V-reftype:32| |$knormal:5|) (|twice$unknown:14| |$alpha-5:y|) (|twice$unknown:11| |$knormal:5| |$alpha-5:y|) )
      (|twice$unknown:15| |$V-reftype:32| |$alpha-5:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$knormal:16| Int) (|$V-reftype:24| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|twice$unknown:12| |$V-reftype:24|) )
      (|g$unknown:2| |$V-reftype:24| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$V-reftype:26| Int) (|$alpha-5:y| Int) )
    (=>
      ( and (|twice$unknown:8| |$alpha-4:x|) (|twice$unknown:14| |$alpha-5:y|) (|twice$unknown:13| |$V-reftype:26| |$alpha-4:x|) )
      (|twice$unknown:9| |$V-reftype:26| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:y| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (|twice$unknown:8| |$V-reftype:16|) (|twice$unknown:14| |$alpha-5:y|) )
      (|twice$unknown:10| |$V-reftype:16|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:y| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (|twice$unknown:8| |$V-reftype:16|) (|twice$unknown:14| |$alpha-5:y|) )
      (|twice$unknown:12| |$V-reftype:16|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-8:n| Int) (|$knormal:9| Bool) (|$knormal:18| Int) (|$knormal:16| Int) (|$knormal:10| Bool) )
    ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) (= |$knormal:10| (>= |$knormal:18| 0)) (not |$knormal:10|) |$knormal:9| (|twice$unknown:15| |$knormal:18| |$knormal:16|) )
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$knormal:16| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| )
      (|g$unknown:1| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$knormal:16| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| )
      (|twice$unknown:14| |$knormal:16|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:9| Int) (|$V-reftype:18| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Bool) (|$V-reftype:17| Int) (|$V-reftype:15| Int) (|$V-reftype:20| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|twice$unknown:10| |$V-reftype:20|) )
      (|neg$unknown:6| |$V-reftype:20|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:9| Int) (|$V-reftype:18| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Bool) (|$V-reftype:17| Int) (|$V-reftype:15| Int) (|$V-reftype:20| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|twice$unknown:10| |$V-reftype:14|) (|neg$unknown:7| |$V-reftype:15| |$V-reftype:14|) )
      (|twice$unknown:11| |$V-reftype:15| |$V-reftype:14|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:9| Int) (|$V-reftype:18| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Bool) (|$V-reftype:17| Int) (|$V-reftype:15| Int) (|$V-reftype:20| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|neg$unknown:4| |$V-reftype:9|) )
      (|twice$unknown:8| |$V-reftype:9|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:9| Int) (|$V-reftype:18| Int) (|$alpha-8:n| Int) (|$knormal:16| Int) (|$knormal:9| Bool) (|$V-reftype:17| Int) (|$V-reftype:15| Int) (|$V-reftype:20| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:n| 0)) (= |$knormal:16| 1) |$knormal:9| (|neg$unknown:4| |$V-reftype:17|) (|twice$unknown:9| |$V-reftype:18| |$V-reftype:17|) )
      (|neg$unknown:5| |$V-reftype:18| |$V-reftype:17|)
    )
  )
)
(check-sat)
