(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/esop2017/queen.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_92[20:0]| ( Int) Bool)
(declare-fun |loop[15:2]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_92[20:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (and (|loop[15:2]| x2 x3 x1) (>= 0 (+ 1 x2))) (|fail_92[20:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (= x0 0) (and (>= x2 1) (= x2 x1))) (|loop[15:2]| x0 x2 x1))))
(check-sat)
(get-model)
(exit)
