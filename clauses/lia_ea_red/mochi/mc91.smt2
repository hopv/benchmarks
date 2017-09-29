(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as mc91
  USED: PEPM2013 as mc91
  *)
  
  let rec mc91 x =
    if x > 100 then
      x - 10
    else
      mc91 (mc91 (x + 11))
  let main n =
    if n <= 101 then assert (mc91 n = 91)
")

(set-logic HORN)

(declare-fun |mc91$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (|mc91$unknown:2| |$knormal:3| (+ |$alpha-1:x| 11)) (|mc91$unknown:2| |$knormal:5| |$knormal:3|) (not (> |$alpha-1:x| 100)) )
      (|mc91$unknown:2| |$knormal:5| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (> |$alpha-1:x| 100) )
      (|mc91$unknown:2| (- |$alpha-1:x| 10) |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:7| Int) )
    ( and (|mc91$unknown:2| |$knormal:7| |$alpha-2:n|) (<= |$alpha-2:n| 101) (not (= |$knormal:7| 91)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

