(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |nnegtree| ( (Tree Int) Bool ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |leftdrop| ( Int (Tree Int) (Tree Int) ) Bool)
(declare-fun |sumtree| ( (Tree Int) Int ) Bool)

(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) ) 
    (=>
      (and
        (and (= C leaf) (= B leaf))
      )
      (leftdrop A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D Int) (E (Tree Int)) (F (Tree Int)) ) 
    (=>
      (and
        (and (= F (node A B C)) (<= D 0) (= E (node A B C)))
      )
      (leftdrop D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (G (Tree Int)) ) 
    (=>
      (and
        (leftdrop C D G)
        (and (= F (node A D B)) (>= E 1) (= E (+ 1 C)))
      )
      (leftdrop E F G)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) ) 
    (=>
      (and
        (and (= A leaf) (= B 0))
      )
      (sumtree A B)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D Int) (E (Tree Int)) (F Int) ) 
    (=>
      (and
        (sumtree C D)
        (sumtree A B)
        (= E (node (+ F (* (- 1) D) (* (- 1) B)) A C))
      )
      (sumtree E F)
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
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (v_5 Bool) ) 
    (=>
      (and
        (sumtree D E)
        (nnegtree B v_5)
        (leftdrop A B D)
        (sumtree B C)
        (and (= v_5 true) (>= E C) (>= A 1))
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
