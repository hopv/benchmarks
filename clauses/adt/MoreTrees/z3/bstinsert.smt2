(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |nmax| ( Int Int Int ) Bool)
(declare-fun |bst| ( (Tree Int) Bool ) Bool)
(declare-fun |maxtree| ( (Tree Int) Int ) Bool)
(declare-fun |insertbst| ( (Tree Int) Int (Tree Int) ) Bool)
(declare-fun |min| ( Int Int Int ) Bool)
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
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) ) 
    (=>
      (and
        (and (= C (node B leaf leaf)) (= A leaf))
      )
      (insertbst A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (E (Tree Int)) (F Int) (G (Tree Int)) ) 
    (=>
      (and
        (insertbst C F D)
        (and (= G (node A D B)) (>= F A) (= E (node A C B)))
      )
      (insertbst E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D (Tree Int)) (E (Tree Int)) (F Int) (G (Tree Int)) ) 
    (=>
      (and
        (insertbst C F D)
        (and (= G (node A B D)) (<= F (+ (- 1) A)) (= E (node A B C)))
      )
      (insertbst E F G)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) (C (Tree Int)) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (bst C v_3)
        (bst A v_4)
        (insertbst A B C)
        (and (= v_3 false) (= v_4 true) (<= B 100000) (>= B 0))
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
