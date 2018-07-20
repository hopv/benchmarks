(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/esop2017/harmonic.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_29[78:0]| ( Int) Bool)
(declare-fun |div[73:1]| ( Int  Int) Bool)
(declare-fun |fold_left[28:0][69:1]| ( Int  Int) Bool)
(declare-fun |fold_left[28:3][36:1][55:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |range[12:2][24:1][40:1][51:0]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |range[12:2][24:1][40:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |fold_left[28:3][36:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[28:2]| ( Int  Int) Bool)
(declare-fun |range[12:2][24:0]| ( Int  Int  Int) Bool)
(declare-fun |range[15:2][18:0]| ( Int  Int  Int) Bool)
(declare-fun |range[15:1]| ( Int  Int) Bool)
(declare-fun |range[12:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_29[78:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (|div[73:1]| x1 0) (|fail_29[78:0]| x0))))
(assert (forall ((x0 Int)(x4 Int)(x3 Int)(x1 Int)(x2 Int)) (=> (and (|fold_left[28:0][69:1]| x3 x4) (and (|range[12:2][24:0]| 1 x1 x2) (= x0 10000))) (|div[73:1]| x0 x4))))
(assert (forall ((x3 Int)(x4 Int)(var16 Int)) (=> (and (|fold_left[28:3][36:1][55:0]| x3 var16 0 x4) (and (|fold_left[28:2]| x3 var16) (<= 1 var16))) (|fold_left[28:0][69:1]| x3 x4))))
(assert (forall ((x3 Int)(x4 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|fold_left[28:2]| x3 x4) (and (|range[12:2][24:1][40:1][51:0]| 1 x0 x4 x1 x2) (and (|range[12:2][24:0]| 1 x0 x4) (= x3 0)))) (|fold_left[28:3][36:1][55:0]| x3 x4 x1 x2))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)(var19 Int)(var21 Int)(var20 Int)) (=> (and (|range[12:2][24:1][40:0]| x2 x3 var19 x0) (and (|range[15:2][18:0]| var20 x3 var21) (and (|range[12:2][24:0]| x2 x3 x4) (and (|range[12:1]| x2 x3) (and (= var19 (+ 1 var21)) (and (= x4 (+ 1 var21)) (and (= var20 (+ 1 x2)) (and (= x0 0) (and (<= x2 x3) (= x1 x2)))))))))) (|range[12:2][24:1][40:1][51:0]| x2 x3 x4 x0 x1))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)) (=> (and (|range[12:1]| x2 x3) (and (|fold_left[28:3][36:0]| 0 x0 x1) (and (|range[12:2][24:0]| 1 x3 x0) (= x2 1)))) (|range[12:2][24:1][40:0]| x2 x3 x0 x1))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)) (=> (and (|fold_left[28:2]| x1 x2) (and (= x3 0) (<= 1 x2))) (|fold_left[28:3][36:0]| x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|range[12:2][24:0]| 1 x1 x2) (= x0 0)) (|fold_left[28:2]| x0 x2))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var23 Int)(var22 Int)) (=> (and (|range[12:1]| x0 x1) (and (|range[15:2][18:0]| var22 x1 var23) (and (= x2 (+ 1 var23)) (and (<= x0 x1) (= var22 (+ 1 x0)))))) (|range[12:2][24:0]| x0 x1 x2))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|range[15:1]| x1 x2) (and (= x0 0) (>= x1 (+ 1 x2)))) (|range[15:2][18:0]| x1 x2 x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|range[12:1]| x1 x2) (and (= x0 (+ 1 x1)) (<= x1 x2))) (|range[15:1]| x0 x2))))
(assert (forall ((x0 Int)(x1 Int)) (=> (= x0 1) (|range[12:1]| x0 x1))))
(check-sat)
(get-model)
(exit)
