(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as intro1
  *)
  let f x g : unit= g(x+1)
  let h y = assert (y>0)
  let main n = if n>0 then f n h
")

(set-logic HORN)

(check-sat)

(get-model)

(exit)

