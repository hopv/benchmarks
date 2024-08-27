(set-logic HORN)
(declare-fun posmul (Int Int Int) Bool)
(declare-fun fact (Int Int) Bool)
(assert (forall ((a Int) (b Int) (r Int))
  (=> (and (= b 0) (= r 0))
    (posmul a b r))))
(assert (forall ((a Int) (b Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (not (= b 0)) (posmul a (- b 1) r2) (= r (+ a r2)) )
  (posmul a b r )
  )))

(assert (forall ((n Int) (r Int) )
  (=> (and (= n 0) (= r 1))
    (fact n r))))

(assert (forall ((n Int) (r Int) (m Int) )
  (=> (and (not (= n 0)) (posmul m n r) (fact (- n 1)  m) )
    (fact n r))))


(assert (forall ((n Int) (r Int))
  (=> (and (fact 20 r) ) (< r 1000))))
(check-sat)
