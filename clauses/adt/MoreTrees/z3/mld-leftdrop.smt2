(set-logic HORN)

(declare-datatypes ( (Tree 1) ) (
  (par (A) (
    leaf
    (node (sel0 A) (sel1 (Tree A)) (sel2 (Tree A)))
  ))
))

(declare-fun |leftdrop| ( Int (Tree Int) (Tree Int) ) Bool)
(declare-fun |minleafdepth| ( (Tree Int) Int ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |min| ( Int Int Int ) Bool)

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
  (forall ( (C (Tree Int)) (A Int) ) 
    (=>
      (and
        (and (= A 0) (= C leaf))
      )
      (minleafdepth C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C (Tree Int)) (D Int) (E (Tree Int)) (F Int) (G (Tree Int)) (H Int) ) 
    (=>
      (and
        (minleafdepth E F)
        (min D F B)
        (minleafdepth C D)
        (and (= H (+ 1 B)) (= G (node A C E)))
      )
      (minleafdepth G H)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) ) 
    (=>
      (and
        (and (= B leaf) (= C leaf))
      )
      (leftdrop A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C (Tree Int)) (D Int) (E (Tree Int)) (F (Tree Int)) ) 
    (=>
      (and
        (and (= E (node A B C)) (<= D 0) (= F (node A B C)))
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
        (and (= E (+ 1 C)) (>= E 1) (= F (node A D B)))
      )
      (leftdrop E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B (Tree Int)) (C Int) (D (Tree Int)) (E Int) ) 
    (=>
      (and
        (minleafdepth D E)
        (leftdrop A D B)
        (minleafdepth B C)
        (and (<= (+ C A) (+ (- 1) E)) (>= A 0))
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
