(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/bcopy2.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_19[32:0]| ( Int) Bool)
(declare-fun |bcopy_aux[22:1][25:0]| ( Int  Int) Bool)
(declare-fun |bcopy_aux[22:3]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_19[32:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy_aux[22:1][25:0]| x2 x1) (and (>= x2 1) (or (>= 0 (+ 1 x1)) (>= x1 x2)))) (|fail_19[32:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|bcopy_aux[22:3]| x0 x1) (<= (+ 1 x1) x0)) (|bcopy_aux[22:1][25:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (= x0 0) (>= x1 1)) (|bcopy_aux[22:3]| x1 x0))))
(check-sat)
(get-model)
(exit)
