(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/mc91_cps.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_13[0:0]| ( Int) Bool)
(declare-fun |m[0:1][0:0]| ( Int  Int) Bool)
(declare-fun |m[0:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_13[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|m[0:1][0:0]| x1 x2) (and (<= x1 101) (not (= x2 91)))) (|fail_13[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var36 Int)(var37 Int)) (=> (and (|m[0:1][0:0]| var37 x1) (and (|m[0:0]| x0) (and (|m[0:1][0:0]| var36 var37) (and (<= x0 100) (= var36 (+ 11 x0)))))) (|m[0:1][0:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|m[0:0]| x1) (and (= (+ 10 x0) x1) (>= x1 101))) (|m[0:1][0:0]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)(var38 Int)) (=> (and (|m[0:0]| x0) (and (|m[0:1][0:0]| var38 x1) (and (<= x0 100) (= var38 (+ 11 x0))))) (|m[0:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|m[0:0]| x1) (and (= (+ 10 x0) x1) (>= x1 101))) (|m[0:1][0:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|m[0:0]| x1) (and (= x0 (+ 11 x1)) (<= x1 100))) (|m[0:0]| x0))))
(assert (forall ((x0 Int)) (|m[0:0]| x0)))
(check-sat)
(get-model)
(exit)
