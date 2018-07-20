(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/enc-zip4.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_23[0:0]| ( Int) Bool)
(declare-fun |zip[0:2][0:0]| ( Int  Int  Int) Bool)
(declare-fun |zip[0:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_23[0:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|zip[0:2][0:0]| x1 x1 x2) (or (<= (+ 1 x2) x1) (>= x2 (+ 1 x1)))) (|fail_23[0:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var97 Int)(var98 Int)(var99 Int)) (=> (and (|zip[0:2][0:0]| var97 var98 var99) (and (|zip[0:1]| x1 x2) (and (not (= x1 0)) (and (= (+ 1 var97) x1) (and (= (+ 1 var98) x2) (and (= x3 (+ 1 var99)) (not (= x2 0)))))))) (|zip[0:2][0:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)) (=> (and (|zip[0:1]| x1 x2) (and (= x2 0) (and (= x1 0) (= x3 0)))) (|zip[0:2][0:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x0 Int)(x3 Int)(x2 Int)) (=> (and (|zip[0:1]| x2 x3) (and (= (+ 1 x0) x3) (and (= (+ 1 x1) x2) (and (not (= x2 0)) (not (= x3 0)))))) (|zip[0:1]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (= x1 x0) (|zip[0:1]| x1 x0))))
(check-sat)
(get-model)
(exit)
