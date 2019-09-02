(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/esop2017/soli.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |f_159[0:0]| ( Int) Bool)
(declare-fun |solve[0:5][0:0]| ( Int  Int  Int) Bool)
(declare-fun |for_62[0:8][0:0]| ( Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:9][0:0]| ( Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for[0:11][0:0]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for[0:8][0:1][0:3]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:6][0:1][0:3]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_62[0:5][0:1][0:3]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |solve[0:3][0:1][0:3]| ( Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |solve[0:3][0:0]| ( Int  Int  Int) Bool)
(declare-fun |for_62[0:5][0:0]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:6][0:0]| ( Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for[0:8][0:0]| ( Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |solve[0:4][0:0]| ( Int  Int  Bool) Bool)
(declare-fun |for_62[0:7][0:0]| ( Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for[0:7][0:2][0:0]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for[0:7][0:1]| ( Int  Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |dir[0:3][0:1]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |dir[0:2]| ( Int  Int  Int) Bool)
(declare-fun |for[0:9]| ( Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:5][0:2][0:0]| ( Int  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_62[0:4][0:2][0:0]| ( Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |solve[0:2][0:2][0:0]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |board[0:3][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |board[0:2]| ( Int  Int  Int) Bool)
(declare-fun |solve[0:2][0:1]| ( Int  Int  Int  Int) Bool)
(declare-fun |for_62[0:4][0:1]| ( Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:5][0:1]| ( Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_57[0:7]| ( Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |for_62[0:6]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |solve[0:1]| ( Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|f_159[0:0]| x0))))
(assert (forall ((x0 Int)(var741 Int)) (=> (|solve[0:5][0:0]| var741 0 x0) (|f_159[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var742 Int)(var743 Int)) (=> (and (|for_62[0:8][0:0]| x0 x1 var742 var743 1 x2) (and (|solve[0:1]| x0 x1) (and (not (= x2 0)) (not (= x1 31))))) (|solve[0:5][0:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x1 Int)(x5 Int)) (=> (and (|for_57[0:9][0:0]| x0 x1 x2 x3 x4 1 x5) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:8][0:0]| x0 x2 x3 x4 x1 x5))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x2 Int)(x6 Int)) (=> (and (|for[0:11][0:0]| x0 x1 x2 x3 x4 x5 2 0 x6) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:9][0:0]| x0 x1 x3 x4 x5 x2 x6))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x3 Int)(x8 Int)(var748 Int)(var762 Int)(var749 Int)(var761 Int)(var751 Int)(var752 Int)(var756 Int)(var755 Int)(var757 Int)(var758 Int)(var759 Int)(var744 Int)(var745 Int)(var746 Int)(var747 Int)(var750 Int)(var753 Int)(var754 Int)(var760 Int)(var763 Int)) (=> (and (|for[0:8][0:1][0:3]| x0 x1 x2 x4 x5 x6 x7 x4 var744 var745 var746 var747) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var748 var749 var750) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var751 var752 var753) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var754) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var755 var756 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var757 var758 2) (and (|solve[0:4][0:0]| x0 var759 true) (and (|dir[0:3][0:1]| x0 x4 x3 var760 var761) (and (|dir[0:3][0:1]| x0 x4 x3 var762 var763) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= x8 0) (and (= var748 (+ x1 (* 2 var762))) (and (= var749 (+ x2 (* 2 var761))) (and (= var751 (+ x1 var762)) (and (= var752 (+ x2 var761)) (and (= var756 (+ x2 (* 2 var761))) (and (= var755 (+ x1 (* 2 var762))) (and (= var757 (+ x1 var762)) (and (= var758 (+ x2 var761)) (and (= var759 (+ 1 x4)) (<= x3 3))))))))))))))))))))) (|for[0:11][0:0]| x0 x1 x2 x4 x5 x6 x7 x3 x8))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)(x10 Int)(x11 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:6][0:1][0:3]| x1 x2 x4 x5 x6 x7 x8 x9 x10 x11) (and (= x0 2) (<= x3 7))))) (|for[0:8][0:1][0:3]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9 x10 x11))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_62[0:5][0:1][0:3]| x0 x2 x3 x4 x5 x6 x7 x8 x9) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:6][0:1][0:3]| x0 x1 x2 x3 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)) (=> (and (|solve[0:3][0:1][0:3]| x0 x1 x4 x5 x6 x7 x8) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:5][0:1][0:3]| x0 x1 x2 x3 x4 x5 x6 x7 x8))))
(assert (forall ((x6 Int)(x7 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(var765 Int)) (=> (and (|solve[0:1]| x6 x7) (and (|solve[0:3][0:0]| var765 0 x1) (and (= x7 0) (and (= x2 0) (and (= x3 0) (and (= x4 0) (= x5 0))))))) (|solve[0:3][0:1][0:3]| x6 x7 x1 x2 x3 x4 x5))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var766 Int)(var767 Int)) (=> (and (|for_62[0:5][0:0]| x0 x1 var766 var767 x2) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:3][0:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x1 Int)) (=> (and (|for_57[0:6][0:0]| x0 x1 x2 x3 x4 x5) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:5][0:0]| x0 x2 x3 x4 x5))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x2 Int)) (=> (and (|for[0:8][0:0]| x0 x1 x2 x3 x4 x5 2 x6) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:6][0:0]| x0 x1 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(var768 Int)(var782 Int)(var769 Int)(var781 Int)(var771 Int)(var772 Int)(var776 Int)(var775 Int)(var777 Int)(var778 Int)(var779 Int)(x3 Int)(var770 Int)(var773 Int)(var774 Int)(var780 Int)(var783 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var768 var769 var770) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var771 var772 var773) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var774) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var775 var776 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var777 var778 2) (and (|solve[0:4][0:0]| x0 var779 true) (and (|dir[0:3][0:1]| x0 x4 x3 var780 var781) (and (|dir[0:3][0:1]| x0 x4 x3 var782 var783) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var768 (+ x1 (* 2 var782))) (and (= var769 (+ x2 (* 2 var781))) (and (= var771 (+ x1 var782)) (and (= var772 (+ x2 var781)) (and (= var776 (+ x2 (* 2 var781))) (and (= var775 (+ x1 (* 2 var782))) (and (= var777 (+ x1 var782)) (and (= var778 (+ x2 var781)) (and (= var779 (+ 1 x4)) (and (<= x3 3) (= x8 x4)))))))))))))))))))) (|for[0:8][0:0]| x0 x1 x2 x4 x5 x6 x7 x8))))
(assert (forall ((x0 Int)(x1 Int)(x2 Bool)(var784 Int)(var785 Int)(var786 Int)) (=> (and (|for_62[0:7][0:0]| x0 x1 var784 var785 1 var786) (and (|solve[0:1]| x0 x1) (and (not (= x1 31)) (not x2)))) (|solve[0:4][0:0]| x0 x1 x2))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x0 Int)) (=> (and (|for_62[0:6]| x1 x2 x3 x4 x5) (>= x5 8)) (|for_62[0:7][0:0]| x1 x2 x3 x4 x5 x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x0 Int)) (=> (and (|solve[0:1]| x1 x2) (and (= x0 1) (not (= x2 31)))) (|for_62[0:6]| x1 x2 x3 x4 x0))))
(assert (forall ((x1 Int)(x0 Int)(x5 Int)(var787 Int)(x2 Int)(x7 Int)(var788 Int)(x3 Int)(x8 Int)(var789 Int)(var790 Int)(var792 Int)(var791 Int)(var793 Int)(var794 Int)(x4 Int)(x12 Int)(x13 Int)(x16 Int)(x17 Int)(x10 Int)(x11 Int)(x6 Int)(x9 Int)) (=> (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var787 var788 x17) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var789 var790 x10) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 x2 x3 x11) (and (|dir[0:3][0:1]| x1 x5 x4 x6 x8) (and (|dir[0:3][0:1]| x1 x5 x4 x7 x9) (and (|for[0:9]| x1 x2 x3 x5 x12 x13 x16 x4) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var791 var792 1) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var793 var794 2) (and (= x0 (+ 1 x5)) (and (= var787 (+ x2 (* 2 x7))) (and (= var788 (+ x3 (* 2 x8))) (and (= var789 (+ x2 x7)) (and (= var790 (+ x3 x8)) (and (= var792 (+ x3 (* 2 x8))) (and (= var791 (+ x2 (* 2 x7))) (and (= var793 (+ x2 x7)) (and (= var794 (+ x3 x8)) (<= x4 3)))))))))))))))))) (|solve[0:1]| x1 x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var796 Int)(var797 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var796 var797 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var798 Int)(var808 Int)(var799 Int)(var807 Int)(var803 Int)(var802 Int)(var804 Int)(var805 Int)(x3 Int)(var800 Int)(var801 Int)(var806 Int)(var809 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var798 var799 var800) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var801) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var802 var803 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var804 var805 2) (and (|dir[0:3][0:1]| x0 x4 x3 var806 var807) (and (|dir[0:3][0:1]| x0 x4 x3 var808 var809) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var798 (+ x1 var808)) (and (= var799 (+ x2 var807)) (and (= var803 (+ x2 (* 2 var807))) (and (= var802 (+ x1 (* 2 var808))) (and (= var804 (+ x1 var808)) (and (= var805 (+ x2 var807)) (and (= x8 (+ x1 (* 2 var808))) (and (= x9 (+ x2 (* 2 var807))) (<= x3 3)))))))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var811 Int)(var812 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var811 var812 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var815 Int)(var819 Int)(var814 Int)(var820 Int)(var816 Int)(var817 Int)(x3 Int)(var813 Int)(var818 Int)(var821 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var813) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var814 var815 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var816 var817 2) (and (|dir[0:3][0:1]| x0 x4 x3 var818 var819) (and (|dir[0:3][0:1]| x0 x4 x3 var820 var821) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var815 (+ x2 (* 2 var819))) (and (= var814 (+ x1 (* 2 var820))) (and (= var816 (+ x1 var820)) (and (= var817 (+ x2 var819)) (and (= x8 (+ x1 var820)) (and (= x9 (+ x2 var819)) (<= x3 3))))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var823 Int)(var824 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var823 var824 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var825 Int)(var831 Int)(var826 Int)(var830 Int)(var828 Int)(var827 Int)(x3 Int)(var829 Int)(var832 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var825 var826 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var827 var828 2) (and (|dir[0:3][0:1]| x0 x4 x3 var829 var830) (and (|dir[0:3][0:1]| x0 x4 x3 var831 var832) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var825 (+ x1 (* 2 var831))) (and (= var826 (+ x2 (* 2 var830))) (and (= var828 (+ x2 var830)) (and (= var827 (+ x1 var831)) (and (<= x3 3) (and (= x8 x1) (= x9 x2)))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var834 Int)(var835 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var834 var835 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var837 Int)(var839 Int)(var836 Int)(var840 Int)(x3 Int)(var838 Int)(var841 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var836 var837 2) (and (|dir[0:3][0:1]| x0 x4 x3 var838 var839) (and (|dir[0:3][0:1]| x0 x4 x3 var840 var841) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var837 (+ x2 var839)) (and (= var836 (+ x1 var840)) (and (<= x3 3) (and (= x9 (+ x2 (* 2 var839))) (= x8 (+ x1 (* 2 var840))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var843 Int)(var844 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var843 var844 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var847 Int)(var846 Int)(x3 Int)(var845 Int)(var848 Int)) (=> (and (|dir[0:3][0:1]| x0 x4 x3 var845 var846) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (|dir[0:3][0:1]| x0 x4 x3 var847 var848) (and (= x8 (+ x1 var847)) (and (= x9 (+ x2 var846)) (<= x3 3)))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)) (=> (and (|dir[0:2]| x2 x3 x4) (and (= x0 0) (and (= x1 1) (= x4 0)))) (|dir[0:3][0:1]| x2 x3 x4 x0 x1))))
(assert (forall ((x0 Int)(x4 Int)(x3 Int)(x1 Int)(x2 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (|dir[0:3][0:1]| x0 x4 x3 x8 x9) (<= x3 3))) (|dir[0:2]| x0 x4 x3))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)) (=> (and (|dir[0:2]| x2 x3 x4) (and (= x0 0) (and (= x1 1) (= x4 0)))) (|dir[0:3][0:1]| x2 x3 x4 x0 x1))))
(assert (forall ((x0 Int)(x3 Int)(x7 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|for[0:9]| x0 x1 x2 x3 x4 x5 x6 x7) (<= x7 3)) (|dir[0:2]| x0 x3 x7))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x0 Int)) (=> (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x7) (and (= x0 0) (and (= x7 2) (<= x3 7))))) (|for[0:9]| x1 x2 x3 x4 x5 x6 x7 x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x3 0) (and (= x0 0) (= x1 8)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var849 Int)(var850 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var849 var850 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x0 Int)(x6 Int)) (=> (and (|for_57[0:7]| x1 x2 x3 x4 x5 x6) (and (<= x6 7) (= x0 x2))) (|for_57[0:5][0:1]| x1 x2 x3 x4 x5 x0 x6))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x0 Int)) (=> (and (|for_62[0:6]| x1 x3 x4 x5 x2) (and (= x0 1) (<= x2 7))) (|for_57[0:7]| x1 x2 x3 x4 x5 x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x0 Int)) (=> (and (|solve[0:1]| x1 x2) (and (= x0 1) (not (= x2 31)))) (|for_62[0:6]| x1 x2 x3 x4 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (= x1 0) (|solve[0:1]| x0 x1))))
(check-sat)
(get-model)
(exit)