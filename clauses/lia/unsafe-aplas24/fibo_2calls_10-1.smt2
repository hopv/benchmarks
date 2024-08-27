(set-logic HORN)
(declare-fun fibo1 (Int Int) Bool)
(declare-fun fibo2 (Int Int) Bool)
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (< n 2) (= r n))
    (fibo1 n r))))
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (>= n 2) (fibo2 (- n 1) r2) (fibo2 (- n 2) r3) (= r (+ r2 r3)))
  (fibo1 n r )
  )))

(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (< n 2) (= r n))
    (fibo2 n r))))
(assert (forall ((n Int) (r Int) (r2 Int)(r3 Int))
  (=> (and (>= n 2) (fibo1 (- n 1) r2) (fibo1 (- n 2) r3) (= r (+ r2 r3)))
  (fibo2 n r )
  )))

(assert (forall ((x Int) (r Int))
  (=> (and (fibo1 x r) (> x 0)) (<= r (* 1000 x)))))
(check-sat)
