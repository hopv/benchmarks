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
  (forall ( )
    (=>
      ( and true )
      (|k$unknown:8| 0)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (|k$unknown:8| |$alpha-5:n|) (|k$unknown:8| |$cond-alpha-rename:3|) (|k$unknown:9| |$knormal:4| (+ |$alpha-5:n| 1)) (= |$cond-alpha-rename:3| |$alpha-5:n|) )
      (|k$unknown:9| |$knormal:4| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:5| Int) )
    (=>
      ( and (|k$unknown:8| |$alpha-5:n|) (|k$unknown:8| |$cond-alpha-rename:5|) (= |$cond-alpha-rename:5| |$alpha-5:n|) )
      (|k$unknown:8| (+ |$alpha-5:n| 1))
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:y| Int) (|$alpha-4:z| Int) )
    ( and (|k$unknown:8| |$alpha-3:y|) (|k$unknown:8| |$alpha-4:z|) (not (= |$alpha-3:y| |$alpha-4:z|)) )
    )
  )
)
(check-sat)

(get-model)

