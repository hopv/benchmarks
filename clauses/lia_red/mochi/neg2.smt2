(set-info :origin "Verification conditions for the caml program
  let g (x:int) = 2 * x
  
  let twice (x:int) f = f (f x)
  
  let neg x = (0 - x)
  
  let main n =
  	let z = twice (g n) neg in
    if (n > 0) then assert (z>=0)
  	else assert (z <= 0)
")

(set-logic HORN)

(declare-fun |twice$unknown:7|
  ( Int Int Int ) Bool
)

(assert
  (not (exists ( (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:151| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:154| Int) (|$knormal:6| Bool) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:162| Int) (|$knormal:7| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:163| Int) (|$knormal:11| Int) )
    ( and (= |$knormal:7| (* 2 |$cond-alpha-rename:161|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:158|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:156|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:153|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:151|)) (= |$knormal:7| (* 2 |$alpha-5:n|)) (= |$knormal:6| (>= |$knormal:11| 0)) (= |$knormal:4| (> |$alpha-5:n| 0)) (= |$knormal:11| |$cond-alpha-rename:163|) (= |$cond-alpha-rename:163| (- 0 |$cond-alpha-rename:162|)) (= |$cond-alpha-rename:162| (- 0 |$knormal:7|)) (= |$cond-alpha-rename:157| (* 2 |$cond-alpha-rename:160|)) (= |$cond-alpha-rename:157| (* 2 |$cond-alpha-rename:159|)) (= |$cond-alpha-rename:152| (* 2 |$cond-alpha-rename:155|)) (= |$cond-alpha-rename:152| (* 2 |$cond-alpha-rename:154|)) (not |$knormal:6|) |$knormal:4| (|twice$unknown:7| |$knormal:7| |$knormal:7| |$knormal:7|) (|twice$unknown:7| |$knormal:7| |$cond-alpha-rename:157| |$cond-alpha-rename:157|) (|twice$unknown:7| |$cond-alpha-rename:162| |$knormal:7| |$knormal:7|) (|twice$unknown:7| |$cond-alpha-rename:162| |$cond-alpha-rename:152| |$cond-alpha-rename:152|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:181| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:184| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:192| Int) (|$knormal:7| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:193| Int) (|$knormal:11| Int) )
    ( and (= |$knormal:7| (* 2 |$cond-alpha-rename:191|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:188|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:186|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:183|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:181|)) (= |$knormal:7| (* 2 |$alpha-5:n|)) (= |$knormal:5| (<= |$knormal:11| 0)) (= |$knormal:4| (> |$alpha-5:n| 0)) (= |$knormal:11| |$cond-alpha-rename:193|) (= |$cond-alpha-rename:193| (- 0 |$cond-alpha-rename:192|)) (= |$cond-alpha-rename:192| (- 0 |$knormal:7|)) (= |$cond-alpha-rename:187| (* 2 |$cond-alpha-rename:190|)) (= |$cond-alpha-rename:187| (* 2 |$cond-alpha-rename:189|)) (= |$cond-alpha-rename:182| (* 2 |$cond-alpha-rename:185|)) (= |$cond-alpha-rename:182| (* 2 |$cond-alpha-rename:184|)) (not |$knormal:5|) (not |$knormal:4|) (|twice$unknown:7| |$knormal:7| |$knormal:7| |$knormal:7|) (|twice$unknown:7| |$knormal:7| |$cond-alpha-rename:187| |$cond-alpha-rename:187|) (|twice$unknown:7| |$cond-alpha-rename:192| |$knormal:7| |$knormal:7|) (|twice$unknown:7| |$cond-alpha-rename:192| |$cond-alpha-rename:182| |$cond-alpha-rename:182|) )
    )
  )
)
(check-sat)

(get-model)

