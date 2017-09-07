(set-info :origin "Verification conditions for the caml program
  let twice f x = f (f x)
  let f x = 2 * x
  
  let main n =
    if n > 0
    then assert (twice f n > n)
")

(set-logic HORN)

(declare-fun |twice$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:29| Bool) (|$alpha-2:x| Int) )
    (=>
      ( and (= |$cond-alpha-rename:29| (> |$alpha-2:x| 0)) |$cond-alpha-rename:29| )
      (|twice$unknown:3| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) (|$cond-alpha-rename:20| Bool) (|$alpha-2:x| Int) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:31| Bool) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:17| Int) )
    (=>
      ( and (= |$knormal:1| (* 2 |$alpha-2:x|)) (= |$cond-alpha-rename:31| (> |$alpha-2:x| 0)) (= |$cond-alpha-rename:20| (> |$cond-alpha-rename:17| 0)) (= |$cond-alpha-rename:19| (> |$cond-alpha-rename:18| 0)) |$cond-alpha-rename:31| |$cond-alpha-rename:20| |$cond-alpha-rename:19| (|twice$unknown:3| |$alpha-2:x|) )
      (|twice$unknown:3| |$knormal:1|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:7| Int) (|$cond-alpha-rename:43| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:36| Bool) (|$cond-alpha-rename:42| Int) (|$alpha-4:n| Int) (|$cond-alpha-rename:35| Bool) (|$cond-alpha-rename:39| Bool) (|$cond-alpha-rename:41| Bool) (|$knormal:9| Bool) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:37| Int) )
    ( and (= |$knormal:9| (> |$knormal:7| |$alpha-4:n|)) (= |$knormal:7| |$cond-alpha-rename:43|) (= |$knormal:4| (> |$alpha-4:n| 0)) (= |$cond-alpha-rename:43| (* 2 |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:42| (* 2 |$alpha-4:n|)) (= |$cond-alpha-rename:41| (> |$alpha-4:n| 0)) (= |$cond-alpha-rename:40| (> |$cond-alpha-rename:37| 0)) (= |$cond-alpha-rename:39| (> |$cond-alpha-rename:38| 0)) (= |$cond-alpha-rename:36| (> |$cond-alpha-rename:33| 0)) (= |$cond-alpha-rename:35| (> |$cond-alpha-rename:34| 0)) (not |$knormal:9|) |$knormal:4| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:36| |$cond-alpha-rename:35| (|twice$unknown:3| |$cond-alpha-rename:42|) (|twice$unknown:3| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

