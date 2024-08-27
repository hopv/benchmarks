(set-logic HORN)
(declare-fun mc91 (Int Int) Bool)
(declare-fun sum_of_mc91 (Int Int) Bool)
(assert (forall ((n Int) (r Int))
  (=> (and (> n 100) (= r (- n 10)))
    (mc91 n r))))
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (<= n 100) (mc91 (+ n 11) r2) (mc91 r2 r) )
  (mc91 n r )
  )))

(assert (forall ((n Int) (r Int) )
  (=> (and (= n 0) (= r 0))
    (sum_of_mc91 n r))))

(assert (forall ((n Int) (r Int) (r2 Int) (r3 Int))
  (=> (and (not (= n  0)) (mc91 n r2) (sum_of_mc91  (- n 1)  r3) (= r (- (+ r2 r3) 90)))
    (sum_of_mc91 n r))))


(assert (forall ((n Int) (r Int))
  (=> (and (sum_of_mc91  n r) ) (= r n))))
(check-sat)

