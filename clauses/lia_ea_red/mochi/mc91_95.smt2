(set-info :origin "Verification conditions for the caml program
  let rec m x =
    if x > 100
    then x - 10
    else m (m (x + 11))
  
  let main n =
    if n <= 95
    then assert (m n = 91)
    else ()
")

(set-logic HORN)

(declare-fun |m$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (|m$unknown:2| |$knormal:3| (+ |$alpha-1:x| 11)) (|m$unknown:2| |$knormal:5| |$knormal:3|) (not (> |$alpha-1:x| 100)) )
      (|m$unknown:2| |$knormal:5| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) )
    (=>
      ( and (> |$alpha-1:x| 100) )
      (|m$unknown:2| (- |$alpha-1:x| 10) |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:7| Int) )
    ( and (|m$unknown:2| |$knormal:7| |$alpha-2:n|) (<= |$alpha-2:n| 95) (not (= |$knormal:7| 91)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

