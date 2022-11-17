(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |merge| ( (List Int) (List Int) (List Int) ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)
(declare-fun |oddpos| ( (List Int) (List Int) ) Bool)
(declare-fun |evenpos| ( (List Int) (List Int) ) Bool)

(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (evenpos A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) ) 
    (=>
      (and
        (and (= C nil) (= B (insert A nil)))
      )
      (evenpos B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (evenpos C D)
        (and (= F (insert A D)) (= E (insert A (insert B C))))
      )
      (evenpos E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (oddpos A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (evenpos B C)
        (and (= E (insert A C)) (= D (insert A B)))
      )
      (oddpos D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (v_2 (List Int)) ) 
    (=>
      (and
        (and (= A nil) (= v_2 B))
      )
      (merge A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (merge E B C)
        (and (= F (insert A C)) (= D (insert A B)))
      )
      (merge D E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C (List Int)) (D (List Int)) ) 
    (=>
      (and
        (diff_list C D)
        (oddpos C A)
        (evenpos C B)
        (merge A B D)
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
