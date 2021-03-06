(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/adt/enc-filter.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_14[53:0]| ( Int) Bool)
(declare-fun |filter[34:2][48:0]| ( Int  Int) Bool)
(declare-fun |filter[41:2][44:0]| ( Int  Int) Bool)
(declare-fun |filter[41:1]| ( Int) Bool)
(declare-fun |filter[34:1]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_14[53:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|filter[34:2][48:0]| x1 x2) (>= x2 (+ 1 x1))) (|fail_14[53:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var42 Int)) (=> (and (|filter[41:2][44:0]| var42 x1) (and (|filter[34:1]| x0) (and (= (+ 1 var42) x0) (not (= x0 0))))) (|filter[34:2][48:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|filter[41:1]| x1) (and (= x0 0) (= x1 0))) (|filter[41:2][44:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|filter[34:1]| x1) (and (= (+ 1 x0) x1) (not (= x1 0)))) (|filter[41:1]| x0))))
(assert (forall ((x0 Int)) (|filter[34:1]| x0)))
(check-sat)
(get-model)
(exit)
