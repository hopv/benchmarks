(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/adt/length.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_23[0:0]| ( Int) Bool)
(declare-fun |length[0:2][0:0]| ( Int  Int) Bool)
(declare-fun |length[0:0]| ( Int) Bool)
(declare-fun |make_list[0:1][0:0]| ( Int  Int) Bool)
(declare-fun |make_list[0:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_23[0:0]| x0))))
(assert (forall ((x0 Int)(x3 Int)(x1 Int)(x2 Int)) (=> (and (|length[0:2][0:0]| x2 x3) (and (|make_list[0:1][0:0]| x1 x2) (not (= x3 x1)))) (|fail_23[0:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(var96 Int)(var97 Int)) (=> (and (|length[0:2][0:0]| var96 var97) (and (|length[0:0]| x1) (and (<= 1 x1) (and (= (+ 1 var96) x1) (= x2 (+ 1 var97)))))) (|length[0:2][0:0]| x1 x2))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[0:0]| x1) (and (= x0 0) (<= x1 0))) (|length[0:2][0:0]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[0:0]| x0) (and (= (+ 1 x1) x0) (>= x0 1))) (|length[0:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (|make_list[0:1][0:0]| x0 x1) (|length[0:0]| x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|make_list[0:0]| x1) (and (= x0 0) (= x1 0))) (|make_list[0:1][0:0]| x1 x0))))
(assert (forall ((x0 Int)) (|make_list[0:0]| x0)))
(check-sat)
(get-model)
(exit)
