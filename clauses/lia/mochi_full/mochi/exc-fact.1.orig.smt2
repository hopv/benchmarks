(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/exc-fact.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |exn[20:0]| ( Int) Bool)
(declare-fun |fact[15:1][18:0]| ( Int  Int) Bool)
(declare-fun |fact[15:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|exn[20:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|fact[15:1][18:0]| x0 x1) (>= x0 1)) (|exn[20:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|fact[15:0]| x1) (and (= x0 0) (<= x1 0))) (|fact[15:1][18:0]| x1 x0))))
(assert (forall ((x0 Int)) (=> (>= x0 1) (|fact[15:0]| x0))))
(check-sat)
(get-model)
(exit)
