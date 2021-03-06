(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/dotprod.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_22[115:0]| ( Int) Bool)
(declare-fun |sub[110:1]| ( Int  Int) Bool)
(declare-fun |dotprod_aux[107:4]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |sub[92:2][103:0]| ( Int  Int  Int) Bool)
(declare-fun |sub[92:1]| ( Int  Int) Bool)
(declare-fun |sub[77:2][88:0]| ( Int  Int  Int) Bool)
(declare-fun |sub[77:1]| ( Int  Int) Bool)
(declare-fun |dotprod_aux[74:4]| ( Int  Int  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_22[115:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|sub[110:1]| x2 x1) (or (>= 0 (+ 1 x1)) (>= x1 x2))) (|fail_22[115:0]| x0))))
(assert (forall ((x1 Int)(x3 Int)(x0 Int)(x2 Int)(x4 Int)) (=> (and (|dotprod_aux[107:4]| x0 x1 x2 x3 x4) (not (= x3 x0))) (|sub[110:1]| x1 x3))))
(assert (forall ((x3 Int)(x5 Int)(x6 Int)(x0 Int)(x1 Int)(x2 Int)(x4 Int)(x7 Int)(x8 Int)) (=> (and (|sub[92:2][103:0]| x6 x2 x8) (and (|dotprod_aux[74:4]| x3 x5 x6 x2 x4) (and (|sub[77:2][88:0]| x5 x2 x7) (and (= x0 (+ 1 x2)) (and (not (= x2 x3)) (= x1 (+ x4 (* x7 x8)))))))) (|dotprod_aux[107:4]| x3 x5 x6 x0 x1))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)) (=> (and (|sub[92:1]| x1 x0) (and (= x2 0) (and (<= 0 x0) (<= (+ 1 x0) x1)))) (|sub[92:2][103:0]| x1 x0 x2))))
(assert (forall ((x4 Int)(x0 Int)(x1 Int)(x3 Int)(x2 Int)(x5 Int)) (=> (and (|dotprod_aux[74:4]| x1 x3 x4 x0 x2) (and (|sub[77:2][88:0]| x3 x0 x5) (not (= x0 x1)))) (|sub[92:1]| x4 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)) (=> (and (|sub[77:1]| x1 x0) (and (= x2 0) (and (<= 0 x0) (<= (+ 1 x0) x1)))) (|sub[77:2][88:0]| x1 x0 x2))))
(assert (forall ((x1 Int)(x3 Int)(x0 Int)(x2 Int)(x4 Int)) (=> (and (|dotprod_aux[74:4]| x0 x1 x2 x3 x4) (not (= x3 x0))) (|sub[77:1]| x1 x3))))
(assert (forall ((x4 Int)(x2 Int)(x5 Int)(x0 Int)(x1 Int)) (=> (and (= x0 0) (and (= x1 0) (and (<= 0 x2) (and (= x2 x4) (= x2 x5))))) (|dotprod_aux[74:4]| x4 x2 x5 x0 x1))))
(check-sat)
(get-model)
(exit)
