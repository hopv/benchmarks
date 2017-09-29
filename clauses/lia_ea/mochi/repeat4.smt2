(set-info :origin "Verification conditions for the caml program
  let succ x = x + 1
  let rec repeat f n =
    if n = 0
    then 0
    else f (repeat f (n-1))
  
  let main n =
    assert (repeat succ n = n)
")

(set-logic HORN)

(declare-fun |repeat$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |succ$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |repeat$unknown:2|
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
  (forall ( (unused Int) )
    (=>
      ( and true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) true (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|) true )
      (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|succ| Int) )
    (=>
      ( and (|succ$unknown:6| |$V-reftype:13| |succ|) true )
      (|repeat$unknown:2| |$V-reftype:13| |succ|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) (|$knormal:5| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (= |$V-reftype:18| |$knormal:7|) (not (not (= 0 |$knormal:1|))) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) true (|repeat$unknown:2| |$knormal:7| |$knormal:5|) )
      (|repeat$unknown:4| |$V-reftype:18| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-3:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (= |$V-reftype:16| 0) (not (= 0 |$knormal:1|)) true )
      (|repeat$unknown:4| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-3:n| 0)) (not (not (= 0 |$knormal:1|))) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:10| Int) (|$knormal:12| Int) )
    ( and (= (not (= 0 |$knormal:12|)) (= |$knormal:10| |$alpha-4:n|)) (not (not (= 0 |$knormal:12|))) (|repeat$unknown:4| |$knormal:10| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$V-reftype:14| (+ |$alpha-1:x| 1)) true )
      (|succ$unknown:6| |$V-reftype:14| |$alpha-1:x|)
    )
  )
)
(check-sat)

(get-model)

(exit)

