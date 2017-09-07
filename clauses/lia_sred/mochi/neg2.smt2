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

(declare-fun |twice$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:11| Int) (|$alpha-2:x| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) )
    (=>
      ( and (= |$cond-alpha-rename:2| |$alpha-2:x|) (= |$cond-alpha-rename:1| |$alpha-2:x|) (= |$alpha-2:x| (* 2 |$cond-alpha-rename:11|)) )
      (|twice$unknown:6| |$cond-alpha-rename:1| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:30| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:33| Int) (|$knormal:6| Bool) (|$cond-alpha-rename:35| Int) (|$knormal:7| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:37| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:38| Int) (|$knormal:11| Int) )
    ( and (= |$knormal:7| (* 2 |$cond-alpha-rename:34|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:31|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:30|)) (= |$knormal:7| (* 2 |$alpha-5:n|)) (= |$knormal:6| (>= |$knormal:11| 0)) (= |$knormal:4| (> |$alpha-5:n| 0)) (= |$knormal:11| |$cond-alpha-rename:38|) (= |$cond-alpha-rename:38| (- 0 |$cond-alpha-rename:37|)) (= |$cond-alpha-rename:37| (- 0 |$knormal:7|)) (= |$cond-alpha-rename:35| (* 2 |$cond-alpha-rename:36|)) (= |$cond-alpha-rename:32| (* 2 |$cond-alpha-rename:33|)) (not |$knormal:6|) |$knormal:4| (|twice$unknown:6| |$knormal:7| |$knormal:7|) (|twice$unknown:6| |$knormal:7| |$cond-alpha-rename:35|) (|twice$unknown:6| |$cond-alpha-rename:37| |$knormal:7|) (|twice$unknown:6| |$cond-alpha-rename:37| |$cond-alpha-rename:32|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:39| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:42| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:44| Int) (|$knormal:7| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:46| Int) (|$knormal:4| Bool) (|$cond-alpha-rename:47| Int) (|$knormal:11| Int) )
    ( and (= |$knormal:7| (* 2 |$cond-alpha-rename:43|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:40|)) (= |$knormal:7| (* 2 |$cond-alpha-rename:39|)) (= |$knormal:7| (* 2 |$alpha-5:n|)) (= |$knormal:5| (<= |$knormal:11| 0)) (= |$knormal:4| (> |$alpha-5:n| 0)) (= |$knormal:11| |$cond-alpha-rename:47|) (= |$cond-alpha-rename:47| (- 0 |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:46| (- 0 |$knormal:7|)) (= |$cond-alpha-rename:44| (* 2 |$cond-alpha-rename:45|)) (= |$cond-alpha-rename:41| (* 2 |$cond-alpha-rename:42|)) (not |$knormal:5|) (not |$knormal:4|) (|twice$unknown:6| |$knormal:7| |$knormal:7|) (|twice$unknown:6| |$knormal:7| |$cond-alpha-rename:44|) (|twice$unknown:6| |$cond-alpha-rename:46| |$knormal:7|) (|twice$unknown:6| |$cond-alpha-rename:46| |$cond-alpha-rename:41|) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:16| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| (- 0 |$alpha-2:x|)) (= |$cond-alpha-rename:16| (* 2 |$cond-alpha-rename:17|)) (= |$alpha-2:x| (* 2 |$cond-alpha-rename:15|)) (= |$alpha-2:x| (* 2 |$cond-alpha-rename:12|)) (|twice$unknown:6| |$alpha-2:x| |$cond-alpha-rename:16|) (|twice$unknown:6| |$alpha-2:x| |$alpha-2:x|) )
      (|twice$unknown:6| |$knormal:1| |$alpha-2:x|)
    )
  )
)
(check-sat)

(get-model)

