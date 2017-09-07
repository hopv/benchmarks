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

(declare-fun |repeat$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |repeat$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:3| Int) (|$V-reftype:4| Int) (|$knormal:1| Bool) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) true (|repeat$unknown:1| |$V-reftype:4|) )
      (|repeat$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Bool) (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) true (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|) (|repeat$unknown:1| |$alpha-2:f|) )
      (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|succ| Int) (|$V-reftype:13| Int) )
    (=>
      ( and (= |$V-reftype:13| (+ |succ| 1)) (|repeat$unknown:1| |succ|) )
      (|repeat$unknown:2| |$V-reftype:13| |succ|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:1| Bool) (|$knormal:7| Int) (|$knormal:5| Int) (|$knormal:3| Int) (|$V-reftype:18| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:18| |$knormal:7|) (not |$knormal:1|) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) true (|repeat$unknown:2| |$knormal:7| |$knormal:5|) )
      (|repeat$unknown:4| |$V-reftype:18| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:5| Int) (|$knormal:1| Bool) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) true )
      (|repeat$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:16| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:16| 0) |$knormal:1| true )
      (|repeat$unknown:4| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:10| Int) (|$knormal:12| Bool) )
    ( and (= |$knormal:12| (= |$knormal:10| |$alpha-4:n|)) (not |$knormal:12|) (|repeat$unknown:4| |$knormal:10| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

