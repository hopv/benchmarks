(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |mymap| ( (List Int) (List Int) ) Bool)
(declare-fun |take| ( Int (List Int) (List Int) ) Bool)
(declare-fun |diff_list| ( (List Int) (List Int) ) Bool)

(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) ) 
    (=>
      (and
        (and (= C nil) (= B nil))
      )
      (take A B C)
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
  (forall ( (B (List Int)) (C (List Int)) ) 
    (=>
      (and
        (and (= C nil) (= B nil))
      )
      (mymap B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (mymap C D)
        (and (= E (insert A C)) (= F (insert B D)) (= B (+ 1 A)))
      )
      (mymap E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (diff_list E F)
        (mymap C A)
        (take B A E)
        (take B C D)
        (mymap D F)
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
