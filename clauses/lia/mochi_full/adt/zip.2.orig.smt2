(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/adt/zip.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_43[91:0]| ( Int) Bool)
(declare-fun |zip[55:1][63:1][82:0]| ( Int  Int  Int) Bool)
(declare-fun |make_list[39:1][51:1][67:1][78:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[39:1][51:1][67:0]| ( Int  Int  Int) Bool)
(declare-fun |zip[55:1][63:0]| ( Int  Int) Bool)
(declare-fun |zip[55:2]| ( Int  Int) Bool)
(declare-fun |make_list[39:1][51:0]| ( Int  Int) Bool)
(declare-fun |make_list[42:1][45:0]| ( Int  Int) Bool)
(declare-fun |make_list[42:0]| ( Int) Bool)
(declare-fun |make_list[39:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_43[91:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (and (|zip[55:2]| x2 x3) (and (|zip[55:1][63:1][82:0]| x2 0 x1) (and (>= x2 1) (<= x3 0)))) (|fail_43[91:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|make_list[39:1][51:1][67:1][78:0]| x0 x1 x2 x3) (|make_list[39:1][51:0]| x0 x1)) (|zip[55:1][63:1][82:0]| x1 x2 x3))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(var320 Int)(var322 Int)(var321 Int)) (=> (and (|make_list[39:1][51:1][67:0]| x2 var320 x0) (and (|make_list[42:1][45:0]| var321 var322) (and (|make_list[39:1][51:0]| x2 x3) (and (|make_list[39:0]| x2) (and (= var320 (+ 1 var322)) (and (= x3 (+ 1 var322)) (and (= (+ 1 var321) x2) (and (= x0 0) (and (>= x2 0) (= x1 x2)))))))))) (|make_list[39:1][51:1][67:1][78:0]| x2 x3 x0 x1))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)) (=> (and (|make_list[39:0]| x2) (and (|zip[55:1][63:0]| x0 x1) (|make_list[39:1][51:0]| x2 x0))) (|make_list[39:1][51:1][67:0]| x2 x0 x1))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)) (=> (and (|zip[55:2]| x2 x0) (and (= x3 0) (<= 1 x2))) (|zip[55:1][63:0]| x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)) (=> (and (|make_list[39:1][51:0]| x1 x2) (= x2 x0)) (|zip[55:2]| x2 x0))))
(assert (forall ((x0 Int)(x1 Int)(var325 Int)(var324 Int)) (=> (and (|make_list[39:0]| x0) (and (|make_list[42:1][45:0]| var324 var325) (and (= x1 (+ 1 var325)) (and (>= x0 0) (= (+ 1 var324) x0))))) (|make_list[39:1][51:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|make_list[42:0]| x1) (and (= x0 0) (<= (+ 1 x1) 0))) (|make_list[42:1][45:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|make_list[39:0]| x1) (and (= (+ 1 x0) x1) (>= x1 0))) (|make_list[42:0]| x0))))
(assert (forall ((x0 Int)) (|make_list[39:0]| x0)))
(check-sat)
(get-model)
(exit)
