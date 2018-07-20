(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/copy_intro.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_13[65:0]| ( Int) Bool)
(declare-fun |copy[48:1][60:0]| ( Int  Int) Bool)
(declare-fun |copy[51:1][54:0]| ( Int  Int) Bool)
(declare-fun |copy[51:0]| ( Int) Bool)
(declare-fun |copy[48:0]| ( Int) Bool)
(declare-fun |copy[41:1][44:0]| ( Int  Int) Bool)
(declare-fun |copy[41:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_13[65:0]| x0))))
(assert (forall ((x0 Int)(x3 Int)(x1 Int)(x2 Int)) (=> (and (|copy[48:1][60:0]| x2 x3) (and (|copy[41:1][44:0]| x1 x2) (not (= x3 x1)))) (|fail_13[65:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var31 Int)(var30 Int)) (=> (and (|copy[48:0]| x0) (and (|copy[51:1][54:0]| var30 var31) (and (= x1 (+ 1 var31)) (and (not (= x0 0)) (= (+ 1 var30) x0))))) (|copy[48:1][60:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|copy[51:0]| x1) (and (= x0 0) (= x1 0))) (|copy[51:1][54:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|copy[48:0]| x1) (and (= (+ 1 x0) x1) (not (= x1 0)))) (|copy[51:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (|copy[41:1][44:0]| x0 x1) (|copy[48:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|copy[41:0]| x1) (and (= x0 0) (= x1 0))) (|copy[41:1][44:0]| x1 x0))))
(assert (forall ((x0 Int)) (|copy[41:0]| x0)))
(check-sat)
(get-model)
(exit)
