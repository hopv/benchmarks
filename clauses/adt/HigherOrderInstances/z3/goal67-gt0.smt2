(set-logic HORN)

(declare-fun |incorrect| ( ) Bool)
(declare-fun |filter| ( (List Int) (List Int) ) Bool)
(declare-fun |len| ( (List Int) Int ) Bool)

(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= B 0) (= A nil))
      )
      (len A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (len B C)
        (and (= E (+ 1 C)) (= D (insert A B)))
      )
      (len D E)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= A nil) (= B nil))
      )
      (filter A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (filter B C)
        (and (= D (insert A B)) (not (<= A 0)) (= E (insert A C)))
      )
      (filter D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) ) 
    (=>
      (and
        (filter B D)
        (and (<= A 0) (= C (insert A B)))
      )
      (filter C D)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (D Int) ) 
    (=>
      (and
        (len C D)
        (filter C A)
        (len A B)
        (>= B (+ 1 D))
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
