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

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(declare-fun |twice$unknown:3|
  ( Int ) Bool
)

(declare-fun |twice$unknown:5|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:x| Int) )
    (=>
      ( and (|twice$unknown:5| |$alpha-2:x|) )
      (|twice$unknown:3| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-3:x| Int) )
    (=>
      ( and (= |$V-reftype:15| (* 2 |$alpha-3:x|)) (|f$unknown:1| |$alpha-3:x|) )
      (|f$unknown:2| |$V-reftype:15| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$knormal:4| Int) (|f| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) (|twice$unknown:3| |f|) (|f$unknown:2| |$V-reftype:3| |f|) )
      (|twice$unknown:4| |$V-reftype:3| |f|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-4:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) (|twice$unknown:3| |$V-reftype:7|) )
      (|f$unknown:1| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$V-reftype:14| |$knormal:3|) (|twice$unknown:5| |$alpha-2:x|) (|twice$unknown:4| |$knormal:3| |$knormal:1|) (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) )
      (|twice$unknown:6| |$V-reftype:14| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|twice$unknown:5| |$alpha-2:x|) (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) )
      (|twice$unknown:3| |$knormal:1|)
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
      (|twice$unknown:5| |$alpha-4:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

