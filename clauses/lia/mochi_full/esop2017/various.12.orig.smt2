(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/esop2017/various.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_33[692:0]| ( Int) Bool)
(declare-fun |sum[675:2][687:0]| ( Int  Int  Int) Bool)
(declare-fun |sum[678:2][681:0]| ( Int  Int  Int) Bool)
(declare-fun |sum[678:1]| ( Int  Int) Bool)
(declare-fun |sum[675:1]| ( Int  Int) Bool)
(declare-fun |main_20[673:0]| ( Int) Bool)
(declare-fun |mult[629:3][668:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[632:3][662:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[635:3][656:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[638:3][650:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[641:3][644:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |mult[641:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[638:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[635:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[632:2]| ( Int  Int  Int) Bool)
(declare-fun |mult[629:2]| ( Int  Int  Int) Bool)
(declare-fun |mc91[613:2][616:0]| ( Int  Int  Int) Bool)
(declare-fun |mc91[613:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_33[692:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|main_20[673:0]| x1) (and (|sum[675:2][687:0]| x1 x1 x2) (>= x1 (+ 1 x2)))) (|fail_33[692:0]| x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(var854 Int)(var853 Int)) (=> (and (|sum[675:1]| x1 x0) (and (|sum[678:2][681:0]| x1 var853 var854) (and (= x2 (+ x0 var854)) (and (>= x0 1) (= (+ 1 var853) x0))))) (|sum[675:2][687:0]| x1 x0 x2))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|sum[678:1]| x1 x2) (and (= x0 0) (<= x2 0))) (|sum[678:2][681:0]| x1 x2 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)) (=> (and (|sum[675:1]| x1 x2) (and (= (+ 1 x0) x2) (>= x2 1))) (|sum[678:1]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|main_20[673:0]| x1) (= x1 x0)) (|sum[675:1]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|mult[629:3][668:0]| x0 x0 x0 x1) (and (|mc91[613:2][616:0]| x0 x0 91) (and (<= x0 x1) (<= x0 101)))) (|main_20[673:0]| x0))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var856 Int)(var855 Int)) (=> (and (|mult[629:2]| x2 x1 x0) (and (|mult[632:3][662:0]| x2 x1 var855 var856) (and (= x3 (+ x1 var856)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var855) x0)))))) (|mult[629:3][668:0]| x2 x1 x0 x3))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var858 Int)(var857 Int)) (=> (and (|mult[632:2]| x2 x1 x0) (and (|mult[635:3][656:0]| x2 x1 var857 var858) (and (= x3 (+ x1 var858)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var857) x0)))))) (|mult[632:3][662:0]| x2 x1 x0 x3))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var860 Int)(var859 Int)) (=> (and (|mult[635:2]| x2 x1 x0) (and (|mult[638:3][650:0]| x2 x1 var859 var860) (and (= x3 (+ x1 var860)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var859) x0)))))) (|mult[635:3][656:0]| x2 x1 x0 x3))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)(x3 Int)(var862 Int)(var861 Int)) (=> (and (|mult[638:2]| x2 x1 x0) (and (|mult[641:3][644:0]| x2 x1 var861 var862) (and (= x3 (+ x1 var862)) (and (>= x1 1) (and (>= x0 1) (= (+ 1 var861) x0)))))) (|mult[638:3][650:0]| x2 x1 x0 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|mult[641:2]| x1 x2 x3) (and (= x0 0) (or (<= x2 0) (<= x3 0)))) (|mult[641:3][644:0]| x1 x2 x3 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[638:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[641:2]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[635:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[638:2]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[632:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[635:2]| x1 x2 x0))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)) (=> (and (|mult[629:2]| x1 x2 x3) (and (= (+ 1 x0) x3) (and (>= x2 1) (>= x3 1)))) (|mult[632:2]| x1 x2 x0))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)) (=> (and (|mc91[613:2][616:0]| x2 x2 91) (and (<= x2 101) (and (= x0 x2) (= x0 x1)))) (|mult[629:2]| x2 x0 x1))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|mc91[613:1]| x1 x2) (and (= (+ 10 x0) x2) (>= x2 101))) (|mc91[613:2][616:0]| x1 x2 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (<= x1 101) (= x1 x0)) (|mc91[613:1]| x1 x0))))
(check-sat)
(get-model)
(exit)
