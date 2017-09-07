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

(declare-fun |mult$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) )
    (=>
      ( and (= |$cond-alpha-rename:1| |$alpha-3:n|) (= |$cond-alpha-rename:2| |$alpha-3:n|) )
      (|mult$unknown:2| |$cond-alpha-rename:1| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$knormal:7| Int) (|$alpha-2:m| Int) (|$alpha-1:n| Int) (|$knormal:5| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:m| 1)) (= |$knormal:3| (or |$knormal:1| |$knormal:2|)) (= |$knormal:2| (<= |$alpha-2:m| 0)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:14| (+ |$alpha-1:n| |$knormal:7|)) (not |$knormal:3|) (|mult$unknown:3| |$knormal:7| |$knormal:5| |$alpha-1:n|) (|mult$unknown:2| |$alpha-2:m| |$alpha-1:n|) true )
      (|mult$unknown:3| |$V-reftype:14| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:3| (or |$knormal:1| |$knormal:2|)) (= |$knormal:2| (<= |$alpha-2:m| 0)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:12| 0) |$knormal:3| (|mult$unknown:2| |$alpha-2:m| |$alpha-1:n|) true )
      (|mult$unknown:3| |$V-reftype:12| |$alpha-2:m| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$alpha-1:n| Int) (|$alpha-2:m| Int) (|$knormal:3| Bool) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:m| 1)) (= |$knormal:3| (or |$knormal:1| |$knormal:2|)) (= |$knormal:2| (<= |$alpha-2:m| 0)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (not |$knormal:3|) (|mult$unknown:2| |$alpha-2:m| |$alpha-1:n|) true )
      (|mult$unknown:2| |$knormal:5| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:11| Int) (|$alpha-3:n| Int) (|$knormal:13| Bool) )
    ( and (= |$knormal:13| (<= |$alpha-3:n| |$knormal:11|)) (not |$knormal:13|) (|mult$unknown:3| |$knormal:11| |$alpha-3:n| |$alpha-3:n|) )
    )
  )
)
(check-sat)

(get-model)

