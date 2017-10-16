(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as intro2
  *)
  let f x g : unit = g(x+1)
  let h y = assert (y>0)
  let main n = if n>=0 then f n h
")

(set-logic HORN)

(declare-fun |h$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |h$unknown:5|
  ( Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| (+ |$alpha-1:x| 1)) (= |$V-reftype:15| |$knormal:2|) (|f$unknown:3| |$knormal:2| |$knormal:1| |$alpha-1:x|) (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:4| |$V-reftype:15| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| (+ |$alpha-1:x| 1)) (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:2| |$knormal:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) (|f$unknown:2| |$V-reftype:3| |$alpha-4:n|) )
      (|h$unknown:5| |$V-reftype:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-4:n| Int) (|$knormal:4| Int) (|h| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) (|h$unknown:6| |$V-reftype:10| |h|) (|f$unknown:2| |h| |$alpha-4:n|) )
      (|f$unknown:3| |$V-reftype:10| |h| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-3:y| 0)) (= |$V-reftype:17| 1) (not (= 0 |$knormal:3|)) (|h$unknown:5| |$alpha-3:y|) )
      (|h$unknown:6| |$V-reftype:17| |$alpha-3:y|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:y| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-3:y| 0)) (not (not (= 0 |$knormal:3|))) (|h$unknown:5| |$alpha-3:y|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-4:n| 0)) (not (= 0 |$knormal:4|)) )
      (|f$unknown:1| |$alpha-4:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

