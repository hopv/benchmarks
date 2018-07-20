(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/mochi/a-copy-print.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_28[0:0]| ( Int) Bool)
(declare-fun |print_array[0:2][0:1][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[0:5][0:0][0:1][0:0]| ( Int  Int  Int  Int  Int) Bool)
(declare-fun |bcopy[0:5][0:0][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |print_array[0:2][0:0]| ( Int  Int  Int) Bool)
(declare-fun |print_array[0:3]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[0:3][0:1][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[0:3][0:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[0:2][0:1][0:0]| ( Int  Int  Int  Int) Bool)
(declare-fun |bcopy[0:2][0:0]| ( Int  Int  Int) Bool)
(declare-fun |bcopy[0:4]| ( Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_28[0:0]| x0))))
(assert (forall ((x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy[0:3][0:0]| x2 x2 x1) (and (>= x2 1) (or (>= 0 (+ 1 x1)) (>= x1 x2)))) (|fail_28[0:0]| x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)(var577 Int)(var578 Int)) (=> (and (|bcopy[0:3][0:0]| x1 x2 x3) (and (|bcopy[0:2][0:1][0:0]| x1 x2 x0 var577) (and (|bcopy[0:4]| x1 x2 x0) (and (|bcopy[0:3][0:1][0:0]| x1 x2 x0 var578) (and (not (= x0 x3)) (<= (+ 1 x0) x2)))))) (|bcopy[0:3][0:0]| x1 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x2 Int)) (=> (and (|bcopy[0:4]| x0 x1 x2) (and (|bcopy[0:5][0:0][0:0]| x0 x1 x2 x3) (>= x2 x1))) (|bcopy[0:3][0:0]| x0 x1 x3))))
(assert (forall ((x4 Int)(x5 Int)(x6 Int)(x3 Int)(x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy[0:4]| x4 x5 x6) (and (|bcopy[0:5][0:0][0:0]| x4 x5 x0 x3) (and (|bcopy[0:2][0:1][0:0]| x4 x5 x0 x2) (and (|bcopy[0:4]| x4 x5 x0) (and (|bcopy[0:3][0:1][0:0]| x4 x5 x0 x1) (and (= x6 (+ 1 x0)) (<= (+ 1 x0) x5))))))) (|bcopy[0:5][0:0][0:0]| x4 x5 x6 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|bcopy[0:4]| x1 x2 x3) (and (|print_array[0:2][0:0]| x1 x1 x0) (and (= x3 0) (and (>= x1 1) (= x1 x2))))) (|bcopy[0:5][0:0][0:0]| x1 x2 x3 x0))))
(assert (forall ((x2 Int)(x1 Int)(x3 Int)(x0 Int)(var579 Int)) (=> (and (|print_array[0:2][0:0]| x2 x1 x3) (and (|print_array[0:3]| x2 x1 x0) (and (|print_array[0:2][0:1][0:0]| x2 x1 x0 var579) (<= (+ 1 x0) x1)))) (|print_array[0:2][0:0]| x2 x1 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|print_array[0:3]| x0 x1 x2) (<= (+ 1 x2) x1)) (|print_array[0:2][0:0]| x0 x1 x2))))
(assert (forall ((x3 Int)(x2 Int)(x0 Int)(x1 Int)(x4 Int)) (=> (and (|print_array[0:3]| x3 x2 x1) (and (|print_array[0:2][0:1][0:0]| x3 x2 x1 x4) (and (= x0 (+ 1 x1)) (<= (+ 1 x1) x2)))) (|print_array[0:3]| x3 x2 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|bcopy[0:5][0:0][0:1][0:0]| x1 x1 0 x2 x3) (and (>= x1 1) (= x1 x0))) (|print_array[0:2][0:1][0:0]| x1 x0 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)(x4 Int)(var580 Int)(var581 Int)(var582 Int)) (=> (and (|bcopy[0:5][0:0][0:1][0:0]| x1 x2 var580 x3 x4) (and (|bcopy[0:2][0:1][0:0]| x1 x2 x0 var581) (and (|bcopy[0:4]| x1 x2 x0) (and (|bcopy[0:3][0:1][0:0]| x1 x2 x0 var582) (and (= var580 (+ 1 x0)) (<= (+ 1 x0) x2)))))) (|bcopy[0:5][0:0][0:1][0:0]| x1 x2 x0 x3 x4))))
(assert (forall ((x1 Int)(x2 Int)(x0 Int)(x3 Int)(x4 Int)) (=> (and (|bcopy[0:4]| x1 x2 x0) (and (|bcopy[0:3][0:1][0:0]| x1 x2 x3 x4) (>= x0 x2))) (|bcopy[0:5][0:0][0:1][0:0]| x1 x2 x0 x3 x4))))
(assert (forall ((x1 Int)(x2 Int)(x5 Int)(x6 Int)(x3 Int)) (=> (and (|bcopy[0:3][0:0]| x1 x2 x5) (and (|bcopy[0:2][0:1][0:0]| x1 x2 x5 x6) (and (|bcopy[0:4]| x1 x2 x5) (and (|bcopy[0:3][0:1][0:0]| x1 x2 x5 x3) (<= (+ 1 x5) x2))))) (|bcopy[0:3][0:1][0:0]| x1 x2 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x2 Int)) (=> (and (|bcopy[0:4]| x0 x1 x2) (and (|bcopy[0:5][0:0][0:0]| x0 x1 x2 x3) (>= x2 x1))) (|bcopy[0:3][0:0]| x0 x1 x3))))
(assert (forall ((x4 Int)(x5 Int)(x6 Int)(x3 Int)(x0 Int)(x2 Int)(x1 Int)) (=> (and (|bcopy[0:4]| x4 x5 x6) (and (|bcopy[0:5][0:0][0:0]| x4 x5 x0 x3) (and (|bcopy[0:2][0:1][0:0]| x4 x5 x0 x2) (and (|bcopy[0:4]| x4 x5 x0) (and (|bcopy[0:3][0:1][0:0]| x4 x5 x0 x1) (and (= x6 (+ 1 x0)) (<= (+ 1 x0) x5))))))) (|bcopy[0:5][0:0][0:0]| x4 x5 x6 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|bcopy[0:4]| x1 x2 x3) (and (|print_array[0:2][0:0]| x1 x1 x0) (and (= x3 0) (and (>= x1 1) (= x1 x2))))) (|bcopy[0:5][0:0][0:0]| x1 x2 x3 x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|print_array[0:3]| x0 x1 x2) (<= (+ 1 x2) x1)) (|print_array[0:2][0:0]| x0 x1 x2))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (= x0 0) (and (>= x2 1) (= x2 x1))) (|print_array[0:3]| x2 x1 x0))))
(assert (forall ((x2 Int)(x3 Int)(x0 Int)(x1 Int)(x5 Int)(x4 Int)) (=> (and (|bcopy[0:2][0:1][0:0]| x2 x3 x1 x5) (and (|bcopy[0:4]| x2 x3 x1) (and (|bcopy[0:3][0:1][0:0]| x2 x3 x1 x4) (and (= x0 (+ 1 x1)) (<= (+ 1 x1) x3))))) (|bcopy[0:4]| x2 x3 x0))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|bcopy[0:3][0:0]| x1 x1 x2) (and (= x3 0) (and (<= 0 x2) (and (<= (+ 1 x2) x1) (and (>= x1 1) (= x1 x0)))))) (|bcopy[0:3][0:1][0:0]| x1 x0 x2 x3))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(var583 Int)) (=> (and (|bcopy[0:4]| x1 x2 x3) (and (|bcopy[0:2][0:1][0:0]| x1 x2 x3 var583) (<= (+ 1 x3) x2))) (|bcopy[0:3][0:0]| x1 x2 x3))))
(assert (forall ((x1 Int)(x0 Int)(x2 Int)(x3 Int)) (=> (and (|bcopy[0:2][0:0]| x1 x1 x2) (and (= x3 0) (and (<= 0 x2) (and (<= (+ 1 x2) x1) (and (>= x1 1) (= x1 x0)))))) (|bcopy[0:2][0:1][0:0]| x1 x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)) (=> (and (|bcopy[0:4]| x0 x1 x2) (<= (+ 1 x2) x1)) (|bcopy[0:2][0:0]| x0 x1 x2))))
(assert (forall ((x2 Int)(x1 Int)(x0 Int)) (=> (and (= x0 0) (and (>= x2 1) (= x2 x1))) (|bcopy[0:4]| x2 x1 x0))))
(check-sat)
(get-model)
(exit)
