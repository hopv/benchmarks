(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as apply
  *)
  
  let apply f x = f x
  let g y z = assert (y=z)
  let rec k n = apply (g n) n; k(n+1)
  let main i = k 0
")

(set-logic HORN)

(declare-fun |k$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |k$unknown:8|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 0) )
      (|k$unknown:8| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:7| Bool) (|$knormal:4| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:3| Int) (|$knormal:3| Int) (|$V-reftype:23| Int) (|$cond-alpha-rename:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$cond-alpha-rename:4|) (= |$knormal:3| (+ |$alpha-5:n| 1)) (= |$cond-alpha-rename:7| (= |$cond-alpha-rename:3| |$alpha-5:n|)) (= |$cond-alpha-rename:4| 1) (= |$V-reftype:23| |$knormal:4|) |$cond-alpha-rename:7| (|k$unknown:9| |$knormal:4| |$knormal:3|) (|k$unknown:8| |$cond-alpha-rename:3|) (|k$unknown:8| |$alpha-5:n|) )
      (|k$unknown:9| |$V-reftype:23| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:3| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:8| Bool) )
    (=>
      ( and (= |$knormal:9| |$cond-alpha-rename:6|) (= |$knormal:3| (+ |$alpha-5:n| 1)) (= |$cond-alpha-rename:8| (= |$cond-alpha-rename:5| |$alpha-5:n|)) (= |$cond-alpha-rename:6| 1) |$cond-alpha-rename:8| (|k$unknown:8| |$cond-alpha-rename:5|) (|k$unknown:8| |$alpha-5:n|) )
      (|k$unknown:8| |$knormal:3|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:z| Int) (|$alpha-3:y| Int) (|$knormal:2| Bool) )
    ( and (= |$knormal:2| (= |$alpha-3:y| |$alpha-4:z|)) (not |$knormal:2|) (|k$unknown:8| |$alpha-4:z|) (|k$unknown:8| |$alpha-3:y|) )
    )
  )
)
(check-sat)
