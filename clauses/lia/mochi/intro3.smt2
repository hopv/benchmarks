(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as intro3
  *)
  let f x g :unit= g(x+1)
  let h z y = assert (y>z)
  let main n = if n>=0 then f n (h n)
")

(set-logic HORN)

(declare-fun |h$unknown:5|
  ( Int ) Bool
)

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
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$V-reftype:17| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (|f$unknown:3| |$knormal:2| |$knormal:1| |$alpha-1:x|) (= |$V-reftype:17| |$knormal:2|) (= |$knormal:1| (+ |$alpha-1:x| 1)) )
      (|f$unknown:4| |$V-reftype:17| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (= |$knormal:1| (+ |$alpha-1:x| 1)) )
      (|f$unknown:2| |$knormal:1| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$V-reftype:3| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |$alpha-5:n|) |$knormal:4| (= |$knormal:4| (>= |$alpha-5:n| 0)) )
      (|h$unknown:6| |$V-reftype:3| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$knormal:5| Int) (|$alpha-5:n| Int) (|$knormal:4| Bool) )
    (=>
      ( and (|f$unknown:2| |$knormal:5| |$alpha-5:n|) (|h$unknown:7| |$V-reftype:12| |$knormal:5| |$alpha-5:n|) |$knormal:4| (= |$knormal:4| (>= |$alpha-5:n| 0)) )
      (|f$unknown:3| |$V-reftype:12| |$knormal:5| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:z| Int) (|$alpha-4:y| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|h$unknown:5| |$alpha-3:z|) (|h$unknown:6| |$alpha-4:y| |$alpha-3:z|) |$knormal:3| (= |$V-reftype:19| 1) (= |$knormal:3| (> |$alpha-4:y| |$alpha-3:z|)) )
      (|h$unknown:7| |$V-reftype:19| |$alpha-4:y| |$alpha-3:z|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:z| Int) (|$alpha-4:y| Int) (|$knormal:3| Bool) )
    ( and (|h$unknown:5| |$alpha-3:z|) (|h$unknown:6| |$alpha-4:y| |$alpha-3:z|) (not |$knormal:3|) (= |$knormal:3| (> |$alpha-4:y| |$alpha-3:z|)) )
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$alpha-5:n| Int) )
    (=>
      ( and |$knormal:4| (= |$knormal:4| (>= |$alpha-5:n| 0)) )
      (|f$unknown:1| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$alpha-5:n| Int) )
    (=>
      ( and |$knormal:4| (= |$knormal:4| (>= |$alpha-5:n| 0)) )
      (|h$unknown:5| |$alpha-5:n|)
    )
  )
)
(check-sat)

