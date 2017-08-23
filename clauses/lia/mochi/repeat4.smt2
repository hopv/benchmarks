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

(declare-fun |succ$unknown:5|
  ( Int ) Bool
)

(declare-fun |repeat$unknown:1|
  ( Int ) Bool
)

(declare-fun |repeat$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and true )
      (|repeat$unknown:3| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:4| Int) )
    (=>
      ( and (|repeat$unknown:1| |$V-reftype:4|) )
      (|succ$unknown:5| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-3:n| Int) (|$V-reftype:4| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|repeat$unknown:1| |$V-reftype:4|) (|repeat$unknown:3| |$alpha-3:n|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$knormal:3| (- |$alpha-3:n| 1)) )
      (|repeat$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:f| Int) (|$V-reftype:6| Int) (|$alpha-3:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (|repeat$unknown:1| |$alpha-2:f|) (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|) (|repeat$unknown:3| |$alpha-3:n|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$knormal:3| (- |$alpha-3:n| 1)) )
      (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|succ| Int) (|$V-reftype:13| Int) )
    (=>
      ( and (|repeat$unknown:1| |succ|) (|succ$unknown:6| |$V-reftype:13| |succ|) )
      (|repeat$unknown:2| |$V-reftype:13| |succ|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:5| Int) (|$knormal:7| Int) (|$alpha-3:n| Int) (|$knormal:3| Int) (|$V-reftype:18| Int) )
    (=>
      ( and (|repeat$unknown:2| |$knormal:7| |$knormal:5|) (|repeat$unknown:3| |$alpha-3:n|) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) (not |$knormal:1|) (= |$V-reftype:18| |$knormal:7|) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$knormal:3| (- |$alpha-3:n| 1)) )
      (|repeat$unknown:4| |$V-reftype:18| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-3:n| Int) (|$knormal:5| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|repeat$unknown:3| |$alpha-3:n|) (|repeat$unknown:4| |$knormal:5| |$knormal:3|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$knormal:3| (- |$alpha-3:n| 1)) )
      (|repeat$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|repeat$unknown:3| |$alpha-3:n|) |$knormal:1| (= |$V-reftype:16| 0) (= |$knormal:1| (= |$alpha-3:n| 0)) )
      (|repeat$unknown:4| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|repeat$unknown:3| |$alpha-3:n|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$knormal:3| (- |$alpha-3:n| 1)) )
      (|repeat$unknown:3| |$knormal:3|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:10| Int) (|$knormal:12| Bool) )
    ( and (|repeat$unknown:4| |$knormal:10| |$alpha-4:n|) (not |$knormal:12|) (= |$knormal:12| (= |$knormal:10| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (|succ$unknown:5| |$alpha-1:x|) (= |$V-reftype:14| (+ |$alpha-1:x| 1)) )
      (|succ$unknown:6| |$V-reftype:14| |$alpha-1:x|)
    )
  )
)
(check-sat)

