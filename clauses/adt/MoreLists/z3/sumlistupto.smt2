(set-logic HORN)

(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |upto| ( Int (List Int) ) Bool)

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
  (forall ( (B Int) (A (List Int)) ) 
    (=>
      (and
        (and (<= B 0) (= A nil))
      )
      (upto B A)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) ) 
    (=>
      (and
        (upto A B)
        (and (= C (+ 1 A)) (>= C 1) (= D (insert C B)))
      )
      (upto C D)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) ) 
    (=>
      (and
        (sumlist B C)
        (upto A B)
        (<= C (- 1))
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
