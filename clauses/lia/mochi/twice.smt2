(set-info :origin "Verification conditions for the caml program
  let twice f x = f (f x)
  let f x = 2 * x
  
  let main n =
    if n > 0
    then assert (twice f n > n)
")

(set-logic HORN)

(declare-fun |twice$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |twice$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:15| Int) (|$alpha-3:x| Int) )
    (=>
      ( and (= |$V-reftype:15| (* 2 |$alpha-3:x|)) true )
      (|f$unknown:2| |$V-reftype:15| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$knormal:4| Int) (|f| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) true (|f$unknown:2| |$V-reftype:3| |f|) )
      (|twice$unknown:4| |$V-reftype:3| |f|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$V-reftype:14| |$knormal:3|) true (|twice$unknown:4| |$knormal:3| |$knormal:1|) (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) )
      (|twice$unknown:6| |$V-reftype:14| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and true (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:4| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:7| |$alpha-4:n|)) (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (not (= 0 |$knormal:9|))) (not (= 0 |$knormal:4|)) (|twice$unknown:6| |$knormal:7| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

