(set-logic HORN)

(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |append| ( (List Int) (List Int) (List Int) ) Bool)

(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= B 0) (= A nil))
      )
      (sumlist A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (sumlist B C)
        (and (= E (+ A C)) (= D (insert A B)))
      )
      (sumlist D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (C (List Int)) (v_2 (List Int)) ) 
    (=>
      (and
        (and (= A nil) (= v_2 C))
      )
      (append A C v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (append B E C)
        (and (= F (insert A C)) (= D (insert A B)))
      )
      (append D E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C Int) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (append D E F)
        (append D E A)
        (sumlist A B)
        (sumlist F C)
        (not (= B C))
      )
      incorrect
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        incorrect
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
