(set-logic HORN)
(declare-fun fibo (Int Int) Bool)
(assert (forall ((c Int) (n Int) (c1 Int)(c2 Int))
  (=> (and (< n 2) (= c 0))
    (fibo c n))))
(assert (forall ((c Int) (n Int) (c1 Int)(c2 Int))
  (=> (and (>= n 2) (fibo c1 (- n 1)) (fibo c2 (- n 2)) (= c (+ c1 c2 2)))
  (fibo c n )
  )))


(assert (forall ((n Int) (c Int))
  (=> (and (fibo c n) (> n 0) (>= c (* 2 n))) false)))

(check-sat)

