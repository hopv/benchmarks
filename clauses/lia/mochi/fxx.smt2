(set-info :origin "Verification conditions for the caml program
  let f x y = assert (not (x>0 && y<=0))
  let main x = f x x
")

(set-logic HORN)

(check-sat)

(get-model)

(exit)

