(set-logic HORN)

(declare-fun |drop| ( Int (List Int) (List Int) ) Bool)
(declare-fun |map_succ| ( (List Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)

(assert
  (forall ( (F Int) (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (drop F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (and (= D (insert A B)) (= E (insert A B)) (= C 0))
      )
      (drop C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D Int) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (drop B C F)
        (and (= D (+ 1 B)) (= E (insert A C)) (not (= D 0)))
      )
      (drop D E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (map_succ A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (map_succ C D)
        (and (= E (insert B C)) (= F (insert A D)) (= A (+ 1 B)))
      )
      (map_succ E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (diff_list E F)
        (drop B A E)
        (map_succ C A)
        (drop B C D)
        (map_succ D F)
        (>= B 0)
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
