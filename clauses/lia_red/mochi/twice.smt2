(set-info :origin "Verification conditions for the caml program
  let twice f x = f (f x)
  let f x = 2 * x
  
  let main n =
    if n > 0
    then assert (twice f n > n)
")

(set-logic HORN)

(declare-fun |twice$unknown:4|
  ( Int Int ) Bool
)

(assert
  (not (exists ( (|$knormal:7| Int) (|$cond-alpha-rename:176| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:173| Bool) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:161| Bool) (|$cond-alpha-rename:159| Bool) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:170| Int) (|$alpha-4:n| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:158| Bool) (|$cond-alpha-rename:160| Bool) (|$cond-alpha-rename:162| Bool) (|$cond-alpha-rename:168| Bool) (|$cond-alpha-rename:174| Bool) (|$knormal:9| Bool) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:169| Int) )
    ( and (= |$knormal:9| (> |$knormal:7| |$alpha-4:n|)) (= |$knormal:7| |$cond-alpha-rename:176|) (= |$knormal:4| (> |$alpha-4:n| 0)) (= |$cond-alpha-rename:176| (* 2 |$cond-alpha-rename:175|)) (= |$cond-alpha-rename:175| (* 2 |$alpha-4:n|)) (= |$cond-alpha-rename:174| (> |$cond-alpha-rename:169| 0)) (= |$cond-alpha-rename:173| (> |$cond-alpha-rename:172| 0)) (= |$cond-alpha-rename:168| (> |$cond-alpha-rename:163| 0)) (= |$cond-alpha-rename:167| (> |$cond-alpha-rename:166| 0)) (= |$cond-alpha-rename:162| (> |$cond-alpha-rename:171| 0)) (= |$cond-alpha-rename:161| (> |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:160| (> |$cond-alpha-rename:165| 0)) (= |$cond-alpha-rename:159| (> |$cond-alpha-rename:164| 0)) (= |$cond-alpha-rename:158| (> |$alpha-4:n| 0)) (not |$knormal:9|) |$knormal:4| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:158| (|twice$unknown:4| |$cond-alpha-rename:175| |$cond-alpha-rename:165|) (|twice$unknown:4| |$cond-alpha-rename:175| |$cond-alpha-rename:164|) (|twice$unknown:4| |$alpha-4:n| |$cond-alpha-rename:171|) (|twice$unknown:4| |$alpha-4:n| |$cond-alpha-rename:170|) )
    )
  )
)
(check-sat)

(get-model)

