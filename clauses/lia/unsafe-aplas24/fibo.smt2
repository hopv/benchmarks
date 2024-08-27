(set-logic HORN)
(declare-fun fibo (Int Int) Bool)
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (< n 2) (= r n))
    (fibo n r))))
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (>= n 2) (fibo (- n 1) r2) (fibo (- n 2) r3) (= r (+ r2 r3)))
  (fibo n r )
  )))

(assert (forall ((x Int) (r Int))
  (=> (and (fibo x r) (> x 0)) (<= r (* 1000 x)))))
(check-sat)

