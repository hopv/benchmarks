(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/map.4.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_10824[65:0]| ( Int) Bool)
(declare-fun |map_without_checking_174[13:7][21:4][51:0]| ( Bool  Int  Int  Int  Bool  Int  Int  Bool  Int  Int  Int  Int) Bool)
(declare-fun |map_without_checking_174[13:7][21:3]| ( Bool  Int  Int  Int  Bool  Int  Int  Bool  Int  Int  Int) Bool)
(declare-fun |map_without_checking_174[13:11]| ( Bool  Int  Int  Int  Bool  Int  Int  Bool  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_10824[65:0]| x0))))
(assert (forall ((x0 Int)(x7 Int)(var38 Bool)(var39 Int)(var40 Int)(x6 Int)(var41 Bool)(var42 Int)(var43 Int)(var35 Bool)(var36 Int)(var37 Int)(var44 Int)(var45 Int)) (=> (and (|map_without_checking_174[13:11]| var38 var39 var40 x6 var41 var42 var43 var35 var36 var37 x7) (and (|map_without_checking_174[13:7][21:4][51:0]| var38 var39 var40 x6 var41 var42 var43 true x6 x7 var44 var45) (<= (+ 1 x7) 0))) (|fail_10824[65:0]| x0))))
(assert (forall ((x6 Bool)(x7 Int)(x8 Int)(x0 Int)(x3 Bool)(x2 Int)(x1 Int)(x9 Bool)(x10 Int)(x11 Int)(x12 Int)(x13 Int)) (=> (and (|map_without_checking_174[13:7][21:3]| x6 x7 x8 0 x6 x7 x8 x9 x10 x11 x12) (and (= x0 0) (and (= x7 0) (and (= x8 0) (and (= x13 (+ 3 x12)) (and (= x2 x7) (and (= x1 x8) (and (not x6) (not x3))))))))) (|map_without_checking_174[13:7][21:4][51:0]| x6 x7 x8 x0 x3 x2 x1 x9 x10 x11 x12 x13))))
(assert (forall ((x9 Bool)(x8 Int)(x7 Int)(x0 Int)(x6 Bool)(x5 Int)(x4 Int)(x11 Bool)(x12 Int)(x13 Int)(x14 Int)(x3 Bool)(x2 Int)(x1 Int)) (=> (and (|map_without_checking_174[13:11]| x9 x8 x7 x0 x6 x5 x4 x3 x2 x1 x13) (and (not (= x13 0)) (and (= x12 x0) x11))) (|map_without_checking_174[13:7][21:3]| x9 x8 x7 x0 x6 x5 x4 x11 x12 x13 x14))))
(assert (forall ((x9 Bool)(x7 Int)(x8 Int)(x0 Int)(x5 Bool)(x3 Int)(x1 Int)(x6 Bool)(x4 Int)(x2 Int)(x11 Int)) (=> (and (= x0 0) (and (= x7 0) (and (= x8 0) (and (>= x11 0) (and (= x3 x7) (and (= x3 x4) (and (= x1 x8) (and (= x1 x2) (and (not x9) (and (not x5) (= x5 x6))))))))))) (|map_without_checking_174[13:11]| x9 x7 x8 x0 x5 x3 x1 x6 x4 x2 x11))))
(check-sat)
(get-model)
(exit)
