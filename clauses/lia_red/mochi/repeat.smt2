(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as repeat
  *)
  
  let succ x = x + 1
  let rec repeat f n s =
    if n = 0 then
      s
    else
      f (repeat f (n-1) s)
  let main n = assert (repeat succ n 0 = n)
")

(set-logic HORN)

(declare-fun |repeat$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |repeat$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |repeat$unknown:1|
  ( Int ) Bool
)

(declare-fun |repeat$unknown:4|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$knormal:13| 0) )
      (|repeat$unknown:4| |$knormal:13| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-3:n| Int) (|$V-reftype:4| Int) (|$alpha-4:s| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true (|repeat$unknown:1| |$V-reftype:4|) )
      (|repeat$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-4:s| Int) (|$V-reftype:6| Int) (|$alpha-2:f| Int) (|$alpha-3:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|) (|repeat$unknown:1| |$alpha-2:f|) )
      (|repeat$unknown:2| |$V-reftype:6| |$alpha-2:f|)
    )
  )
)
(assert
  (forall ( (|succ| Int) (|$V-reftype:15| Int) )
    (=>
      ( and (= |$V-reftype:15| (+ |succ| 1)) (|repeat$unknown:1| |succ|) )
      (|repeat$unknown:2| |$V-reftype:15| |succ|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$knormal:3| Int) (|$alpha-4:s| Int) (|$knormal:9| Int) (|$knormal:7| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:20| |$knormal:9|) (not |$knormal:1|) (|repeat$unknown:5| |$knormal:7| |$alpha-4:s| |$knormal:3|) (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true (|repeat$unknown:2| |$knormal:9| |$knormal:7|) )
      (|repeat$unknown:5| |$V-reftype:20| |$alpha-4:s| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:7| Int) (|$alpha-4:s| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) (|repeat$unknown:5| |$knormal:7| |$alpha-4:s| |$knormal:3|) (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true )
      (|repeat$unknown:1| |$knormal:7|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-3:n| Int) (|$alpha-4:s| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-3:n| 0)) (= |$V-reftype:18| |$alpha-4:s|) |$knormal:1| (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true )
      (|repeat$unknown:5| |$V-reftype:18| |$alpha-4:s| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-4:s| Int) (|$alpha-3:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-3:n| 1)) (= |$knormal:1| (= |$alpha-3:n| 0)) (not |$knormal:1|) (|repeat$unknown:4| |$alpha-4:s| |$alpha-3:n|) true )
      (|repeat$unknown:4| |$alpha-4:s| |$knormal:3|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:17| Bool) (|$knormal:13| Int) (|$knormal:15| Int) (|$alpha-5:n| Int) )
    ( and (= |$knormal:17| (= |$knormal:15| |$alpha-5:n|)) (= |$knormal:13| 0) (not |$knormal:17|) (|repeat$unknown:5| |$knormal:15| |$knormal:13| |$alpha-5:n|) )
    )
  )
)
(check-sat)

(get-model)

