(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/Ackermann.9.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_20621[0:0]| ( Int) Bool)
(declare-fun |ack_without_checking_92[0:8][0:0]| ( Bool  Int  Int  Int  Bool  Int  Int  Int  Int) Bool)
(declare-fun |ack_without_checking_92[0:7]| ( Bool  Int  Int  Int  Bool  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_20621[0:0]| x0))))
(assert (forall ((x0 Int)(x7 Int)(var94 Bool)(var95 Int)(var96 Int)(var97 Bool)(var98 Int)(var99 Int)) (=> (and (|ack_without_checking_92[0:7]| var94 var95 var96 x7 var97 var98 var99 0) (<= (+ 1 x7) 0)) (|fail_20621[0:0]| x0))))
(assert (forall ((x3 Bool)(x5 Int)(x6 Int)(x0 Int)(x4 Bool)(x2 Int)(x1 Int)(x13 Int)(var100 Int)(x11 Bool)(x10 Int)(x9 Int)(x8 Bool)(x7 Int)(x12 Int)) (=> (and (|ack_without_checking_92[0:8][0:0]| true x5 x6 x5 true x5 x6 var100 x13) (and (|ack_without_checking_92[0:7]| x11 x10 x9 x5 x8 x7 x12 x6) (and (= (+ 1 x0) x5) (and (= (+ 1 var100) x6) (and (not (= x5 0)) (and (not (= x6 0)) (and (= x6 x1) (and (= x5 x2) (and x3 x4))))))))) (|ack_without_checking_92[0:7]| x3 x5 x6 x0 x4 x2 x1 x13))))
(assert (forall ((x1 Bool)(x2 Int)(x3 Int)(x4 Int)(x5 Bool)(x6 Int)(x7 Int)(x8 Int)(x0 Int)) (=> (and (|ack_without_checking_92[0:7]| x1 x2 x3 x4 x5 x6 x7 x8) (and (= x4 0) (= x0 (+ 1 x8)))) (|ack_without_checking_92[0:8][0:0]| x1 x2 x3 x4 x5 x6 x7 x8 x0))))
(assert (forall ((x5 Bool)(x9 Int)(x13 Int)(x1 Int)(x4 Bool)(x0 Int)(x2 Int)(x3 Int)(x6 Bool)(x7 Int)(x8 Int)(x10 Bool)(x11 Int)(x12 Int)) (=> (and (|ack_without_checking_92[0:7]| x6 x7 x8 x9 x10 x11 x12 x13) (and (= (+ 1 x3) x13) (and (not (= x9 0)) (and (= x13 x2) (and (= x0 x9) (and (= x0 x1) (and (not (= x13 0)) (and x4 x5)))))))) (|ack_without_checking_92[0:7]| x5 x9 x13 x1 x4 x0 x2 x3))))
(assert (forall ((x6 Bool)(x4 Int)(x5 Int)(x3 Int)(x2 Bool)(x1 Int)(x0 Int)(x8 Int)) (=> (and (= x4 0) (and (= x5 0) (and (>= x8 1) (and (>= x3 1) (and (= x5 x0) (and (= x4 x1) (and (not x6) (not x2)))))))) (|ack_without_checking_92[0:7]| x6 x4 x5 x3 x2 x1 x0 x8))))
(check-sat)
(get-model)
(exit)