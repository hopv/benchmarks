(set-logic HORN)

(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |del| ( Int (List Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)

(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) ) 
    (=>
      (and
        (and (= C nil) (= B nil))
      )
      (del A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (del C B E)
        (and (<= C (+ (- 1) A)) (= D (insert A B)))
      )
      (del C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Int) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (del D B C)
        (and (= F (insert A C)) (>= D A) (= E (insert A B)))
      )
      (del D E F)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) ) 
    (=>
      (and
        (and (= A nil) (= B 0))
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
        (and (= D (insert A B)) (= E (+ A C)))
      )
      (sumlist D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Int) ) 
    (=>
      (and
        (sumlist D E)
        (del A D B)
        (sumlist B C)
        (>= C (+ 1 E))
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
