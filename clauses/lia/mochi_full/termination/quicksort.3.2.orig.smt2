(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/quicksort.3.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_44883[79:0]| ( Int) Bool)
(declare-fun |qs[65:20]| ( Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |qs[58:21][61:0]| ( Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |qs[58:20]| ( Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |par_without_checking_296[55:41]| ( Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int) Bool)
(declare-fun |qs[40:20]| ( Bool  Int  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Bool  Int  Int  Int  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_44883[79:0]| x0))))
(assert (forall ((x0 Int)(var679 Int)(x27 Int)(x26 Int)(var666 Bool)(var667 Int)(var668 Int)(var669 Int)(var670 Int)(var671 Int)(var672 Int)(var673 Bool)(var674 Int)(var675 Int)(var676 Int)(var677 Int)(var678 Int)(x24 Int)(x25 Int)(x28 Int)) (=> (and (|qs[65:20]| var666 var667 var668 var669 var670 var671 var672 var673 var674 var675 var676 var677 var678 true x24 x25 x26 x27 x28 var679) (and (>= var679 1) (and (<= x27 0) (or (<= (+ 1 x27) 0) (<= x26 0))))) (|fail_44883[79:0]| x0))))
(assert (forall ((x12 Bool)(x15 Int)(x36 Int)(x16 Int)(x17 Int)(x55 Int)(x0 Int)(x13 Bool)(x10 Int)(x8 Int)(x6 Int)(x3 Int)(x1 Int)(x14 Bool)(x11 Int)(x9 Int)(x7 Int)(x4 Int)(x2 Int)(x5 Int)(x54 Bool)(x53 Int)(x52 Int)(x51 Int)(x50 Int)(x49 Int)(x48 Bool)(x47 Int)(x46 Int)(x45 Int)(x44 Int)(x43 Int)(x42 Bool)(x41 Int)(x40 Int)(x39 Int)(x38 Int)(x37 Int)(x35 Bool)(x34 Int)(x33 Int)(x32 Int)(x31 Int)(x30 Int)(x29 Bool)(x28 Int)(x27 Int)(x26 Int)(x25 Int)(x24 Int)(x23 Bool)(x22 Int)(x21 Int)(x20 Int)(x19 Int)(x18 Int)(x56 Int)) (=> (and (|par_without_checking_296[55:41]| x54 x53 x52 x51 x50 x49 x15 x48 x47 x46 x45 x44 x43 x42 x41 x40 x39 x38 x37 x36 x35 x34 x33 x32 x31 x30 x16 x29 x28 x27 x26 x25 x24 x17 x23 x22 x21 x20 x19 x18 x55) (and (|qs[58:21][61:0]| true x15 x36 x16 x17 x55 0 true x15 x36 x16 x17 x55 true x15 x36 x16 x17 x55 x16 x56) (and (= x0 0) (and (<= x55 0) (and (= x10 x15) (and (= x10 x11) (and (= x8 x36) (and (= x8 x9) (and (= x6 x16) (and (= x6 x7) (and (= x3 x4) (and (= x3 x17) (and (= x3 x5) (and (= x1 x55) (and (= x1 x2) (and x12 (and x13 x14))))))))))))))))) (|qs[65:20]| x12 x15 x36 x16 x17 x55 x0 x13 x10 x8 x6 x3 x1 x14 x11 x9 x7 x4 x2 x5))))
(assert (forall ((x1 Bool)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Bool)(x9 Int)(x10 Int)(x11 Int)(x12 Int)(x13 Int)(x14 Bool)(x15 Int)(x16 Int)(x17 Int)(x18 Int)(x19 Int)(x20 Int)(x0 Int)) (=> (and (|qs[58:20]| x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20) (and (= x0 0) (<= x20 0))) (|qs[58:21][61:0]| x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x0))))
(assert (forall ((x12 Bool)(x21 Int)(x34 Int)(x41 Int)(x48 Int)(x55 Int)(x0 Int)(x13 Bool)(x10 Int)(x8 Int)(x5 Int)(x3 Int)(x1 Int)(x14 Bool)(x11 Int)(x9 Int)(x6 Int)(x4 Int)(x2 Int)(x7 Int)(x15 Bool)(x16 Int)(x17 Int)(x18 Int)(x19 Int)(x20 Int)(x22 Bool)(x23 Int)(x24 Int)(x25 Int)(x26 Int)(x27 Int)(x28 Bool)(x29 Int)(x30 Int)(x31 Int)(x32 Int)(x33 Int)(x35 Bool)(x36 Int)(x37 Int)(x38 Int)(x39 Int)(x40 Int)(x42 Bool)(x43 Int)(x44 Int)(x45 Int)(x46 Int)(x47 Int)(x49 Bool)(x50 Int)(x51 Int)(x52 Int)(x53 Int)(x54 Int)) (=> (and (|par_without_checking_296[55:41]| x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55) (and (= x0 0) (and (<= x55 0) (and (= x55 x1) (and (= x55 x2) (and (= x48 x3) (and (= x48 x4) (and (= x41 x5) (and (= x41 x6) (and (= x41 x7) (and (= x34 x8) (and (= x34 x9) (and (= x21 x10) (and (= x21 x11) (and x12 (and x13 x14)))))))))))))))) (|qs[58:20]| x12 x21 x34 x41 x48 x55 x0 x13 x10 x8 x5 x3 x1 x14 x11 x9 x6 x4 x2 x7))))
(assert (forall ((x34 Bool)(x35 Int)(x36 Int)(x37 Int)(x38 Int)(x39 Int)(x0 Int)(x28 Bool)(x29 Int)(x30 Int)(x31 Int)(x32 Int)(x33 Int)(x22 Bool)(x23 Int)(x24 Int)(x25 Int)(x26 Int)(x27 Int)(x9 Int)(x16 Bool)(x17 Int)(x18 Int)(x19 Int)(x20 Int)(x21 Int)(x1 Int)(x10 Bool)(x11 Int)(x12 Int)(x13 Int)(x14 Int)(x15 Int)(x3 Int)(x2 Bool)(x4 Int)(x7 Int)(x5 Int)(x6 Int)(x8 Int)(x40 Int)(var693 Int)(var680 Bool)(var681 Int)(var682 Int)(var683 Int)(var684 Int)(var685 Int)(var686 Int)(var687 Bool)(var688 Int)(var689 Int)(var690 Int)(var691 Int)(var692 Int)) (=> (and (|qs[40:20]| var680 var681 var682 var683 var684 var685 var686 var687 var688 var689 var690 var691 var692 x34 x35 x36 x37 x38 x39 var693) (and (= x0 0) (and (= x1 0) (and (= x3 0) (and (= (+ 1 x40) var693) (and (>= var693 1) (and (= x11 x35) (and (= x11 x29) (and (= x11 x23) (and (= x11 x17) (and (= x11 x4) (and (= x12 x36) (and (= x12 x30) (and (= x12 x24) (and (= x12 x18) (and (= x12 x7) (and (= x13 x37) (and (= x13 x31) (and (= x13 x25) (and (= x13 x19) (and (= x13 x5) (and (= x14 x38) (and (= x14 x32) (and (= x14 x26) (and (= x14 x20) (and (= x14 x6) (and (= x15 x39) (and (= x15 x33) (and (= x15 x27) (and (= x15 x21) (and (= x15 x8) (and (not x2) (and (not x34) (and (not x28) (and (not x22) (and (not x16) (not x10))))))))))))))))))))))))))))))))))))) (|par_without_checking_296[55:41]| x34 x35 x36 x37 x38 x39 x0 x28 x29 x30 x31 x32 x33 x22 x23 x24 x25 x26 x27 x9 x16 x17 x18 x19 x20 x21 x1 x10 x11 x12 x13 x14 x15 x3 x2 x4 x7 x5 x6 x8 x40))))
(assert (forall ((x18 Bool)(x13 Int)(x16 Int)(x14 Int)(x15 Int)(x17 Int)(x0 Int)(x11 Bool)(x9 Int)(x7 Int)(x5 Int)(x3 Int)(x1 Int)(x12 Bool)(x10 Int)(x8 Int)(x6 Int)(x4 Int)(x2 Int)(x20 Int)) (=> (and (= x0 0) (and (= x13 0) (and (= x16 0) (and (= x14 0) (and (= x15 0) (and (= x17 0) (and (= x9 x13) (and (= x9 x10) (and (= x7 x16) (and (= x7 x8) (and (= x5 x14) (and (= x5 x6) (and (= x3 x15) (and (= x3 x4) (and (= x1 x17) (and (= x1 x2) (and (not x18) (and (not x11) (= x11 x12))))))))))))))))))) (|qs[40:20]| x18 x13 x16 x14 x15 x17 x0 x11 x9 x7 x5 x3 x1 x12 x10 x8 x6 x4 x2 x20))))
(check-sat)
(get-model)
(exit)