(set-info :origin "Verification conditions for the caml program
  
  let f n k = if n >= 0 then () else k 0
  let g n = assert (n = 0)
  let main n = f n g
")

(set-logic HORN)

(check-sat)

(get-model)

(exit)

