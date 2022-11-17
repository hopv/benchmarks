(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |sortedlist| ( (List Int) Bool ) Bool)
(declare-fun |nmax| ( Int Int Int ) Bool)
(declare-fun |bst| ( (Tree Int) Bool ) Bool)
(declare-fun |maxtree| ( (Tree Int) Int ) Bool)
(declare-fun |min| ( Int Int Int ) Bool)
(declare-fun |leftnodes| ( (Tree Int) (List Int) ) Bool)
(declare-fun |mintree| ( (Tree Int) Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (and (<= B (+ (- 1) A)) (= v_2 B))
      )
      (min B A v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (and (>= A B) (= v_2 B))
      )
      (min A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (and (<= A (+ (- 1) B)) (= v_2 B))
      )
      (nmax A B v_2)
    )
  )
)
(assert
  (forall ( (B Int) (A Int) (v_2 Int) ) 
    (=>
      (and
        (and (>= A B) (= v_2 A))
      )
      (nmax A B v_2)
    )
  )
)
(assert
  (forall ( (C (Tree Int)) (A Int) ) 
    (=>
      (and
        (and (= A 0) (= C leaf))
      )
      (maxtree C A)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D Int) (E Int) (F Int) (G (Tree Int)) (H Int) ) 
    (=>
      (and
        (nmax E F H)
        (maxtree A B)
        (nmax B D F)
        (maxtree C D)
        (= G (node E A C))
      )
      (maxtree G H)
    )
  )
)
(assert
  (forall ( (C (Tree Int)) (A Int) ) 
    (=>
      (and
        (and (= A 100000) (= C leaf))
      )
      (mintree C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (Tree Int)) (D Int) (E (Tree Int)) (F Int) (G (Tree Int)) (H Int) ) 
    (=>
      (and
        (mintree E F)
        (min D F B)
        (min A B H)
        (mintree C D)
        (= G (node A C E))
      )
      (mintree G H)
    )
  )
)
(assert
  (forall ( (C (Tree Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= C leaf) (= v_1 true))
      )
      (bst C v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true)
     (= v_7 true)
     (>= A 0)
     (>= A E)
     (<= A 100000)
     (<= A C)
     (= F (node A B D))
     (= v_8 true))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true) (= v_7 true) (>= A 100001) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true) (= v_7 true) (<= A (- 1)) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true) (= v_7 true) (>= A (+ 1 C)) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true)
     (= v_7 true)
     (<= A (+ (- 1) E))
     (= F (node A B D))
     (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 true) (= v_7 false) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 false) (= v_7 true) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (v_6 Bool) (v_7 Bool) (v_8 Bool) ) 
    (=>
      (and
        (maxtree D E)
        (bst B v_6)
        (mintree B C)
        (bst D v_7)
        (and (= v_6 false) (= v_7 false) (= F (node A B D)) (= v_8 false))
      )
      (bst F v_8)
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
  (forall ( (I (List Int)) (v_1 Bool) ) 
    (=>
      (and
        (and (= I nil) (= v_1 true))
      )
      (sortedlist I v_1)
    )
  )
)
(assert
  (forall ( (A Int) (I (List Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= I (insert A nil)) (= v_2 true))
      )
      (sortedlist I v_2)
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
        (bst A v_3)
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
