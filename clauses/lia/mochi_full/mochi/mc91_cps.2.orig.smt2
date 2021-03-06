(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/mc91_cps.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_13[66:0]| ( Int) Bool)
(declare-fun |m[41:1][58:0]| ( Int  Int) Bool)
(declare-fun |m[51:1][54:0]| ( Int  Int) Bool)
(declare-fun |m[51:0]| ( Int) Bool)
(declare-fun |m[44:1][47:0]| ( Int  Int) Bool)
(declare-fun |m[44:0]| ( Int) Bool)
(declare-fun |m[41:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_13[66:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|m[41:1][58:0]| x1 x2) (and (<= x1 101) (not (= x2 91)))) (|fail_13[66:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var36 Int)(var37 Int)) (=> (and (|m[51:1][54:0]| var37 x1) (and (|m[41:0]| x0) (and (|m[44:1][47:0]| var36 var37) (and (<= x0 100) (= var36 (+ 11 x0)))))) (|m[41:1][58:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|m[51:0]| x1) (and (= (+ 10 x0) x1) (>= x1 101))) (|m[51:1][54:0]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)(var38 Int)) (=> (and (|m[41:0]| x0) (and (|m[44:1][47:0]| var38 x1) (and (<= x0 100) (= var38 (+ 11 x0))))) (|m[51:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|m[44:0]| x1) (and (= (+ 10 x0) x1) (>= x1 101))) (|m[44:1][47:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|m[41:0]| x1) (and (= x0 (+ 11 x1)) (<= x1 100))) (|m[44:0]| x0))))
(assert (forall ((x0 Int)) (|m[41:0]| x0)))
(check-sat)
(get-model)
(exit)
