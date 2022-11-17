(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |sortedlist| ( (List Int) Bool ) Bool)
(declare-fun |ltnode| ( Int (Tree Int) Bool ) Bool)
(declare-fun |leftnodes| ( (Tree Int) (List Int) ) Bool)
(declare-fun |buggybst| ( (Tree Int) Bool ) Bool)
(declare-fun |geqnode| ( Int (Tree Int) Bool ) Bool)

(assert
  (forall ( (A Int) (B (Tree Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= B leaf) (= v_2 true))
      )
      (geqnode A B v_2)
    )
  )
)
(assert
  (forall ( (C Int) (D (Tree Int)) (E (Tree Int)) (A Int) (B (Tree Int)) (v_5 Bool) ) 
    (=>
      (and
        (and (>= A C) (= B (node C D E)) (= v_5 true))
      )
      (geqnode A B v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D Int) (E (Tree Int)) (v_5 Bool) ) 
    (=>
      (and
        (and (<= D (+ (- 1) A)) (= E (node A B C)) (= v_5 false))
      )
      (geqnode D E v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= B leaf) (= v_2 true))
      )
      (ltnode A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D Int) (E (Tree Int)) (v_5 Bool) ) 
    (=>
      (and
        (and (<= D (+ (- 1) A)) (= E (node A B C)) (= v_5 true))
      )
      (ltnode D E v_5)
    )
  )
)
(assert
  (forall ( (C Int) (D (Tree Int)) (E (Tree Int)) (A Int) (B (Tree Int)) (v_5 Bool) ) 
    (=>
      (and
        (and (>= A C) (= B (node C D E)) (= v_5 false))
      )
      (ltnode A B v_5)
    )
  )
)
(assert
  (forall ( (B (Tree Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= B leaf) (= v_1 true))
      )
      (buggybst B v_1)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (ltnode B C v_4)
        (buggybst A v_5)
        (geqnode B A v_6)
        (buggybst C v_7)
        (and (= v_4 true)
     (= v_5 true)
     (= v_6 true)
     (= v_7 true)
     (>= B 0)
     (<= B 100000)
     (= D (node B A C))
     (= v_8 true))
      )
      (buggybst D v_8)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B (Tree Int)) (C Int) (D (Tree Int)) (v_4 Bool) ) 
    (=>
      (and
        (and (<= C (- 1)) (= D (node C A B)) (= v_4 false))
      )
      (buggybst D v_4)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B (Tree Int)) (C Int) (D (Tree Int)) (v_4 Bool) ) 
    (=>
      (and
        (and (>= C 100001) (= D (node C A B)) (= v_4 false))
      )
      (buggybst D v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (buggybst C v_4)
        (and (= v_4 false) (= D (node A C B)) (= v_5 false))
      )
      (buggybst D v_5)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (geqnode B C v_4)
        (and (= v_4 false) (= D (node B C A)) (= v_5 false))
      )
      (buggybst D v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (buggybst C v_4)
        (and (= v_4 false) (= D (node A B C)) (= v_5 false))
      )
      (buggybst D v_5)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (Tree Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (ltnode B C v_4)
        (and (= v_4 false) (= D (node B A C)) (= v_5 false))
      )
      (buggybst D v_5)
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
  (forall ( (F (List Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= F nil) (= v_1 true))
      )
      (sortedlist F v_1)
    )
  )
)
(assert
  (forall ( (A Int) (F (List Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= F (insert A nil)) (= v_2 true))
      )
      (sortedlist F v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        (sortedlist D v_5)
        (and (= v_5 true)
     (= E (insert A (insert B C)))
     (>= A B)
     (= D (insert B C))
     (= v_6 true))
      )
      (sortedlist E v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        (sortedlist D v_5)
        (and (= v_5 true)
     (= E (insert A (insert B C)))
     (<= A (+ (- 1) B))
     (= D (insert B C))
     (= v_6 false))
      )
      (sortedlist E v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E (List Int)) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        (sortedlist D v_5)
        (and (= v_5 false)
     (= E (insert A (insert B C)))
     (= D (insert B C))
     (= v_6 false))
      )
      (sortedlist E v_6)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B (List Int)) (v_2 Bool) (v_3 Bool) ) 
    (=>
      (and
        (sortedlist B v_2)
        (buggybst A v_3)
        (leftnodes A B)
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
