(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/a-copy-print.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_28[307:0]| ( Int) Bool)
(declare-fun |bcopy[198:3][298:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[253:3][285:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[253:5][256:0][283:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[253:4]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[198:5][264:0][275:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |print_array[268:2][271:0]| ( Int  Int  Int) Bool)
(declare-fun |print_array[268:3]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[198:3][226:1][245:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[198:3][226:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[198:2][201:1][220:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[198:2][201:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[198:4]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_28[307:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy[198:3][298:0]| x2 x2 x1) (and (>= x2 1) (or (>= 0 (+ 1 x1)) (>= x1 x2)))) (|fail_28[307:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)(var437 Int)(var438 Int)) (=> (and (|bcopy[253:3][285:0]| x1 x2 x3) (and (|bcopy[198:2][201:1][220:0]| x1 x2 x0 var437) (and (|bcopy[198:4]| x1 x2 x0) (and (|bcopy[198:3][226:1][245:0]| x1 x2 x0 var438) (and (not (= x0 x3)) (<= (+ 1 x0) x2)))))) (|bcopy[198:3][298:0]| x1 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x2 Int)) (=> (and (|bcopy[253:4]| x0 x1 x2) (and (|bcopy[253:5][256:0][283:0]| x0 x1 x2 x3) (>= x2 x1))) (|bcopy[253:3][285:0]| x0 x1 x3))))
(assert (forall ((x4 Int)(x5 Int)(x6 Int)(x3 Int)(x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy[253:4]| x4 x5 x6) (and (|bcopy[198:5][264:0][275:0]| x4 x5 x0 x3) (and (|bcopy[198:2][201:1][220:0]| x4 x5 x0 x2) (and (|bcopy[198:4]| x4 x5 x0) (and (|bcopy[198:3][226:1][245:0]| x4 x5 x0 x1) (and (= x6 (+ 1 x0)) (<= (+ 1 x0) x5))))))) (|bcopy[253:5][256:0][283:0]| x4 x5 x6 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|bcopy[198:4]| x1 x2 x3) (and (|print_array[268:2][271:0]| x1 x1 x0) (and (= x3 0) (and (>= x1 1) (= x1 x2))))) (|bcopy[198:5][264:0][275:0]| x1 x2 x3 x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|print_array[268:3]| x0 x1 x2) (<= (+ 1 x2) x1)) (|print_array[268:2][271:0]| x0 x1 x2))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (= x0 0) (and (>= x2 1) (= x2 x1))) (|print_array[268:3]| x2 x1 x0))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(x5 Int)(x4 Int)) (=> (and (|bcopy[198:2][201:1][220:0]| x2 x3 x1 x5) (and (|bcopy[198:4]| x2 x3 x1) (and (|bcopy[198:3][226:1][245:0]| x2 x3 x1 x4) (and (= x0 (+ 1 x1)) (<= (+ 1 x1) x3))))) (|bcopy[253:4]| x2 x3 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|bcopy[198:3][226:0]| x1 x1 x2) (and (= x3 0) (and (<= 0 x2) (and (<= (+ 1 x2) x1) (and (>= x1 1) (= x1 x0)))))) (|bcopy[198:3][226:1][245:0]| x1 x0 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var439 Int)) (=> (and (|bcopy[198:4]| x1 x2 x3) (and (|bcopy[198:2][201:1][220:0]| x1 x2 x3 var439) (<= (+ 1 x3) x2))) (|bcopy[198:3][226:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|bcopy[198:2][201:0]| x1 x1 x2) (and (= x3 0) (and (<= 0 x2) (and (<= (+ 1 x2) x1) (and (>= x1 1) (= x1 x0)))))) (|bcopy[198:2][201:1][220:0]| x1 x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|bcopy[198:4]| x0 x1 x2) (<= (+ 1 x2) x1)) (|bcopy[198:2][201:0]| x0 x1 x2))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (= x0 0) (and (>= x2 1) (= x2 x1))) (|bcopy[198:4]| x2 x1 x0))))
(check-sat)
(get-model)
(exit)
