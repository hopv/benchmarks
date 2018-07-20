(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/dotprod4.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_21[87:0]| ( Int) Bool)
(declare-fun |dotprod[56:2][80:0]| ( Int  Int) Bool)
(declare-fun |dotprod[56:1][59:1][74:0]| ( Int  Int  Int) Bool)
(declare-fun |dotprod[56:1][59:0]| ( Int  Int) Bool)
(declare-fun |dotprod[56:4]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_21[87:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|dotprod[56:2][80:0]| x2 x1) (or (>= 0 (+ 1 x1)) (>= x1 x2))) (|fail_21[87:0]| x0))))
(assert (forall ((x1 Int)(x3 Int)(x2 Int)(var77 Int)) (=> (and (|dotprod[56:4]| x1 x3 x2) (and (|dotprod[56:1][59:1][74:0]| x1 x3 var77) (<= (+ 1 x3) x1))) (|dotprod[56:2][80:0]| x1 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|dotprod[56:1][59:0]| x0 x1) (and (= x2 0) (and (<= 0 x1) (<= (+ 1 x1) x0)))) (|dotprod[56:1][59:1][74:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|dotprod[56:4]| x0 x1 x2) (<= (+ 1 x1) x0)) (|dotprod[56:1][59:0]| x0 x1))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (= x2 0) (= x2 x0)) (|dotprod[56:4]| x1 x2 x0))))
(check-sat)
(get-model)
(exit)
