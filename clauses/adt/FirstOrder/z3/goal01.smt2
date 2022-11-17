(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)
(declare-fun |drop| ( Int (List Int) (List Int) ) Bool)
(declare-fun |append| ( (List Int) (List Int) (List Int) ) Bool)
(declare-fun |take| ( Int (List Int) (List Int) ) Bool)

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
  (forall ( (F Int) (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= B nil) (= A nil))
      )
      (take F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (and (= D (insert A B)) (= E nil) (= C 0))
      )
      (take C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E Int) (F (List Int)) (G (List Int)) ) 
    (=>
      (and
        (take B C D)
        (and (= E (+ 1 B)) (= F (insert A C)) (= G (insert A D)) (not (= E 0)))
      )
      (take E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (diff_list D E)
        (take A E B)
        (drop A E C)
        (append B C D)
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
