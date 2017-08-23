(set-info :origin "Verification conditions for the caml program
  let f x y = assert (not (x>0 && y<=0))
  let g x = f x x
")

(set-logic HORN)

(declare-fun |g$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(declare-fun |g$unknown:4|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-3:x| Int) )
    (=>
      ( and (|g$unknown:4| |$alpha-3:x|) )
      (|f$unknown:1| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) )
    (=>
      ( and (|g$unknown:4| |$alpha-3:x|) )
      (|f$unknown:2| |$alpha-3:x| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:4| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) (|$knormal:3| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:x|) (|f$unknown:2| |$alpha-2:y| |$alpha-1:x|) |$knormal:4| (= |$V-reftype:13| 1) (= |$knormal:1| (> |$alpha-1:x| 0)) (= |$knormal:2| (<= |$alpha-2:y| 0)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:4| (not |$knormal:3|)) )
      (|f$unknown:3| |$V-reftype:13| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$knormal:2| Bool) (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:4| Bool) )
    ( and (|f$unknown:1| |$alpha-1:x|) (|f$unknown:2| |$alpha-2:y| |$alpha-1:x|) (not |$knormal:4|) (= |$knormal:1| (> |$alpha-1:x| 0)) (= |$knormal:2| (<= |$alpha-2:y| 0)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:4| (not |$knormal:3|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) (|$knormal:7| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (|f$unknown:3| |$knormal:7| |$alpha-3:x| |$alpha-3:x|) (|g$unknown:4| |$alpha-3:x|) (= |$V-reftype:14| |$knormal:7|) )
      (|g$unknown:5| |$V-reftype:14| |$alpha-3:x|)
    )
  )
)
(check-sat)

