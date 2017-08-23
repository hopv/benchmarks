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
  (forall ( (|$alpha-3:x| Int) (|$V-reftype:15| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-3:x|) (= |$V-reftype:15| (* 2 |$alpha-3:x|)) )
      (|f$unknown:2| |$V-reftype:15| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:4| Bool) (|f| Int) (|$V-reftype:3| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |f|) (|twice$unknown:3| |f|) |$knormal:4| (= |$knormal:4| (> |$alpha-4:n| 0)) )
      (|twice$unknown:4| |$V-reftype:3| |f|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$knormal:4| Bool) (|$alpha-4:n| Int) )
    (=>
      ( and (|twice$unknown:3| |$V-reftype:7|) |$knormal:4| (= |$knormal:4| (> |$alpha-4:n| 0)) )
      (|f$unknown:1| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:1| Int) (|$alpha-2:x| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) (|twice$unknown:4| |$knormal:3| |$knormal:1|) (|twice$unknown:5| |$alpha-2:x|) (= |$V-reftype:14| |$knormal:3|) )
      (|twice$unknown:6| |$V-reftype:14| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|twice$unknown:4| |$knormal:1| |$alpha-2:x|) (|twice$unknown:5| |$alpha-2:x|) )
      (|twice$unknown:3| |$knormal:1|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:4| Bool) (|$knormal:7| Int) (|$alpha-4:n| Int) (|$knormal:9| Bool) )
    ( and (|twice$unknown:6| |$knormal:7| |$alpha-4:n|) |$knormal:4| (not |$knormal:9|) (= |$knormal:4| (> |$alpha-4:n| 0)) (= |$knormal:9| (> |$knormal:7| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$alpha-4:n| Int) )
    (=>
      ( and |$knormal:4| (= |$knormal:4| (> |$alpha-4:n| 0)) )
      (|twice$unknown:5| |$alpha-4:n|)
    )
  )
)
(check-sat)

