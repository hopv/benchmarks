(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as intro3
  *)
  let f x g :unit= g(x+1)
  let h z y = assert (y>z)
  let main n = if n>=0 then f n (h n)
")

(set-logic HORN)

(check-sat)

(get-model)

