(set-logic HORN)

(declare-fun |dropwhile| ( (List Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)

(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (dropwhile A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) ) 
    (=>
      (and
        (dropwhile B D)
        (= C (insert A B))
      )
      (dropwhile C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (diff_list A B)
        (dropwhile B A)
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
        (and (= A (insert E F)) (= B (insert C D)) (not (= C E)))
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
        (and (= A (insert D E)) (= B (insert D C)))
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
