(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as mult
  USED: PEPM2013 as mult
  *)
  let rec mult n m =
    if n <= 0 || m <= 0 then
      0
    else
      n + mult n (m-1)
  let main n = assert (n <= mult n n)
")

(set-logic HORN)

(declare-fun |mult$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:7| Int) )
    (=>
      ( and (|mult$unknown:3| |$knormal:7| (- |$alpha-2:m| 1) |$alpha-1:n|) (not (or (<= |$alpha-1:n| 0) (<= |$alpha-2:m| 0))) )
      (|mult$unknown:3| (+ |$alpha-1:n| |$knormal:7|) |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$alpha-2:m| Int) )
    (=>
      ( and (or (<= |$alpha-1:n| 0) (<= |$alpha-2:m| 0)) )
      (|mult$unknown:3| 0 |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$knormal:11| Int) )
    ( and (|mult$unknown:3| |$knormal:11| |$alpha-3:n| |$alpha-3:n|) (not (<= |$alpha-3:n| |$knormal:11|)) )
    )
  )
)
(check-sat)

(get-model)

