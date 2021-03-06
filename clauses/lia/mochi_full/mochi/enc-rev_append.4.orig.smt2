(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/enc-rev_append.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_20[153:0]| ( Int) Bool)
(declare-fun |rev[131:1][148:0]| ( Int  Int) Bool)
(declare-fun |append[141:2][144:0]| ( Int  Int  Int) Bool)
(declare-fun |append[141:1]| ( Int  Int) Bool)
(declare-fun |rev[134:1][137:0]| ( Int  Int) Bool)
(declare-fun |rev[134:0]| ( Int) Bool)
(declare-fun |rev[131:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_20[153:0]| x0))))
(assert (forall ((x0 Int)(x3 Int)(x1 Int)) (=> (and (|rev[131:1][148:0]| x1 x3) (not (= x3 x1))) (|fail_20[153:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(var171 Int)(var172 Int)) (=> (and (|append[141:2][144:0]| var172 1 x1) (and (|rev[131:0]| x0) (and (|rev[134:1][137:0]| var171 var172) (and (not (= x0 0)) (= (+ 1 var171) x0))))) (|rev[131:1][148:0]| x0 x1))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|append[141:1]| x1 x2) (and (= x1 0) (= x0 x2))) (|append[141:2][144:0]| x1 x2 x0))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(var173 Int)) (=> (and (|rev[131:0]| x1) (and (|rev[134:1][137:0]| var173 x2) (and (= x0 1) (and (not (= x1 0)) (= (+ 1 var173) x1))))) (|append[141:1]| x2 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|rev[134:0]| x1) (and (= x0 0) (= x1 0))) (|rev[134:1][137:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|rev[131:0]| x1) (and (= (+ 1 x0) x1) (not (= x1 0)))) (|rev[134:0]| x0))))
(assert (forall ((x0 Int)) (|rev[131:0]| x0)))
(check-sat)
(get-model)
(exit)
