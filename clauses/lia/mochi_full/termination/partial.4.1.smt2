(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/partial.4.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_137[0:0]| ( Int) Bool)
(declare-fun |f[0:11][0:3]| ( Bool  Int  Int  Int  Bool  Int  Int  Int  Bool  Int  Int  Bool  Int  Int  Int) Bool)
(declare-fun |f[0:10]| ( Bool  Int  Int  Int  Bool  Int  Int  Int  Bool  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_137[0:0]| x0))))
(assert (forall ((x0 Int)(var8 Int)(x3 Int)(x4 Int)(x2 Int)) (=> (|f[0:11][0:3]| false 0 0 var8 false 0 0 0 false 0 0 true x3 x4 x2) (|fail_137[0:0]| x0))))
(assert (forall ((x4 Bool)(x5 Int)(x6 Int)(x7 Int)(x8 Bool)(x9 Int)(x10 Int)(x11 Int)(x12 Bool)(x13 Int)(x14 Int)(x3 Bool)(x0 Int)(x1 Int)(x2 Int)) (=> (and (|f[0:10]| x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14) (and (= x0 x13) (and (= x1 x14) (and (= x2 x7) (= x3 x12))))) (|f[0:11][0:3]| x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x3 x0 x1 x2))))
(assert (forall ((x7 Bool)(x0 Int)(x1 Int)(x10 Int)(x8 Bool)(x2 Int)(x3 Int)(x4 Int)(x9 Bool)(x5 Int)(x6 Int)) (=> (and (= x0 0) (and (= x1 0) (and (= x2 0) (and (= x3 0) (and (= x4 0) (and (= x5 0) (and (= x6 0) (and (not x7) (and (not x8) (not x9)))))))))) (|f[0:10]| x7 x0 x1 x10 x8 x2 x3 x4 x9 x5 x6))))
(check-sat)
(get-model)
(exit)
