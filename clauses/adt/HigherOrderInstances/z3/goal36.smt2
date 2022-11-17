(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)
(declare-fun |p| ( Int Bool ) Bool)
(declare-fun |takewhile| ( (List Int) (List Int) ) Bool)

(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (takewhile A B)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) (v_5 Bool) ) 
    (=>
      (and
        (p C v_5)
        (takewhile A B)
        (and (= v_5 true) (= E (insert C B)) (= D (insert C A)))
      )
      (takewhile D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D (List Int)) (v_4 Bool) ) 
    (=>
      (and
        (p B v_4)
        (and (= v_4 false) (= D nil) (= C (insert B A)))
      )
      (takewhile C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (diff_list A B)
        (takewhile B A)
        true
      )
      incorrect
    )
  )
)
(assert
  (forall ( (E Int) (v_1 Bool) ) 
    (=>
      (and
        (and true (= v_1 true))
      )
      (p E v_1)
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
