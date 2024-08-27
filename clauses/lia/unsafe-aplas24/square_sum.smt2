(set-logic HORN)
(declare-fun posmul (Int Int Int) Bool)
(declare-fun sum_of_squares (Int Int) Bool)
(assert (forall ((a Int) (b Int) (r Int))
  (=> (and (= b 0) (= r 0))
    (posmul a b r))))
(assert (forall ((a Int) (b Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (not (= b 0)) (posmul a (- b 1) r2) (= r (+ a r2)) )
  (posmul a b r )
  )))

(assert (forall ((n Int) (r Int) )
  (=> (and (= n 0) (= r 0))
    (sum_of_squares n r))))

(assert (forall ((n Int) (r Int) (r2 Int) (r3 Int))
  (=> (and (not (= n 0)) (posmul n n r2) (sum_of_squares  (- n 1)  r3) (= r (+ r2 r3) ))
    (sum_of_squares n r))))


(assert (forall ((n Int) (r Int))
  (=> (and (sum_of_squares  n r) ) (<= r (* 1000 n)))))
(check-sat)

