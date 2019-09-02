(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/file.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_41[0:0]| ( Int) Bool)
(declare-fun |read_[0:1]| ( Bool  Int) Bool)
(declare-fun |close_[0:2][0:0]| ( Bool  Int  Int) Bool)
(declare-fun |close_[0:1]| ( Bool  Int) Bool)
(declare-fun |f[0:2]| ( Bool  Bool  Int) Bool)
(declare-fun |g[0:2]| ( Int  Bool  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_41[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|read_[0:1]| true x1) (and (not (= x1 1)) (not (= x1 3)))) (|fail_41[0:0]| x0))))
(assert (forall ((x2 Bool)(x0 Int)(x3 Bool)(x1 Int)(x4 Int)) (=> (and (|close_[0:2][0:0]| x3 x1 x4) (and (|f[0:2]| x2 x3 x0) (|close_[0:2][0:0]| x2 x0 x1))) (|read_[0:1]| x2 x0))))
(assert (forall ((x1 Bool)(x2 Int)(x0 Int)) (=> (and (|close_[0:1]| x1 x2) (and (= x0 x2) (not x1))) (|close_[0:2][0:0]| x1 x2 x0))))
(assert (forall ((x2 Bool)(x3 Int)(x1 Bool)(x0 Int)) (=> (and (|f[0:2]| x1 x2 x0) (|close_[0:2][0:0]| x1 x0 x3)) (|close_[0:1]| x2 x3))))
(assert (forall ((x1 Bool)(x2 Int)(x0 Int)) (=> (and (|close_[0:1]| x1 x2) (and (= x0 x2) (not x1))) (|close_[0:2][0:0]| x1 x2 x0))))
(assert (forall ((x0 Bool)(x2 Int)(x1 Bool)) (=> (|f[0:2]| x0 x1 x2) (|close_[0:1]| x0 x2))))
(assert (forall ((x2 Bool)(x0 Bool)(x3 Int)(x1 Int)) (=> (and (|g[0:2]| x1 x2 x3) (and (<= x1 0) (not x0))) (|f[0:2]| x2 x0 x3))))
(assert (forall ((x3 Int)(x1 Bool)(x0 Int)) (=> (and (= x0 0) (not x1)) (|g[0:2]| x3 x1 x0))))
(check-sat)
(get-model)
(exit)