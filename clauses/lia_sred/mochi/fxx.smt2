(set-info :origin "Verification conditions for the caml program
  let f x y = assert (not (x>0 && y<=0))
  let g x = f x x
")

(set-logic HORN)

(declare-fun |g$unknown:4|
  ( Int ) Bool
)

(assert
  (not (exists ( (|$cond-alpha-rename:4| Int) )
    ( and (|g$unknown:4| |$cond-alpha-rename:4|) (not (not (and (> |$cond-alpha-rename:4| 0) (<= |$cond-alpha-rename:4| 0)))) )
    )
  )
)
(check-sat)

(get-model)

