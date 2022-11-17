(set-logic HORN)

(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |nneglist| ( (List Int) Bool ) Bool)
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
  (forall ( (A (List Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= A nil) (= v_1 true))
      )
      (nneglist A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Bool) ) 
    (=>
      (and
        (nneglist B D)
        (and (>= A 0) (= C (insert A B)))
      )
      (nneglist C D)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (v_3 Bool) ) 
    (=>
      (and
        (and (<= A (- 1)) (= C (insert A B)) (= v_3 false))
      )
      (nneglist C v_3)
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
  (forall ( (A (List Int)) (B (List Int)) (C Int) (D (List Int)) (E Int) (v_5 Bool) ) 
    (=>
      (and
        (sumlist D E)
        (nneglist A v_5)
        (append A D B)
        (sumlist B C)
        (and (= v_5 true) (>= E (+ 1 C)))
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
