(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |mem| ( Int (List Int) Bool ) Bool)
(declare-fun |find_ok| ( Int (List Int) Int ) Bool)
(declare-fun |find_ex| ( Int (List Int) Bool ) Bool)

(assert
  (forall ( (A Int) (B (List Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= B nil) (= v_2 false))
      )
      (mem A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (mem C B v_4)
        (and (= v_4 true) (= D (insert A B)) (= v_5 true))
      )
      (mem C D v_5)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (mem B A v_3)
        (and (= v_3 false) (= C (insert B A)) (= v_4 true))
      )
      (mem B C v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (mem C B v_4)
        (and (= v_4 false) (= D (insert A B)) (not (= C A)) (= v_5 false))
      )
      (mem C D v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Bool) ) 
    (=>
      (and
        (and (not C) (= B nil))
      )
      (find_ex A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Bool) ) 
    (=>
      (and
        (find_ex C B E)
        (and (= D (insert A B)) (<= A 0) (not (= C A)))
      )
      (find_ex C D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C Int) (v_3 Int) ) 
    (=>
      (and
        (and (not (<= C 0)) (= B (insert C A)) (= v_3 C))
      )
      (find_ok C B v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (find_ok C B E)
        (and (= D (insert A B)) (<= A 0) (not (= C A)))
      )
      (find_ok C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (v_3 Bool) ) 
    (=>
      (and
        (mem B C v_3)
        (find_ok B C A)
        (= v_3 false)
      )
      incorrect
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (v_2 Bool) (v_3 Bool) ) 
    (=>
      (and
        (find_ex A B v_2)
        (mem A B v_3)
        (and (= v_2 false) (= v_3 true))
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
