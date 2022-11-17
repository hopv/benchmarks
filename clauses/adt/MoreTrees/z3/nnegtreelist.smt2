(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |nneglist| ( (List Int) Bool ) Bool)
(declare-fun |nnegtree| ( (Tree Int) Bool ) Bool)
(declare-fun |leftnodes| ( (Tree Int) (List Int) ) Bool)
(declare-fun |rightdrop| ( Int (Tree Int) (Tree Int) ) Bool)

(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) ) 
    (=>
      (and
        (and (= C leaf) (= B leaf))
      )
      (rightdrop A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D Int) (E (Tree Int)) (F (Tree Int)) ) 
    (=>
      (and
        (and (= F (node A B C)) (<= D 0) (= E (node A B C)))
      )
      (rightdrop D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (G (Tree Int)) ) 
    (=>
      (and
        (rightdrop C D G)
        (and (= F (node A B D)) (>= E 1) (= E (+ 1 C)))
      )
      (rightdrop E F G)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= A leaf) (= B nil))
      )
      (leftnodes A B)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (List Int)) (E (Tree Int)) (F (List Int)) ) 
    (=>
      (and
        (leftnodes C D)
        (and (= E (node B C A)) (= F (insert B D)))
      )
      (leftnodes E F)
    )
  )
)
(assert
  (forall ( (B (Tree Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= B leaf) (= v_1 true))
      )
      (nnegtree B v_1)
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
  (forall ( (H (List Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= H nil) (= v_1 true))
      )
      (nneglist H v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Bool) ) 
    (=>
      (and
        (nneglist B D)
        (and (>= A 0) (= C (insert A B)))
      )
      (nneglist C D)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (v_3 Bool) ) 
    (=>
      (and
        (and (<= A (- 1)) (= C (insert A B)) (= v_3 false))
      )
      (nneglist C v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (List Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (nneglist D v_4)
        (nnegtree B v_5)
        (rightdrop A B C)
        (leftnodes C D)
        (and (= v_4 false) (= v_5 true) (not (<= A 0)))
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
