(set-info :origin "Verification conditions for the caml program
  let f x y = assert (not (x>0 && y<=0))
  let main x = f x x
")

(set-logic HORN)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:2|
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
  (forall ( (|$alpha-3:x| Int) )
    (=>
      true
      (|f$unknown:2| |$alpha-3:x| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (not (not (= 0 |$knormal:3|)))) (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 0)) (= |$V-reftype:13| 1) (not (= 0 |$knormal:4|)) (|f$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|f$unknown:3| |$V-reftype:13| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    ( and (= (not (= 0 |$knormal:4|)) (not (not (= 0 |$knormal:3|)))) (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (<= |$alpha-2:y| 0)) (= (not (= 0 |$knormal:1|)) (> |$alpha-1:x| 0)) (not (not (= 0 |$knormal:4|))) (|f$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(check-sat)

(get-model)

(exit)

