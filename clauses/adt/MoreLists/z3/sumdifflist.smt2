(set-logic HORN)

(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |difflist| ( (List Int) Int ) Bool)

(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= B 0) (= A nil))
      )
      (sumlist A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (sumlist B C)
        (and (= E (+ A C)) (= D (insert A B)))
      )
      (sumlist D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= B 0) (= A nil))
      )
      (difflist A B)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D Int) ) 
    (=>
      (and
        (difflist A B)
        (= C (insert (+ B (* (- 1) D)) A))
      )
      (difflist C D)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) ) 
    (=>
      (and
        (difflist B C)
        (sumlist B A)
        (not (= (+ A C) 0))
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
