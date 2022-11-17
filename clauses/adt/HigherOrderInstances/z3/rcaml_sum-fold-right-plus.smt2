(set-logic HORN)

(declare-fun |fold_right| ( (List Int) Int Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |sum_list| ( (List Int) Int ) Bool)

(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= B 0) (= A nil))
      )
      (sum_list A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (sum_list B C)
        (and (= A (+ E (* (- 1) C))) (= D (insert A B)))
      )
      (sum_list D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (v_2 Int) ) 
    (=>
      (and
        (and (= A nil) (= v_2 B))
      )
      (fold_right A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) (F Int) ) 
    (=>
      (and
        (fold_right B E C)
        (and (= F (+ A C)) (= D (insert A B)))
      )
      (fold_right D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (v_3 Int) ) 
    (=>
      (and
        (sum_list B C)
        (fold_right B v_3 A)
        (and (= 0 v_3) (not (= C A)))
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
