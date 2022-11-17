(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |nnegtree| ( (Tree Int) Bool ) Bool)
(declare-fun |incorrect| ( ) Bool)

(assert
  (forall ( (A (Tree Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= A leaf) (= v_1 true))
      )
      (nnegtree A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (E Bool) ) 
    (=>
      (and
        (nnegtree C E)
        (and (>= A 0) (= D (node A C B)))
      )
      (nnegtree D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) ) 
    (=>
      (and
        (and (<= A (- 1)) (= D (node A B C)) (= v_4 false))
      )
      (nnegtree D v_4)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (nnegtree A v_4)
        (nnegtree C v_5)
        (and (= v_4 false) (= v_5 true) (not (<= B 0)) (= A (node B C D)))
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
