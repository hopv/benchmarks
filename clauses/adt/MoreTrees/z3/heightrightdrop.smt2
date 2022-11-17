(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |nmax| ( Int Int Int ) Bool)
(declare-fun |size| ( (Tree Int) Int ) Bool)
(declare-fun |height| ( (Tree Int) Int ) Bool)
(declare-fun |rightdrop| ( Int (Tree Int) (Tree Int) ) Bool)

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
  (forall ( (A Int) (C (Tree Int)) (D (Tree Int)) ) 
    (=>
      (and
        (and (= D leaf) (= C leaf))
      )
      (rightdrop A C D)
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
  (forall ( (A (Tree Int)) (B Int) ) 
    (=>
      (and
        (and (= A leaf) (= B 0))
      )
      (height A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D Int) (E (Tree Int)) (F Int) (G (Tree Int)) (H Int) ) 
    (=>
      (and
        (height E F)
        (height B C)
        (nmax C F D)
        (and (= G (node A B E)) (= H (+ 1 D)))
      )
      (height G H)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B Int) ) 
    (=>
      (and
        (and (= A leaf) (= B 0))
      )
      (size A B)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (G Int) ) 
    (=>
      (and
        (size D E)
        (size B C)
        (and (= F (node A B D)) (= G (+ 1 E C)))
      )
      (size F G)
    )
  )
)
(assert
  (forall ( (A (Tree Int)) (B (Tree Int)) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (height B C)
        (height A v_3)
        (size A v_4)
        (rightdrop v_5 A B)
        (and (= 2 v_3) (= 3 v_4) (= 1 v_5) (not (= C 1)))
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
