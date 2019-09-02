(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/kmp.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_48[0:0]| ( Int) Bool)
(declare-fun |loopShift[0:2][0:1][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_array[0:3][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_array[0:2]| ( Int  Int  Int) Bool)
(declare-fun |loopShift[0:2][0:0]| ( Int  Int  Int) Bool)
(declare-fun |loopShift[0:4]| ( Int  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_48[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)) (=> (and (|make_array[0:2]| x2 x3 x1) (or (>= 0 (+ 1 x1)) (>= x1 x2))) (|fail_48[0:0]| x0))))
(assert (forall ((x3 Int)(x1 Int)(x4 Int)(x2 Int)) (=> (and (|loopShift[0:2][0:0]| x3 x2 x4) (and (>= x2 1) (>= x3 1))) (|make_array[0:2]| x3 x1 x4))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)(var383 Int)) (=> (and (|loopShift[0:4]| x2 x3 x0 x1) (and (|loopShift[0:2][0:1][0:0]| x2 x3 x1 var383) (and (= x4 (+ 1 x0)) (not (= x1 x2))))) (|loopShift[0:2][0:0]| x2 x3 x4))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)(var384 Int)) (=> (and (|make_array[0:3][0:0]| x1 var384 x2 x3) (and (>= x0 1) (>= x1 1))) (|loopShift[0:2][0:1][0:0]| x1 x0 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|make_array[0:2]| x1 x2 x0) (and (<= 0 x0) (and (<= (+ 1 x0) x1) (= x3 x2)))) (|make_array[0:3][0:0]| x1 x2 x0 x3))))
(assert (forall ((x3 Int)(x1 Int)(x4 Int)(x2 Int)) (=> (and (|loopShift[0:2][0:0]| x3 x2 x4) (and (>= x2 1) (>= x3 1))) (|make_array[0:2]| x3 x1 x4))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x2 Int)) (=> (and (|loopShift[0:4]| x0 x1 x2 x3) (not (= x3 x0))) (|loopShift[0:2][0:0]| x0 x1 x3))))
(assert (forall ((x3 Int)(x2 Int)(x0 Int)(x1 Int)) (=> (and (= x0 (- 1)) (and (= x1 1) (and (>= x2 1) (>= x3 1)))) (|loopShift[0:4]| x3 x2 x0 x1))))
(check-sat)
(get-model)
(exit)