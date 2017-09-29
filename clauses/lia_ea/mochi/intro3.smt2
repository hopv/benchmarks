(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as intro3
  *)
  let f x g :unit= g(x+1)
  let h z y = assert (y>z)
  let main n = if n>=0 then f n (h n)
")

(set-logic HORN)

(declare-fun |h$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |h$unknown:6|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| (+ |$alpha-1:x| 1)) (= |$V-reftype:17| |$knormal:2|) (|f$unknown:3| |$knormal:2| |$knormal:1| |$alpha-1:x|) (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:4| |$V-reftype:17| |$alpha-1:x|)
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
  (forall ( (|$V-reftype:3| Int) (|$alpha-5:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-5:n| 0)) (not (= 0 |$knormal:4|)) (|f$unknown:2| |$V-reftype:3| |$alpha-5:n|) )
      (|h$unknown:6| |$V-reftype:3| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-5:n| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-5:n| 0)) (not (= 0 |$knormal:4|)) (|h$unknown:7| |$V-reftype:12| |$knormal:5| |$alpha-5:n|) (|f$unknown:2| |$knormal:5| |$alpha-5:n|) )
      (|f$unknown:3| |$V-reftype:12| |$knormal:5| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:z| Int) (|$alpha-4:y| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-4:y| |$alpha-3:z|)) (= |$V-reftype:19| 1) (not (= 0 |$knormal:3|)) (|h$unknown:6| |$alpha-4:y| |$alpha-3:z|) true )
      (|h$unknown:7| |$V-reftype:19| |$alpha-4:y| |$alpha-3:z|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:z| Int) (|$alpha-4:y| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-4:y| |$alpha-3:z|)) (not (not (= 0 |$knormal:3|))) (|h$unknown:6| |$alpha-4:y| |$alpha-3:z|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-5:n| 0)) (not (= 0 |$knormal:4|)) )
      (|f$unknown:1| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (>= |$alpha-5:n| 0)) (not (= 0 |$knormal:4|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

