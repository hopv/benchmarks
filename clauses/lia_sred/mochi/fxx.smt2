(set-info :origin "Verification conditions for the caml program
  let f x y = assert (not (x>0 && y<=0))
  let g x = f x x
")

(set-logic HORN)

(declare-fun |g$unknown:4|
  ( Int ) Bool
)

(assert
  (not (exists ( (|$knormal:3| Bool) (|$knormal:2| Bool) (|$knormal:1| Bool) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$cond-alpha-rename:4| Int) (|$knormal:4| Bool) )
    ( and (= |$knormal:4| (not |$knormal:3|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (<= |$alpha-2:y| 0)) (= |$knormal:1| (> |$alpha-1:x| 0)) (= |$alpha-2:y| |$cond-alpha-rename:4|) (= |$alpha-1:x| |$cond-alpha-rename:4|) (not |$knormal:4|) (|g$unknown:4| |$cond-alpha-rename:4|) )
    )
  )
)
(check-sat)

(get-model)

