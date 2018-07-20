(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/a-max.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_20[0:0]| ( Int) Bool)
(declare-fun |array_max[0:4][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |array_max[0:2][0:1][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |array_max[0:2][0:0]| ( Int  Int  Int) Bool)
(declare-fun |array_max[0:3]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_20[0:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)) (=> (and (|array_max[0:4][0:0]| x2 0 (- 1) x3) (and (>= x2 1) (<= (+ 1 x3) x2))) (|fail_20[0:0]| x0))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)(var105 Int)(var106 Int)) (=> (and (|array_max[0:4][0:0]| x2 var105 var106 x3) (and (|array_max[0:3]| x2 x0 x1) (and (|array_max[0:2][0:1][0:0]| x2 x0 x0 var106) (and (= var105 (+ 1 x0)) (and (>= var106 (+ 1 x1)) (<= (+ 1 x0) x2)))))) (|array_max[0:4][0:0]| x2 x0 x1 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|array_max[0:3]| x1 x2 x3) (and (>= x2 x1) (= x0 x3))) (|array_max[0:4][0:0]| x1 x2 x3 x0))))
(assert (forall ((x3 Int)(x0 Int)(x5 Int)(x1 Int)(x2 Int)) (=> (and (|array_max[0:3]| x3 x1 x2) (and (|array_max[0:2][0:1][0:0]| x3 x1 x1 x5) (and (= x0 (+ 1 x1)) (and (>= x5 (+ 1 x2)) (<= (+ 1 x1) x3))))) (|array_max[0:3]| x3 x0 x5))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|array_max[0:2][0:0]| x1 0 x2) (and (= x0 0) (and (= (+ x3 x2) x1) (>= x1 1)))) (|array_max[0:2][0:1][0:0]| x1 x0 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|array_max[0:3]| x1 x2 x3) (and (<= (+ 1 x2) x1) (= x0 x2))) (|array_max[0:2][0:0]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (= x0 (- 1)) (and (= x2 0) (>= x1 1))) (|array_max[0:3]| x1 x2 x0))))
(check-sat)
(get-model)
(exit)
