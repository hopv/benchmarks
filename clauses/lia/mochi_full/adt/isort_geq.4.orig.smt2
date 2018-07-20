(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/adt/isort_geq.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_72[344:0]| ( Int) Bool)
(declare-fun |length[318:2][339:0]| ( Int  Int) Bool)
(declare-fun |length[326:2][329:0]| ( Int  Int) Bool)
(declare-fun |length[326:0]| ( Int) Bool)
(declare-fun |length[318:0]| ( Int) Bool)
(declare-fun |length[293:2][314:0]| ( Int  Int) Bool)
(declare-fun |length[301:2][304:0]| ( Int  Int) Bool)
(declare-fun |length[301:0]| ( Int) Bool)
(declare-fun |length[293:0]| ( Int) Bool)
(declare-fun |insertsort[230:2][289:0]| ( Int  Int) Bool)
(declare-fun |insert[276:3][279:0]| ( Int  Int  Int) Bool)
(declare-fun |insert[276:1]| ( Int  Int) Bool)
(declare-fun |insertsort[269:2][272:0]| ( Int  Int) Bool)
(declare-fun |insertsort[269:0]| ( Int) Bool)
(declare-fun |insertsort[230:1][238:1][261:0]| ( Int  Int  Int) Bool)
(declare-fun |make_list[209:1][226:1][242:1][257:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |make_list[209:1][226:1][242:0]| ( Int  Int  Int) Bool)
(declare-fun |insertsort[230:1][238:0]| ( Int  Int) Bool)
(declare-fun |insertsort[230:0]| ( Int) Bool)
(declare-fun |make_list[209:1][226:0]| ( Int  Int) Bool)
(declare-fun |make_list[212:1][215:0]| ( Int  Int) Bool)
(declare-fun |make_list[212:0]| ( Int) Bool)
(declare-fun |make_list[209:0]| ( Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_72[344:0]| x0))))
(assert (forall ((x0 Int)(x3 Int)(x5 Int)(x4 Int)(x2 Int)(x1 Int)) (=> (and (|length[318:2][339:0]| x4 x5) (and (|length[293:2][314:0]| x2 x3) (and (|insertsort[230:2][289:0]| x4 x2) (and (|make_list[209:1][226:0]| x1 x4) (<= (+ 1 x3) x5))))) (|fail_72[344:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(var1148 Int)(var1149 Int)) (=> (and (|length[326:2][329:0]| var1148 var1149) (and (|length[318:0]| x1) (and (<= 1 x1) (and (= (+ 1 var1148) x1) (= x2 (+ 1 var1149)))))) (|length[318:2][339:0]| x1 x2))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[326:0]| x1) (and (= x0 0) (<= x1 0))) (|length[326:2][329:0]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[318:0]| x0) (and (= (+ 1 x1) x0) (>= x0 1))) (|length[326:0]| x1))))
(assert (forall ((x2 Int)(x1 Int)(x3 Int)(x0 Int)) (=> (and (|length[293:2][314:0]| x1 x3) (and (|insertsort[230:2][289:0]| x2 x1) (|make_list[209:1][226:0]| x0 x2))) (|length[318:0]| x2))))
(assert (forall ((x1 Int)(x2 Int)(var1150 Int)(var1151 Int)) (=> (and (|length[301:2][304:0]| var1150 var1151) (and (|length[293:0]| x1) (and (<= 1 x1) (and (= (+ 1 var1150) x1) (= x2 (+ 1 var1151)))))) (|length[293:2][314:0]| x1 x2))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[301:0]| x1) (and (= x0 0) (<= x1 0))) (|length[301:2][304:0]| x1 x0))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|length[293:0]| x0) (and (= (+ 1 x1) x0) (>= x0 1))) (|length[301:0]| x1))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (|insertsort[230:2][289:0]| x1 x2) (|make_list[209:1][226:0]| x0 x1)) (|length[293:0]| x2))))
(assert (forall ((x1 Int)(x2 Int)(var1152 Int)(var1154 Int)(var1153 Int)) (=> (and (|insert[276:3][279:0]| var1154 var1153 x2) (and (|insertsort[269:2][272:0]| var1152 var1153) (and (|insertsort[230:1][238:1][261:0]| x1 0 var1154) (and (|insertsort[230:0]| x1) (and (<= 1 x1) (= (+ 1 var1152) x1)))))) (|insertsort[230:2][289:0]| x1 x2))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)) (=> (and (|insert[276:1]| x1 x2) (and (= x0 1) (<= x2 0))) (|insert[276:3][279:0]| x1 x2 x0))))
(assert (forall ((x0 Int)(x3 Int)(x1 Int)(x2 Int)) (=> (and (|insertsort[269:2][272:0]| x1 x3) (and (|insertsort[230:1][238:1][261:0]| x2 0 x0) (and (|insertsort[230:0]| x2) (and (= (+ 1 x1) x2) (>= x2 1))))) (|insert[276:1]| x0 x3))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|insertsort[269:0]| x1) (and (= x0 0) (<= x1 0))) (|insertsort[269:2][272:0]| x1 x0))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (|insertsort[230:1][238:1][261:0]| x1 0 x0) (and (|insertsort[230:0]| x1) (and (= (+ 1 x2) x1) (>= x1 1)))) (|insertsort[269:0]| x2))))
(assert (forall ((x3 Int)(x1 Int)(x2 Int)(x0 Int)) (=> (and (|insertsort[230:0]| x3) (and (|make_list[209:1][226:1][242:1][257:0]| x0 x3 x1 x2) (|make_list[209:1][226:0]| x0 x3))) (|insertsort[230:1][238:1][261:0]| x3 x1 x2))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(var1157 Int)(var1159 Int)(var1158 Int)) (=> (and (|make_list[209:1][226:1][242:0]| x2 var1157 x0) (and (|make_list[212:1][215:0]| var1158 var1159) (and (|make_list[209:1][226:0]| x2 x3) (and (|make_list[209:0]| x2) (and (= var1157 (+ 1 var1159)) (and (= x3 (+ 1 var1159)) (and (= (+ 1 var1158) x2) (and (= x0 0) (not (= x2 0)))))))))) (|make_list[209:1][226:1][242:1][257:0]| x2 x3 x0 x1))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)) (=> (and (|make_list[209:0]| x2) (and (|insertsort[230:1][238:0]| x0 x1) (|make_list[209:1][226:0]| x2 x0))) (|make_list[209:1][226:1][242:0]| x2 x0 x1))))
(assert (forall ((x1 Int)(x2 Int)) (=> (and (|insertsort[230:0]| x1) (and (= x2 0) (<= 1 x1))) (|insertsort[230:1][238:0]| x1 x2))))
(assert (forall ((x1 Int)(x0 Int)) (=> (|make_list[209:1][226:0]| x0 x1) (|insertsort[230:0]| x1))))
(assert (forall ((x0 Int)(x1 Int)(var1160 Int)(var1161 Int)) (=> (and (|make_list[212:1][215:0]| var1160 var1161) (and (|make_list[209:0]| x0) (and (= (+ 1 var1160) x0) (and (= x1 (+ 1 var1161)) (not (= x0 0)))))) (|make_list[209:1][226:0]| x0 x1))))
(assert (forall ((x1 Int)(x0 Int)) (=> (and (|make_list[212:0]| x1) (and (= x0 0) (= x1 0))) (|make_list[212:1][215:0]| x1 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (and (|make_list[209:0]| x1) (and (= (+ 1 x0) x1) (not (= x1 0)))) (|make_list[212:0]| x0))))
(assert (forall ((x0 Int)) (|make_list[209:0]| x0)))
(check-sat)
(get-model)
(exit)
