(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/x_plus_2^n.1.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_492[114:0]| ( Int) Bool)
(declare-fun |f[49:3][52:0][107:2]| ( Bool  Int  Int  Bool  Int  Int) Bool)
(declare-fun |f[49:3][52:0][74:3][93:0]| ( Bool  Int  Int  Bool  Int  Int  Int) Bool)
(declare-fun |f[49:3][52:0][74:2]| ( Bool  Int  Int  Bool  Int  Int) Bool)
(declare-fun |f[46:3][58:0][64:2]| ( Bool  Int  Int  Bool  Int  Int) Bool)
(declare-fun |f[49:2]| ( Bool  Int  Int) Bool)
(declare-fun |f[46:2]| ( Bool  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_492[114:0]| x0))))
(assert (forall ((x0 Int)(var145 Bool)(var146 Int)(x2 Int)(x1 Int)) (=> (and (|f[49:2]| var145 var146 0) (|f[49:3][52:0][107:2]| var145 var146 0 true x2 x1)) (|fail_492[114:0]| x0))))
(assert (forall ((x4 Bool)(x5 Int)(x6 Int)(x1 Bool)(x2 Int)(x3 Int)(var147 Int)(var149 Int)(var150 Int)(x0 Int)(var148 Int)) (=> (and (|f[49:3][52:0][74:3][93:0]| x4 x5 var147 x1 x2 var148 x3) (and (|f[46:3][58:0][64:2]| x4 x5 var150 x1 x2 var148) (and (|f[46:2]| x4 x5 var149) (and (|f[46:2]| x4 x5 var150) (and (|f[49:2]| x4 x5 x6) (and (|f[46:2]| x4 x5 x0) (and (= (+ 1 var147) var149) (and (not (= var149 0)) (and (not (= var150 0)) (and (= (+ 1 x6) x0) (not (= x0 0)))))))))))) (|f[49:3][52:0][107:2]| x4 x5 x6 x1 x2 x3))))
(assert (forall ((x0 Bool)(x1 Int)(x2 Int)(x3 Bool)(x4 Int)(x5 Int)(x6 Int)(var151 Bool)(var152 Int)) (=> (and (|f[49:2]| x0 x1 x2) (and (|f[49:2]| var151 var152 0) (and (|f[49:3][52:0][74:2]| var151 var152 0 x3 x4 x5) (and (= x2 0) (and (= x6 (+ 1 x5)) (not x3)))))) (|f[49:3][52:0][74:3][93:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Bool)(x5 Int)(x6 Int)(x1 Bool)(x2 Int)(x3 Int)(var153 Int)(x0 Int)) (=> (and (|f[46:3][58:0][64:2]| x4 x5 var153 x1 x2 x3) (and (|f[46:2]| x4 x5 var153) (and (|f[49:2]| x4 x5 x6) (and (|f[46:2]| x4 x5 x0) (and (not (= var153 0)) (and (= (+ 1 x6) x0) (not (= x0 0)))))))) (|f[49:3][52:0][74:2]| x4 x5 x6 x1 x2 x3))))
(assert (forall ((x6 Bool)(x7 Int)(x8 Int)(x3 Bool)(x4 Int)(x5 Int)) (=> (and (|f[46:2]| x6 x7 x8) (and (= x7 0) (and (= x4 x7) (and (>= x5 0) (and (>= x8 0) (and (not x3) (not x6))))))) (|f[46:3][58:0][64:2]| x6 x7 x8 x3 x4 x5))))
(assert (forall ((x1 Bool)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|f[46:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (not (= x3 0)))) (|f[49:2]| x1 x2 x0))))
(assert (forall ((x3 Bool)(x4 Int)(x2 Int)) (=> (and (= x4 0) (and (>= x2 0) (not x3))) (|f[46:2]| x3 x4 x2))))
(check-sat)
(get-model)
(exit)
