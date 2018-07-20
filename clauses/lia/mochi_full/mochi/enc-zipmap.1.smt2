(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/enc-zipmap.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_23[0:0]| ( Int) Bool)
(declare-fun |zip[0:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_23[0:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)) (=> (and (|zip[0:1]| 0 x2) (not (= x2 0))) (|fail_23[0:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (= x1 x0) (|zip[0:1]| x1 x0))))
(check-sat)
(get-model)
(exit)
