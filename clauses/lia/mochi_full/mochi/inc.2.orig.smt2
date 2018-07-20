(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/inc.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_13[62:0]| ( Int) Bool)
(declare-fun |g[56:2]| ( Int  Int) Bool)
(declare-fun |g[32:1][44:1][50:0]| ( Int  Int  Int) Bool)
(declare-fun |g[32:1][44:0]| ( Int  Int) Bool)
(declare-fun |g[32:2]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_13[62:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|g[56:2]| x1 x2) (and (>= 0 (+ 1 x2)) (<= (+ 1 x2) x1))) (|fail_13[62:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x4 Int)) (=> (and (|g[32:2]| x1 x2) (and (|g[32:1][44:1][50:0]| x1 x2 x4) (and (= x0 (+ 1 x2)) (and (<= 0 x2) (<= (+ 1 x2) x1))))) (|g[56:2]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var60 Int)) (=> (and (|g[32:1][44:0]| var60 x1) (= x2 0)) (|g[32:1][44:1][50:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x2 Int)) (=> (and (|g[32:2]| x0 x2) (and (<= 0 x2) (<= (+ 1 x2) x0))) (|g[32:1][44:0]| x0 x2))))
(assert (forall ((x1 Int)(x0 Int)) (=> (= x0 0) (|g[32:2]| x1 x0))))
(check-sat)
(get-model)
(exit)
