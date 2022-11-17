(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |incorrect| ( ) Bool)
(declare-fun |size| ( (Tree Int) Int ) Bool)
(declare-fun |nmax| ( Int Int Int ) Bool)
(declare-fun |height| ( (Tree Int) Int ) Bool)

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
      (height C A)
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
        (and (= H (+ 1 D)) (= G (node A B E)))
      )
      (height G H)
    )
  )
)
(assert
  (forall ( (C (Tree Int)) (A Int) ) 
    (=>
      (and
        (and (= A 0) (= C leaf))
      )
      (size C A)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) (F (Tree Int)) (G Int) ) 
    (=>
      (and
        (size D E)
        (size B C)
        (and (= G (+ 1 E C)) (= F (node A B D)))
      )
      (size F G)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) ) 
    (=>
      (and
        (height B C)
        (size B A)
        (<= A (+ (- 1) C))
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
