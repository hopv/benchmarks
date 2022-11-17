(set-logic HORN)

(declare-fun |append| ( (List Int) (List Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |rev| ( (List Int) (List Int) ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)
(declare-fun |filter| ( (List Int) (List Int) ) Bool)

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
      (rev A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (append C D F)
        (rev B C)
        (and (= E (insert A B)) (= D (insert A nil)))
      )
      (rev E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (filter A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (filter B C)
        (and (= E (insert A C)) (not (<= A 0)) (= D (insert A B)))
      )
      (filter D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) ) 
    (=>
      (and
        (filter B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (filter C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (diff_list D E)
        (filter B A)
        (rev A D)
        (rev B C)
        (filter C E)
        true
      )
      incorrect
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (v_3 (List Int)) ) 
    (=>
      (and
        (and (= A (insert B C)) (= v_3 nil))
      )
      (diff_list v_3 A)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (v_3 (List Int)) ) 
    (=>
      (and
        (and (= A (insert B C)) (= v_3 nil))
      )
      (diff_list A v_3)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C Int) (D (List Int)) (E Int) (F (List Int)) ) 
    (=>
      (and
        (and (= B (insert C D)) (= A (insert E F)) (not (= C E)))
      )
      (diff_list B A)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C (List Int)) (D Int) (E (List Int)) ) 
    (=>
      (and
        (diff_list C E)
        (and (= B (insert D C)) (= A (insert D E)))
      )
      (diff_list B A)
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
