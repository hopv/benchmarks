(set-logic HORN)

(declare-datatypes ( (Opt 0) ) (
  (none (some (sel0 Int)))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |diff_opt| ( Opt Opt ) Bool)
(declare-fun |find_opt| ( (List Int) Opt ) Bool)
(declare-fun |find_ex| ( (List Int) Bool ) Bool)
(declare-fun |find_ok| ( (List Int) Int ) Bool)

(assert
  (forall ( (A (List Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= A nil) (= v_1 false))
      )
      (find_ex A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Bool) ) 
    (=>
      (and
        (find_ex B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (find_ex C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) (C Int) ) 
    (=>
      (and
        (and (not (<= C 0)) (= B (insert C A)))
      )
      (find_ok B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Int) ) 
    (=>
      (and
        (find_ok B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (find_ok C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Opt) ) 
    (=>
      (and
        (and (= A nil) (= B none))
      )
      (find_opt A B)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D Opt) ) 
    (=>
      (and
        (and (= C (insert B A)) (not (<= B 0)) (= D (some B)))
      )
      (find_opt C D)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Opt) ) 
    (=>
      (and
        (find_opt B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (find_opt C D)
    )
  )
)
(assert
  (forall ( (A Opt) (B (List Int)) (C Opt) (D Int) ) 
    (=>
      (and
        (diff_opt C A)
        (find_ok B D)
        (find_opt B C)
        (= A (some D))
      )
      incorrect
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Opt) (v_2 Opt) (v_3 Bool) ) 
    (=>
      (and
        (diff_opt B v_2)
        (find_opt A B)
        (find_ex A v_3)
        (and (= v_2 none) (= v_3 false))
      )
      incorrect
    )
  )
)
(assert
  (forall ( (A Opt) (B Int) (v_2 Opt) ) 
    (=>
      (and
        (and (= A (some B)) (= v_2 none))
      )
      (diff_opt v_2 A)
    )
  )
)
(assert
  (forall ( (A Opt) (B Int) (v_2 Opt) ) 
    (=>
      (and
        (and (= A (some B)) (= v_2 none))
      )
      (diff_opt A v_2)
    )
  )
)
(assert
  (forall ( (A Opt) (B Opt) (C Int) (D Int) ) 
    (=>
      (and
        (and (= B (some C)) (= A (some D)) (not (= C D)))
      )
      (diff_opt B A)
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
