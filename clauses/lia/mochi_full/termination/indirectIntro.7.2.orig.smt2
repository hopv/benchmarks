(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/indirectIntro.7.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_42240[77:0]| ( Int) Bool)
(declare-fun |f[57:2][60:0][70:1]| ( Bool  Int  Bool  Int) Bool)
(declare-fun |app[52:5][55:2][62:0][68:1]| ( Bool  Int  Bool  Int  Bool  Bool  Int  Bool  Int) Bool)
(declare-fun |f[57:1]| ( Bool  Int) Bool)
(declare-fun |app[52:5][55:1]| ( Bool  Int  Bool  Int  Bool  Bool  Int) Bool)
(declare-fun |app[52:9]| ( Bool  Int  Bool  Int  Bool  Bool  Int  Bool  Int) Bool)
(declare-fun |f[34:2][42:0][48:1]| ( Bool  Int  Bool  Int) Bool)
(declare-fun |f[34:1]| ( Bool  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_42240[77:0]| x0))))
(assert (forall ((x0 Int)(var92 Int)(var91 Bool)(x1 Int)) (=> (and (|f[57:1]| var91 var92) (and (|f[57:2][60:0][70:1]| var91 var92 true x1) (<= var92 0))) (|fail_42240[77:0]| x0))))
(assert (forall ((x5 Bool)(x6 Int)(x3 Bool)(x4 Int)(x0 Int)(x2 Bool)(x1 Int)) (=> (and (|app[52:5][55:1]| x2 x1 x2 0 x2 x5 x6) (and (|app[52:5][55:2][62:0][68:1]| x2 x1 x2 0 x2 x5 x6 x3 x4) (and (|f[57:1]| x5 x6) (and (|f[34:1]| x2 x0) (>= x0 1))))) (|f[57:2][60:0][70:1]| x5 x6 x3 x4))))
(assert (forall ((x4 Bool)(x5 Int)(x6 Bool)(x7 Int)(x8 Bool)(x9 Bool)(x10 Int)(x2 Bool)(x3 Int)(x1 Bool)(x0 Int)) (=> (and (|app[52:5][55:1]| x4 x5 x6 x7 x8 x9 x10) (and (|app[52:9]| x4 x5 x6 x7 x8 x1 x10 x9 x0) (and (<= (+ 1 x5) 0) (= x2 x9)))) (|app[52:5][55:2][62:0][68:1]| x4 x5 x6 x7 x8 x9 x10 x2 x3))))
(assert (forall ((x3 Bool)(x4 Int)(x0 Int)(x2 Bool)(x1 Int)) (=> (and (|app[52:5][55:1]| x2 x1 x2 0 x2 x3 x4) (and (|f[34:1]| x2 x0) (>= x0 1))) (|f[57:1]| x3 x4))))
(assert (forall ((x0 Bool)(x1 Int)(x2 Bool)(x3 Int)(x4 Bool)(x7 Bool)(x6 Int)(x5 Bool)(x8 Int)) (=> (and (|app[52:9]| x0 x1 x2 x3 x4 x5 x6 x7 x8) (<= (+ 1 x1) 0)) (|app[52:5][55:1]| x0 x1 x2 x3 x4 x7 x6))))
(assert (forall ((x6 Bool)(x5 Int)(x2 Bool)(x0 Int)(x3 Bool)(x4 Bool)(x1 Int)(x8 Bool)(x9 Int)(x7 Int)) (=> (and (|f[34:1]| x6 x7) (and (|f[34:2][42:0][48:1]| x6 x7 x8 x9) (and (= x0 0) (and (= (+ 1 x1) x7) (and (>= x7 1) (and (= x2 x3) (and (= x2 x6) (= x2 x4)))))))) (|app[52:9]| x6 x5 x2 x0 x3 x4 x1 x8 x9))))
(assert (forall ((x3 Bool)(x4 Int)(x1 Bool)(x2 Int)) (=> (and (|f[34:1]| x3 x4) (and (not x3) (not x1))) (|f[34:2][42:0][48:1]| x3 x4 x1 x2))))
(assert (forall ((x0 Bool)(x2 Int)) (=> (not x0) (|f[34:1]| x0 x2))))
(check-sat)
(get-model)
(exit)
