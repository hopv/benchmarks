(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/esop2017/various.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_33[594:0]| ( Int) Bool)
(declare-fun |sum[577:2][589:0]| ( Int  Int  Int) Bool)
(declare-fun |sum[580:2][583:0]| ( Int  Int  Int) Bool)
(declare-fun |sum[580:1]| ( Int  Int) Bool)
(declare-fun |sum[577:1]| ( Int  Int) Bool)
(declare-fun |main_20[575:0]| ( Int) Bool)
(declare-fun |mult[540:3][570:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[543:3][564:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[546:3][558:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[549:3][552:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[549:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[546:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[543:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[540:2]| ( Int  Int  Int) Bool)
(declare-fun |mc91[524:2][527:0]| ( Int  Int  Int) Bool)
(declare-fun |mc91[524:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_33[594:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|main_20[575:0]| x1) (and (|sum[577:2][589:0]| x1 x1 x2) (>= x1 (+ 1 x2)))) (|fail_33[594:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(var754 Int)(var753 Int)) (=> (and (|sum[577:1]| x1 x0) (and (|sum[580:2][583:0]| x1 var753 var754) (and (= x2 (+ x0 var754)) (and (>= x0 1) (= (+ 1 var753) x0))))) (|sum[577:2][589:0]| x1 x0 x2))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|sum[580:1]| x1 x2) (and (= x0 0) (<= x2 0))) (|sum[580:2][583:0]| x1 x2 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)) (=> (and (|sum[577:1]| x1 x2) (and (= (+ 1 x0) x2) (>= x2 1))) (|sum[580:1]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|main_20[575:0]| x1) (= x1 x0)) (|sum[577:1]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|mult[540:3][570:0]| x0 x0 x0 x1) (and (|mc91[524:2][527:0]| x0 x0 91) (and (<= x0 x1) (<= x0 101)))) (|main_20[575:0]| x0))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var756 Int)(var755 Int)) (=> (and (|mult[540:2]| x2 x1 x0) (and (|mult[543:3][564:0]| x2 x1 var755 var756) (and (= x3 (+ x1 var756)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var755) x0)))))) (|mult[540:3][570:0]| x2 x1 x0 x3))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var758 Int)(var757 Int)) (=> (and (|mult[543:2]| x2 x1 x0) (and (|mult[546:3][558:0]| x2 x1 var757 var758) (and (= x3 (+ x1 var758)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var757) x0)))))) (|mult[543:3][564:0]| x2 x1 x0 x3))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var760 Int)(var759 Int)) (=> (and (|mult[546:2]| x2 x1 x0) (and (|mult[549:3][552:0]| x2 x1 var759 var760) (and (= x3 (+ x1 var760)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var759) x0)))))) (|mult[546:3][558:0]| x2 x1 x0 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|mult[549:2]| x1 x2 x3) (and (= x0 0) (or (<= x2 0) (<= x3 0)))) (|mult[549:3][552:0]| x1 x2 x3 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[546:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[549:2]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[543:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[546:2]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[540:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[543:2]| x1 x2 x0))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)) (=> (and (|mc91[524:2][527:0]| x2 x2 91) (and (<= x2 101) (and (= x0 x2) (= x0 x1)))) (|mult[540:2]| x2 x0 x1))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|mc91[524:1]| x1 x2) (and (= (+ 10 x0) x2) (>= x2 101))) (|mc91[524:2][527:0]| x1 x2 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (<= x1 101) (= x1 x0)) (|mc91[524:1]| x1 x0))))
(check-sat)
(get-model)
(exit)
