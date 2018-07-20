(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/map.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_11[51:0]| ( Int) Bool)
(declare-fun |map[34:1][46:0]| ( Int  Int) Bool)
(declare-fun |map[37:1][40:0]| ( Int  Int) Bool)
(declare-fun |map[37:0]| ( Int) Bool)
(declare-fun |map[34:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_11[51:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|map[34:1][46:0]| x1 x2) (not (= x2 x1))) (|fail_11[51:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var25 Int)(var24 Int)) (=> (and (|map[34:0]| x0) (and (|map[37:1][40:0]| var24 var25) (and (= x1 (+ 1 var25)) (and (not (= x0 0)) (= (+ 1 var24) x0))))) (|map[34:1][46:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|map[37:0]| x1) (and (= x0 0) (= x1 0))) (|map[37:1][40:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|map[34:0]| x1) (and (= (+ 1 x0) x1) (not (= x1 0)))) (|map[37:0]| x0))))
(assert (forall ((x0 Int)) (|map[34:0]| x0)))
(check-sat)
(get-model)
(exit)
