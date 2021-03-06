(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/file.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_41[197:0]| ( Int) Bool)
(declare-fun |read_[188:1]| ( Bool  Int) Bool)
(declare-fun |close_[171:2][184:0]| ( Bool  Int  Int) Bool)
(declare-fun |close_[171:1]| ( Bool  Int) Bool)
(declare-fun |close_[154:2][167:0]| ( Bool  Int  Int) Bool)
(declare-fun |close_[154:1]| ( Bool  Int) Bool)
(declare-fun |f[152:2]| ( Bool  Bool  Int) Bool)
(declare-fun |g[142:2]| ( Int  Bool  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_41[197:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|read_[188:1]| true x1) (and (not (= x1 1)) (not (= x1 3)))) (|fail_41[197:0]| x0))))
(assert (forall ((x2 Bool)(x0 Int)(x3 Bool)(x1 Int)(x4 Int)) (=> (and (|close_[171:2][184:0]| x3 x1 x4) (and (|f[152:2]| x2 x3 x0) (|close_[154:2][167:0]| x2 x0 x1))) (|read_[188:1]| x2 x0))))
(assert (forall ((x0 Bool)(x1 Int)(x2 Int)) (=> (and (|close_[171:1]| x0 x1) (and (= x1 3) (and (= x2 x1) x0))) (|close_[171:2][184:0]| x0 x1 x2))))
(assert (forall ((x2 Bool)(x3 Int)(x1 Bool)(x0 Int)) (=> (and (|f[152:2]| x1 x2 x0) (|close_[154:2][167:0]| x1 x0 x3)) (|close_[171:1]| x2 x3))))
(assert (forall ((x0 Bool)(x1 Int)(x2 Int)) (=> (and (|close_[154:1]| x0 x1) (and (= x1 3) (and (= x2 x1) x0))) (|close_[154:2][167:0]| x0 x1 x2))))
(assert (forall ((x0 Bool)(x2 Int)(x1 Bool)) (=> (|f[152:2]| x0 x1 x2) (|close_[154:1]| x0 x2))))
(assert (forall ((x3 Bool)(x0 Bool)(x4 Int)(x1 Int)) (=> (and (|g[142:2]| x1 x3 0) (and (= x4 1) (and (>= x1 1) x0))) (|f[152:2]| x3 x0 x4))))
(assert (forall ((x3 Int)(x1 Bool)(x0 Int)) (=> (and (= x0 0) (not x1)) (|g[142:2]| x3 x1 x0))))
(check-sat)
(get-model)
(exit)
