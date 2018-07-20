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
(assert (forall ((x0 Int)(var18082 Int)) (=> (|solve[0:5][0:0]| var18082 0 x0) (|f_159[0:0]| x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var18083 Int)(var18084 Int)) (=> (and (|for_62[0:8][0:0]| x0 x1 var18083 var18084 1 x2) (and (|solve[0:1]| x0 x1) (and (not (= x2 0)) (not (= x1 31))))) (|solve[0:5][0:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x1 Int)(x5 Int)) (=> (and (|for_57[0:9][0:0]| x0 x1 x2 x3 x4 1 x5) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:8][0:0]| x0 x2 x3 x4 x1 x5))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x2 Int)(x6 Int)) (=> (and (|for[0:11][0:0]| x0 x1 x2 x3 x4 x5 2 0 x6) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:9][0:0]| x0 x1 x3 x4 x5 x2 x6))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x3 Int)(x8 Int)(var18089 Int)(var18103 Int)(var18090 Int)(var18102 Int)(var18092 Int)(var18093 Int)(var18097 Int)(var18096 Int)(var18098 Int)(var18099 Int)(var18100 Int)(var18085 Int)(var18086 Int)(var18087 Int)(var18088 Int)(var18091 Int)(var18094 Int)(var18095 Int)(var18101 Int)(var18104 Int)) (=> (and (|for[0:8][0:1][0:3]| x0 x1 x2 x4 x5 x6 x7 x4 var18085 var18086 var18087 var18088) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18089 var18090 var18091) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18092 var18093 var18094) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var18095) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18096 var18097 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18098 var18099 2) (and (|solve[0:4][0:0]| x0 var18100 true) (and (|dir[0:3][0:1]| x0 x4 x3 var18101 var18102) (and (|dir[0:3][0:1]| x0 x4 x3 var18103 var18104) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= x8 0) (and (= var18089 (+ x1 (* 2 var18103))) (and (= var18090 (+ x2 (* 2 var18102))) (and (= var18092 (+ x1 var18103)) (and (= var18093 (+ x2 var18102)) (and (= var18097 (+ x2 (* 2 var18102))) (and (= var18096 (+ x1 (* 2 var18103))) (and (= var18098 (+ x1 var18103)) (and (= var18099 (+ x2 var18102)) (and (= var18100 (+ 1 x4)) (<= x3 3))))))))))))))))))))) (|for[0:11][0:0]| x0 x1 x2 x4 x5 x6 x7 x3 x8))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)(x10 Int)(x11 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:6][0:1][0:3]| x1 x2 x4 x5 x6 x7 x8 x9 x10 x11) (and (= x0 2) (<= x3 7))))) (|for[0:8][0:1][0:3]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9 x10 x11))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_62[0:5][0:1][0:3]| x0 x2 x3 x4 x5 x6 x7 x8 x9) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:6][0:1][0:3]| x0 x1 x2 x3 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)) (=> (and (|solve[0:3][0:1][0:3]| x0 x1 x4 x5 x6 x7 x8) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:5][0:1][0:3]| x0 x1 x2 x3 x4 x5 x6 x7 x8))))
(assert (forall ((x6 Int)(x7 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(var18106 Int)) (=> (and (|solve[0:1]| x6 x7) (and (|solve[0:3][0:0]| var18106 0 x1) (and (= x7 0) (and (= x2 0) (and (= x3 0) (and (= x4 0) (= x5 0))))))) (|solve[0:3][0:1][0:3]| x6 x7 x1 x2 x3 x4 x5))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(var18107 Int)(var18108 Int)) (=> (and (|for_62[0:5][0:0]| x0 x1 var18107 var18108 x2) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:3][0:0]| x0 x1 x2))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x1 Int)) (=> (and (|for_57[0:6][0:0]| x0 x1 x2 x3 x4 x5) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:5][0:0]| x0 x2 x3 x4 x5))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x2 Int)) (=> (and (|for[0:8][0:0]| x0 x1 x2 x3 x4 x5 2 x6) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:6][0:0]| x0 x1 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(var18109 Int)(var18123 Int)(var18110 Int)(var18122 Int)(var18112 Int)(var18113 Int)(var18117 Int)(var18116 Int)(var18118 Int)(var18119 Int)(var18120 Int)(x3 Int)(var18111 Int)(var18114 Int)(var18115 Int)(var18121 Int)(var18124 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18109 var18110 var18111) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18112 var18113 var18114) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var18115) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18116 var18117 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18118 var18119 2) (and (|solve[0:4][0:0]| x0 var18120 true) (and (|dir[0:3][0:1]| x0 x4 x3 var18121 var18122) (and (|dir[0:3][0:1]| x0 x4 x3 var18123 var18124) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18109 (+ x1 (* 2 var18123))) (and (= var18110 (+ x2 (* 2 var18122))) (and (= var18112 (+ x1 var18123)) (and (= var18113 (+ x2 var18122)) (and (= var18117 (+ x2 (* 2 var18122))) (and (= var18116 (+ x1 (* 2 var18123))) (and (= var18118 (+ x1 var18123)) (and (= var18119 (+ x2 var18122)) (and (= var18120 (+ 1 x4)) (and (<= x3 3) (= x8 x4)))))))))))))))))))) (|for[0:8][0:0]| x0 x1 x2 x4 x5 x6 x7 x8))))
(assert (forall ((x0 Int)(x1 Int)(x2 Bool)) (=> (and (|solve[0:1]| x0 x1) (and (|solve[0:2][0:2][0:0]| x0 x1 4 4 2) (and (= x1 31) x2))) (|solve[0:4][0:0]| x0 x1 x2))))
(assert (forall ((x19 Int)(x20 Int)(x16 Int)(x17 Int)(x18 Int)(var18126 Int)(x2 Int)(x7 Int)(var18125 Int)(x1 Int)(x6 Int)(var18138 Int)(var18137 Int)(var18135 Int)(var18136 Int)(var18134 Int)(var18133 Int)(var18132 Int)(var18131 Int)(var18129 Int)(var18130 Int)(var18128 Int)(var18127 Int)(x3 Int)(x4 Int)(x11 Int)(x12 Int)(x15 Int)(x0 Int)(x5 Int)(x8 Int)(x9 Int)(x10 Int)) (=> (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18125 var18126 x0) (and (|dir[0:3][0:1]| x19 x4 x3 x5 x7) (and (|dir[0:3][0:1]| x19 x4 x3 x6 x8) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18127 var18128 x9) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18129 var18130 1) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18131 var18132 2) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18133 var18134 x9) (and (|for[0:9]| x19 x1 x2 x4 x11 x12 x15 x3) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18135 var18136 1) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 var18137 var18138 2) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 x1 x2 x10) (and (|solve[0:1]| x19 x20) (and (|for[0:7][0:2][0:0]| x19 x1 x2 x4 x11 x12 x15 x16 x17 x18) (and (= var18126 (+ x2 (* 2 x7))) (and (= var18125 (+ x1 (* 2 x6))) (and (= var18138 (+ x2 x7)) (and (= var18137 (+ x1 x6)) (and (= var18135 (+ x1 (* 2 x6))) (and (= var18136 (+ x2 (* 2 x7))) (and (= var18134 (+ x2 x7)) (and (= var18133 (+ x1 x6)) (and (= var18132 (+ x2 x7)) (and (= var18131 (+ x1 x6)) (and (= var18129 (+ x1 (* 2 x6))) (and (= var18130 (+ x2 (* 2 x7))) (and (= var18128 (+ x2 x7)) (and (= var18127 (+ x1 x6)) (and (<= x3 3) (= x20 (+ 1 x4)))))))))))))))))))))))))))))) (|solve[0:2][0:2][0:0]| x19 x20 x16 x17 x18))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18140 Int)(var18141 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18140 var18141 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18142 Int)(var18156 Int)(var18143 Int)(var18155 Int)(var18145 Int)(var18146 Int)(var18150 Int)(var18149 Int)(var18151 Int)(var18152 Int)(var18153 Int)(x3 Int)(var18144 Int)(var18147 Int)(var18148 Int)(var18154 Int)(var18157 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18142 var18143 var18144) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18145 var18146 var18147) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var18148) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18149 var18150 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18151 var18152 2) (and (|solve[0:2][0:1]| x0 var18153 x8 x9) (and (|dir[0:3][0:1]| x0 x4 x3 var18154 var18155) (and (|dir[0:3][0:1]| x0 x4 x3 var18156 var18157) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18142 (+ x1 (* 2 var18156))) (and (= var18143 (+ x2 (* 2 var18155))) (and (= var18145 (+ x1 var18156)) (and (= var18146 (+ x2 var18155)) (and (= var18150 (+ x2 (* 2 var18155))) (and (= var18149 (+ x1 (* 2 var18156))) (and (= var18151 (+ x1 var18156)) (and (= var18152 (+ x2 var18155)) (and (= var18153 (+ 1 x4)) (<= x3 3))))))))))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)) (=> (and (|solve[0:1]| x0 x1) (and (= x2 4) (and (= x3 4) (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x1 Int)(x0 Int)(x4 Int)(var18165 Int)(x3 Int)(x8 Int)(var18164 Int)(x2 Int)(x7 Int)(var18162 Int)(var18163 Int)(var18161 Int)(var18160 Int)(var18159 Int)(var18158 Int)(x5 Int)(x12 Int)(x13 Int)(x16 Int)(x17 Int)(x10 Int)(x11 Int)(x6 Int)(x9 Int)) (=> (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var18158 var18159 x17) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var18160 var18161 x10) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 x2 x3 x11) (and (|dir[0:3][0:1]| x1 x5 x4 x6 x8) (and (|dir[0:3][0:1]| x1 x5 x4 x7 x9) (and (|for[0:9]| x1 x2 x3 x5 x12 x13 x16 x4) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var18162 var18163 1) (and (|for[0:7][0:2][0:0]| x1 x2 x3 x5 x12 x13 x16 var18164 var18165 2) (and (<= x4 3) (and (= var18165 (+ x3 x8)) (and (= var18164 (+ x2 x7)) (and (= var18162 (+ x2 (* 2 x7))) (and (= var18163 (+ x3 (* 2 x8))) (and (= var18161 (+ x3 x8)) (and (= var18160 (+ x2 x7)) (and (= var18159 (+ x3 (* 2 x8))) (and (= var18158 (+ x2 (* 2 x7))) (= x0 (+ 1 x5))))))))))))))))))) (|solve[0:1]| x1 x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18167 Int)(var18168 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18167 var18168 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18169 Int)(var18179 Int)(var18170 Int)(var18178 Int)(var18174 Int)(var18173 Int)(var18175 Int)(var18176 Int)(x3 Int)(var18171 Int)(var18172 Int)(var18177 Int)(var18180 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18169 var18170 var18171) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var18172) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18173 var18174 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18175 var18176 2) (and (|dir[0:3][0:1]| x0 x4 x3 var18177 var18178) (and (|dir[0:3][0:1]| x0 x4 x3 var18179 var18180) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18169 (+ x1 var18179)) (and (= var18170 (+ x2 var18178)) (and (= var18174 (+ x2 (* 2 var18178))) (and (= var18173 (+ x1 (* 2 var18179))) (and (= var18175 (+ x1 var18179)) (and (= var18176 (+ x2 var18178)) (and (= x8 (+ x1 (* 2 var18179))) (and (= x9 (+ x2 (* 2 var18178))) (<= x3 3)))))))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18182 Int)(var18183 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18182 var18183 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18186 Int)(var18190 Int)(var18185 Int)(var18191 Int)(var18187 Int)(var18188 Int)(x3 Int)(var18184 Int)(var18189 Int)(var18192 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 x1 x2 var18184) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18185 var18186 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18187 var18188 2) (and (|dir[0:3][0:1]| x0 x4 x3 var18189 var18190) (and (|dir[0:3][0:1]| x0 x4 x3 var18191 var18192) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18186 (+ x2 (* 2 var18190))) (and (= var18185 (+ x1 (* 2 var18191))) (and (= var18187 (+ x1 var18191)) (and (= var18188 (+ x2 var18190)) (and (= x8 (+ x1 var18191)) (and (= x9 (+ x2 var18190)) (<= x3 3))))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18194 Int)(var18195 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18194 var18195 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18196 Int)(var18202 Int)(var18197 Int)(var18201 Int)(var18199 Int)(var18198 Int)(x3 Int)(var18200 Int)(var18203 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18196 var18197 1) (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18198 var18199 2) (and (|dir[0:3][0:1]| x0 x4 x3 var18200 var18201) (and (|dir[0:3][0:1]| x0 x4 x3 var18202 var18203) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18196 (+ x1 (* 2 var18202))) (and (= var18197 (+ x2 (* 2 var18201))) (and (= var18199 (+ x2 var18201)) (and (= var18198 (+ x1 var18202)) (and (<= x3 3) (and (= x8 x1) (= x9 x2)))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18205 Int)(var18206 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18205 var18206 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18208 Int)(var18210 Int)(var18207 Int)(var18211 Int)(x3 Int)(var18209 Int)(var18212 Int)) (=> (and (|for[0:7][0:2][0:0]| x0 x1 x2 x4 x5 x6 x7 var18207 var18208 2) (and (|dir[0:3][0:1]| x0 x4 x3 var18209 var18210) (and (|dir[0:3][0:1]| x0 x4 x3 var18211 var18212) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (= var18208 (+ x2 var18210)) (and (= var18207 (+ x1 var18211)) (and (<= x3 3) (and (= x9 (+ x2 (* 2 var18210))) (= x8 (+ x1 (* 2 var18211))))))))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x0 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x0) (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x7 x8 x9) (and (= x0 2) (<= x3 7))))) (|for[0:7][0:2][0:0]| x1 x2 x3 x4 x5 x6 x0 x7 x8 x9))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18214 Int)(var18215 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18214 var18215 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x0 Int)(x1 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x2 Int)) (=> (and (|for[0:7][0:1]| x0 x1 x2 x3 x4 x5 2 x6 x7) (and (|for_57[0:7]| x0 x1 x3 x4 x5 x2) (and (|for_57[0:5][0:2][0:0]| x0 x1 x3 x4 x5 x1 x2 2) (<= x2 7)))) (|for_57[0:5][0:1]| x0 x1 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)(var18218 Int)(var18217 Int)(x3 Int)(var18216 Int)(var18219 Int)) (=> (and (|dir[0:3][0:1]| x0 x4 x3 var18216 var18217) (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (|dir[0:3][0:1]| x0 x4 x3 var18218 var18219) (and (= x8 (+ x1 var18218)) (and (= x9 (+ x2 var18217)) (<= x3 3)))))) (|for[0:7][0:1]| x0 x1 x2 x4 x5 x6 x7 x8 x9))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)) (=> (and (|dir[0:2]| x2 x3 x4) (and (= x0 0) (and (= x1 1) (= x4 0)))) (|dir[0:3][0:1]| x2 x3 x4 x0 x1))))
(assert (forall ((x0 Int)(x4 Int)(x3 Int)(x1 Int)(x2 Int)(x5 Int)(x6 Int)(x7 Int)(x8 Int)(x9 Int)) (=> (and (|for[0:9]| x0 x1 x2 x4 x5 x6 x7 x3) (and (|dir[0:3][0:1]| x0 x4 x3 x8 x9) (<= x3 3))) (|dir[0:2]| x0 x4 x3))))
(assert (forall ((x2 Int)(x3 Int)(x4 Int)(x0 Int)(x1 Int)) (=> (and (|dir[0:2]| x2 x3 x4) (and (= x0 0) (and (= x1 1) (= x4 0)))) (|dir[0:3][0:1]| x2 x3 x4 x0 x1))))
(assert (forall ((x0 Int)(x3 Int)(x7 Int)(x1 Int)(x2 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|for[0:9]| x0 x1 x2 x3 x4 x5 x6 x7) (<= x7 3)) (|dir[0:2]| x0 x3 x7))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)(x0 Int)) (=> (and (|for_57[0:7]| x1 x2 x4 x5 x6 x3) (and (|for_57[0:5][0:2][0:0]| x1 x2 x4 x5 x6 x2 x3 x7) (and (= x0 0) (and (= x7 2) (<= x3 7))))) (|for[0:9]| x1 x2 x3 x4 x5 x6 x7 x0))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x7 Int)) (=> (and (|for_62[0:4][0:2][0:0]| x0 x2 x3 x4 x5 x6 x7) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_57[0:5][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6 x7))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)) (=> (and (|solve[0:2][0:2][0:0]| x0 x1 x4 x5 x6) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|for_62[0:4][0:2][0:0]| x0 x1 x2 x3 x4 x5 x6))))
(assert (forall ((x4 Int)(x5 Int)(x1 Int)(x2 Int)(x3 Int)(x0 Int)) (=> (and (|board[0:3][0:0]| x0 x1 x2 x3) (and (|solve[0:1]| x4 x5) (= x5 0))) (|solve[0:2][0:2][0:0]| x4 x5 x1 x2 x3))))
(assert (forall ((x2 Int)(x0 Int)(x1 Int)(x3 Int)) (=> (and (|board[0:2]| x2 x0 x1) (and (= x1 1) (and (= x3 0) (= x0 1)))) (|board[0:3][0:0]| x2 x0 x1 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x1 Int)) (=> (|solve[0:2][0:1]| x1 0 x2 x3) (|board[0:2]| x0 x2 x3))))
(assert (forall ((x0 Int)(x1 Int)(x2 Int)(x3 Int)(var18220 Int)(var18221 Int)) (=> (and (|for_62[0:4][0:1]| x0 x1 var18220 var18221 x2 x3) (and (|solve[0:1]| x0 x1) (not (= x1 31)))) (|solve[0:2][0:1]| x0 x1 x2 x3))))
(assert (forall ((x0 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x6 Int)(x1 Int)) (=> (and (|for_57[0:5][0:1]| x0 x1 x2 x3 x4 x5 x6) (and (|for_62[0:6]| x0 x2 x3 x4 x1) (<= x1 7))) (|for_62[0:4][0:1]| x0 x2 x3 x4 x5 x6))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x0 Int)(x6 Int)) (=> (and (|for_57[0:7]| x1 x2 x3 x4 x5 x6) (and (<= x6 7) (= x0 x2))) (|for_57[0:5][0:1]| x1 x2 x3 x4 x5 x0 x6))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x5 Int)(x0 Int)) (=> (and (|for_62[0:6]| x1 x3 x4 x5 x2) (and (= x0 1) (<= x2 7))) (|for_57[0:7]| x1 x2 x3 x4 x5 x0))))
(assert (forall ((x1 Int)(x2 Int)(x3 Int)(x4 Int)(x0 Int)) (=> (and (|solve[0:1]| x1 x2) (and (= x0 1) (not (= x2 31)))) (|for_62[0:6]| x1 x2 x3 x4 x0))))
(assert (forall ((x0 Int)(x1 Int)) (=> (= x1 0) (|solve[0:1]| x0 x1))))
(check-sat)
(get-model)
(exit)
