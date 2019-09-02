(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/up_down.8.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_11359[35:0]| ( Int) Bool)
(declare-fun |down_without_checking_160[24:2]| ( Bool  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_11359[35:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(var12 Bool)(var13 Int)) (=> (and (|down_without_checking_160[24:2]| var12 var13 x2) (<= (+ 1 x2) 0)) (|fail_11359[35:0]| x0))))
(assert (forall ((x5 Bool)(x6 Int)(x7 Int)) (=> (and (= x6 0) (and (>= x7 1) (not x5))) (|down_without_checking_160[24:2]| x5 x6 x7))))
(check-sat)
(get-model)
(exit)