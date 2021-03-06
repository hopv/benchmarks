(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/adt/fold_left.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_28[630:0]| ( Int) Bool)
(declare-fun |fold_left[419:4][625:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[476:4][615:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[602:4][605:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[602:2]| ( Int  Int) Bool)
(declare-fun |fold_left[476:0][566:2][592:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:0][576:2][582:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:0][576:1]| ( Int  Int) Bool)
(declare-fun |fold_left[476:0][566:1]| ( Int  Int) Bool)
(declare-fun |fold_left[476:3][484:1][552:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |fold_left[419:3][498:1][538:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[394:1][415:1][502:1][534:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[397:1][409:1][513:1][524:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[397:1][409:1][513:0]| ( Int  Int  Int) Bool)
(declare-fun |make_list[394:1][415:1][502:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:3][498:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[476:3][484:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[476:2]| ( Int  Int) Bool)
(declare-fun |fold_left[419:0][460:2][466:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:0][460:1]| ( Int  Int) Bool)
(declare-fun |fold_left[419:3][427:1][446:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[394:1][415:1][431:1][442:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[394:1][415:1][431:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:3][427:0]| ( Int  Int  Int) Bool)
(declare-fun |fold_left[419:2]| ( Int  Int) Bool)
(declare-fun |make_list[394:1][415:0]| ( Int  Int) Bool)
(declare-fun |make_list[397:1][409:0]| ( Int  Int) Bool)
(declare-fun |make_list[400:1][403:0]| ( Int  Int) Bool)
(declare-fun |make_list[400:0]| ( Int) Bool)
(declare-fun |make_list[397:0]| ( Int) Bool)
(declare-fun |make_list[394:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_28[630:0]| x0))))
(assert (forall ((x0 Int)(x4 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (and (|fold_left[419:4][625:0]| x2 x3 x4) (and (|make_list[394:1][415:0]| x1 x3) (<= (+ 1 x4) x2))) (|fail_28[630:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var668 Int)(var670 Int)(var669 Int)) (=> (and (|fold_left[476:4][615:0]| var670 var668 x3) (and (|fold_left[419:3][427:1][446:0]| x1 x2 0 var669) (and (|fold_left[419:2]| x1 x2) (and (|fold_left[419:0][460:2][466:0]| x1 var669 var670) (and (<= 1 x2) (= (+ 1 var668) x2)))))) (|fold_left[419:4][625:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var671 Int)(var673 Int)(var672 Int)) (=> (and (|fold_left[602:4][605:0]| var673 var671 x3) (and (|fold_left[476:3][484:1][552:0]| x1 x2 0 var672) (and (|fold_left[476:2]| x1 x2) (and (|fold_left[476:0][566:2][592:0]| x1 var672 var673) (and (<= 1 x2) (= (+ 1 var671) x2)))))) (|fold_left[476:4][615:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|fold_left[602:2]| x1 x2) (and (<= x2 0) (= x0 x1))) (|fold_left[602:4][605:0]| x1 x2 x0))))
(assert (forall ((x4 Int)(x2 Int)(x3 Int)(x0 Int)(x1 Int)) (=> (and (|fold_left[476:3][484:1][552:0]| x0 x3 0 x1) (and (|fold_left[476:2]| x0 x3) (and (|fold_left[476:0][566:2][592:0]| x0 x1 x4) (and (= (+ 1 x2) x3) (>= x3 1))))) (|fold_left[602:2]| x4 x2))))
(assert (forall ((x5 Int)(x6 Int)(x7 Int)(x4 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|fold_left[419:0][460:2][466:0]| x1 x2 x0) (and (|fold_left[419:3][427:1][446:0]| x1 x4 0 x2) (and (|fold_left[419:2]| x1 x4) (and (|fold_left[419:0][576:2][582:0]| x5 x6 x7) (>= x4 1))))) (|fold_left[476:0][566:2][592:0]| x5 x6 x7))))
(assert (forall ((x3 Int)(x4 Int)(x5 Int)(x0 Int)(x2 Int)) (=> (and (|make_list[394:1][415:0]| x0 x2) (and (|fold_left[419:0][576:1]| x3 x4) (= x5 (+ x3 x4)))) (|fold_left[419:0][576:2][582:0]| x3 x4 x5))))
(assert (forall ((x3 Int)(x4 Int)(var676 Int)(var677 Int)(var678 Int)(var679 Int)) (=> (and (|fold_left[419:3][427:1][446:0]| var677 var676 0 var678) (and (|fold_left[419:2]| var677 var676) (and (|fold_left[419:0][460:2][466:0]| var677 var678 var679) (and (|fold_left[476:0][566:1]| x3 x4) (<= 1 var676))))) (|fold_left[419:0][576:1]| x3 x4))))
(assert (forall ((x3 Int)(x4 Int)(var680 Int)) (=> (and (|fold_left[476:3][484:1][552:0]| x3 var680 0 x4) (and (|fold_left[476:2]| x3 var680) (<= 1 var680))) (|fold_left[476:0][566:1]| x3 x4))))
(assert (forall ((x5 Int)(x6 Int)(x3 Int)(x4 Int)(var681 Int)(x2 Int)(var683 Int)(var682 Int)(x0 Int)(x1 Int)) (=> (and (|fold_left[476:3][484:0]| var682 var681 x3) (and (|fold_left[419:0][460:2][466:0]| x0 x1 var682) (and (|fold_left[419:3][498:1][538:0]| x0 x2 var683 x4) (and (|fold_left[419:3][427:1][446:0]| x0 x2 0 x1) (and (|fold_left[419:2]| x0 x2) (and (|fold_left[476:2]| x5 x6) (and (|fold_left[419:0][460:2][466:0]| x0 x1 x5) (and (= (+ 1 var681) x2) (and (= (+ 1 x6) x2) (and (>= x2 1) (= var683 (+ 1 x3)))))))))))) (|fold_left[476:3][484:1][552:0]| x5 x6 x3 x4))))
(assert (forall ((x3 Int)(x4 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|fold_left[419:2]| x3 x4) (and (|make_list[394:1][415:1][502:1][534:0]| x0 x4 x1 x2) (|make_list[394:1][415:0]| x0 x4))) (|fold_left[419:3][498:1][538:0]| x3 x4 x1 x2))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(var686 Int)(var688 Int)(var687 Int)(var689 Int)) (=> (and (|make_list[394:1][415:1][502:0]| x2 var686 x0) (and (|make_list[397:1][409:0]| var687 var688) (and (|make_list[397:1][409:1][513:1][524:0]| var687 var688 var689 x1) (and (|make_list[394:1][415:0]| x2 x3) (and (|make_list[394:0]| x2) (and (= var686 (+ 1 var688)) (and (= x3 (+ 1 var688)) (and (= (+ 1 var687) x2) (and (= (+ 1 var689) x0) (and (not (= x0 0)) (>= x2 0))))))))))) (|make_list[394:1][415:1][502:1][534:0]| x2 x3 x0 x1))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(var692 Int)(var694 Int)(var693 Int)) (=> (and (|make_list[397:1][409:1][513:0]| x2 var692 x0) (and (|make_list[400:1][403:0]| var693 var694) (and (|make_list[397:1][409:0]| x2 x3) (and (|make_list[397:0]| x2) (and (= var692 (+ 1 var694)) (and (= x3 (+ 1 var694)) (and (= (+ 1 var693) x2) (and (= x0 0) (and (>= x2 0) (= x1 x2)))))))))) (|make_list[397:1][409:1][513:1][524:0]| x2 x3 x0 x1))))
(assert (forall ((x3 Int)(x1 Int)(x2 Int)(x0 Int)(var696 Int)(var695 Int)(var697 Int)) (=> (and (|make_list[397:0]| x3) (and (|make_list[394:1][415:1][502:0]| x0 var695 var696) (and (|make_list[397:1][409:0]| var697 x1) (and (|make_list[394:0]| x0) (and (= (+ 1 x3) x0) (and (= (+ 1 x2) var696) (and (not (= var696 0)) (and (= var695 (+ 1 x1)) (and (= (+ 1 var697) x0) (>= x0 0)))))))))) (|make_list[397:1][409:1][513:0]| x3 x1 x2))))
(assert (forall ((x3 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|make_list[394:0]| x3) (and (|fold_left[419:3][498:0]| x0 x1 x2) (|make_list[394:1][415:0]| x3 x1))) (|make_list[394:1][415:1][502:0]| x3 x1 x2))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var698 Int)(var699 Int)(var701 Int)(var700 Int)) (=> (and (|fold_left[476:3][484:0]| var701 var698 var699) (and (|fold_left[419:3][427:1][446:0]| x1 x2 0 var700) (and (|fold_left[419:2]| x1 x2) (and (|fold_left[419:0][460:2][466:0]| x1 var700 var701) (and (<= 1 x2) (and (= (+ 1 var698) x2) (= x3 (+ 1 var699)))))))) (|fold_left[419:3][498:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)) (=> (and (|fold_left[476:2]| x1 x2) (and (= x3 0) (<= 1 x2))) (|fold_left[476:3][484:0]| x1 x2 x3))))
(assert (forall ((x4 Int)(x2 Int)(x3 Int)(x0 Int)(x1 Int)) (=> (and (|fold_left[419:3][427:1][446:0]| x0 x3 0 x1) (and (|fold_left[419:2]| x0 x3) (and (|fold_left[419:0][460:2][466:0]| x0 x1 x4) (and (= (+ 1 x2) x3) (>= x3 1))))) (|fold_left[476:2]| x4 x2))))
(assert (forall ((x3 Int)(x4 Int)(x5 Int)(x0 Int)(x2 Int)) (=> (and (|make_list[394:1][415:0]| x0 x2) (and (|fold_left[419:0][460:1]| x3 x4) (= x5 (+ x3 x4)))) (|fold_left[419:0][460:2][466:0]| x3 x4 x5))))
(assert (forall ((x3 Int)(x4 Int)(var704 Int)) (=> (and (|fold_left[419:3][427:1][446:0]| x3 var704 0 x4) (and (|fold_left[419:2]| x3 var704) (<= 1 var704))) (|fold_left[419:0][460:1]| x3 x4))))
(assert (forall ((x3 Int)(x4 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|fold_left[419:2]| x3 x4) (and (|make_list[394:1][415:1][431:1][442:0]| x0 x4 x1 x2) (|make_list[394:1][415:0]| x0 x4))) (|fold_left[419:3][427:1][446:0]| x3 x4 x1 x2))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(var707 Int)(var709 Int)(var708 Int)) (=> (and (|make_list[394:1][415:1][431:0]| x2 var707 x0) (and (|make_list[397:1][409:0]| var708 var709) (and (|make_list[394:1][415:0]| x2 x3) (and (|make_list[394:0]| x2) (and (= var707 (+ 1 var709)) (and (= x3 (+ 1 var709)) (and (= (+ 1 var708) x2) (and (= x0 0) (and (>= x2 0) (= x1 x2)))))))))) (|make_list[394:1][415:1][431:1][442:0]| x2 x3 x0 x1))))
(assert (forall ((x3 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|make_list[394:0]| x3) (and (|fold_left[419:3][427:0]| x0 x1 x2) (|make_list[394:1][415:0]| x3 x1))) (|make_list[394:1][415:1][431:0]| x3 x1 x2))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)) (=> (and (|fold_left[419:2]| x1 x2) (and (= x3 0) (<= 1 x2))) (|fold_left[419:3][427:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (|make_list[394:1][415:0]| x0 x2) (|fold_left[419:2]| x1 x2))))
(assert (forall ((x0 Int)(x1 Int)(var711 Int)(var710 Int)) (=> (and (|make_list[394:0]| x0) (and (|make_list[397:1][409:0]| var710 var711) (and (= x1 (+ 1 var711)) (and (>= x0 0) (= (+ 1 var710) x0))))) (|make_list[394:1][415:0]| x0 x1))))
(assert (forall ((x0 Int)(x1 Int)(var713 Int)(var712 Int)) (=> (and (|make_list[397:0]| x0) (and (|make_list[400:1][403:0]| var712 var713) (and (= x1 (+ 1 var713)) (and (>= x0 0) (= (+ 1 var712) x0))))) (|make_list[397:1][409:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|make_list[400:0]| x1) (and (= x0 0) (<= (+ 1 x1) 0))) (|make_list[400:1][403:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|make_list[397:0]| x1) (and (= (+ 1 x0) x1) (>= x1 0))) (|make_list[400:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|make_list[394:0]| x1) (and (= (+ 1 x0) x1) (>= x1 0))) (|make_list[397:0]| x0))))
(assert (forall ((x0 Int)) (|make_list[394:0]| x0)))
(check-sat)
(get-model)
(exit)
