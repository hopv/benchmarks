(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |rightnodes| ( (Tree Int) (List Int) ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |nmax| ( Int Int Int ) Bool)
(declare-fun |bst| ( (Tree Int) Bool ) Bool)
(declare-fun |len| ( (List Int) Int ) Bool)
(declare-fun |sumlist| ( (List Int) Int ) Bool)
(declare-fun |maxtree| ( (Tree Int) Int ) Bool)
(declare-fun |min| ( Int Int Int ) Bool)
(declare-fun |leftnodes| ( (Tree Int) (List Int) ) Bool)
(declare-fun |mintree| ( (Tree Int) Int ) Bool)
(declare-fun |take| ( Int (List Int) (List Int) ) Bool)

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
  (forall ( (A Int) (I (List Int)) (J (List Int)) ) 
    (=>
      (and
        (and (= J nil) (= I nil))
      )
      (take A I J)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (and (= E nil) (= C 0) (= D (insert A B)))
      )
      (take C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (List Int)) (D (List Int)) (E Int) (F (List Int)) (G (List Int)) ) 
    (=>
      (and
        (take B C D)
        (and (= G (insert A D)) (not (= E 0)) (= E (+ 1 B)) (= F (insert A C)))
      )
      (take E F G)
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
  (forall ( (A (Tree Int)) (B (List Int)) ) 
    (=>
      (and
        (and (= A leaf) (= B nil))
      )
      (rightnodes A B)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (D (List Int)) (E (Tree Int)) (F (List Int)) ) 
    (=>
      (and
        (rightnodes C D)
        (and (= E (node B A C)) (= F (insert B D)))
      )
      (rightnodes E F)
    )
  )
)
(assert
  (forall ( (I (List Int)) (A Int) ) 
    (=>
      (and
        (and (= A 0) (= I nil))
      )
      (sumlist I A)
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
  (forall ( (I (List Int)) (A Int) ) 
    (=>
      (and
        (and (= A 0) (= I nil))
      )
      (len I A)
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
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D (List Int)) (E Int) (F Int) (G Int) (H (List Int)) (I (List Int)) (J (List Int)) (K Int) (L (Tree Int)) (v_12 Bool) ) 
    (=>
      (and
        (bst L v_12)
        (len B A)
        (rightnodes L B)
        (leftnodes L C)
        (take G C D)
        (sumlist D E)
        (sumlist H F)
        (take G I H)
        (rightnodes L I)
        (leftnodes L J)
        (len J K)
        (and (= v_12 true) (>= K G) (<= E (+ (- 1) F)) (>= A G))
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
