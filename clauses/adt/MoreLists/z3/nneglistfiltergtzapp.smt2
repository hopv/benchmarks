(set-logic HORN)

(declare-fun |filtergtz| ( (List Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |append| ( (List Int) (List Int) (List Int) ) Bool)
(declare-fun |nneglist| ( (List Int) Bool ) Bool)

(assert
  (forall ( (A (List Int)) (B (List Int)) (v_2 (List Int)) ) 
    (=>
      (and
        (and (= A nil) (= v_2 B))
      )
      (append A B v_2)
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
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (filtergtz A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (filtergtz B C)
        (and (= E (insert A C)) (>= A 1) (= D (insert A B)))
      )
      (filtergtz D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) ) 
    (=>
      (and
        (filtergtz B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (filtergtz C D)
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
  (forall ( (A (List Int)) (B (List Int)) (C (List Int)) (D (List Int)) (v_4 Bool) ) 
    (=>
      (and
        (nneglist D v_4)
        (append A B C)
        (filtergtz C D)
        (= v_4 false)
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
