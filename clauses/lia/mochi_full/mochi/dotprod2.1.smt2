(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/dotprod2.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_24[0:0]| ( Int) Bool)
(declare-fun |dotprod[0:4]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_24[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)) (=> (and (|dotprod[0:4]| x2 x1 x3) (and (>= 0 (+ 1 x1)) (<= x1 x2))) (|fail_24[0:0]| x0))))
(assert (forall ((x3 Int)(x0 Int)(x1 Int)) (=> (and (= x0 0) (= x1 0)) (|dotprod[0:4]| x3 x0 x1))))
(check-sat)
(get-model)
(exit)
