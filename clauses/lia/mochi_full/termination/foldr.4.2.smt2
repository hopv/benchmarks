(set-logic HORN)
(set-info :source |
  Benchmark: test_safe_2019/termination/foldr.4.ml
  Generated by MoCHi
|)
(set-info :status unknown)
(declare-fun |fail_11708[0:0]| ( Int) Bool)
(declare-fun |foldr_without_checking_132[0:19]| ( Bool  Int  Int  Int  Int  Bool  Int  Int  Int  Bool  Int  Int  Int  Int  Bool  Int  Int  Int  Int) Bool)
(assert (not (exists ((x0 Int)) (|fail_11708[0:0]| x0))))
(assert (forall ((x0 Int)(x19 Int)(var389 Bool)(var390 Int)(var391 Int)(var392 Int)(x17 Int)(var393 Bool)(var394 Int)(var395 Int)(var396 Int)(var397 Bool)(var398 Int)(var399 Int)(var400 Int)(x10 Int)(var401 Bool)(var402 Int)(var403 Int)(var404 Int)) (=> (and (|foldr_without_checking_132[0:19]| var389 var390 var391 var392 x17 var393 var394 var395 var396 var397 var398 var399 var400 x10 var401 var402 var403 var404 x19) (<= (+ 1 x19) 0)) (|fail_11708[0:0]| x0))))
(assert (forall ((x15 Bool)(x16 Int)(x17 Int)(x18 Int)(x1 Int)(x11 Bool)(x12 Int)(x13 Int)(x14 Int)(x7 Bool)(x8 Int)(x9 Int)(x10 Int)(x0 Int)(x3 Bool)(x5 Int)(x4 Int)(x6 Int)(x2 Int)(var405 Bool)(var406 Int)(var407 Int)(var408 Int)(var409 Bool)(var410 Int)(var411 Int)(var412 Int)(var413 Bool)(var414 Int)(var415 Int)(var416 Int)(var417 Bool)(var418 Int)(var419 Int)(var420 Int)) (=> (and (|foldr_without_checking_132[0:19]| var405 var406 var407 var408 x16 var409 var410 var411 var412 var413 var414 var415 var416 x17 var417 var418 var419 var420 x18) (and (= x1 0) (and (>= x6 (+ 1 x2)) (and (>= x2 0) (and (not (= x18 0)) (and (= (+ 1 x2) x18) (and (= x6 x14) (and (= x6 x10) (and (= x6 x18) (and (= x17 x4) (and (= x17 x0) (and (= x17 x9) (and (= x17 x13) (and (= x5 x12) (and (= x5 x8) (and (= x5 x16) (and x3 (and x7 (and x11 x15))))))))))))))))))) (|foldr_without_checking_132[0:19]| x15 x16 x17 x18 x1 x11 x12 x13 x14 x7 x8 x9 x10 x0 x3 x5 x4 x6 x2))))
(assert (forall ((x17 Bool)(x15 Int)(x14 Int)(x16 Int)(x0 Int)(x10 Bool)(x7 Int)(x4 Int)(x1 Int)(x11 Bool)(x8 Int)(x5 Int)(x2 Int)(x19 Int)(x12 Bool)(x9 Int)(x6 Int)(x3 Int)(x13 Int)) (=> (and (= x0 0) (and (= x15 0) (and (= x14 0) (and (= x16 0) (and (>= x13 0) (and (= x7 x8) (and (= x7 x15) (and (= x7 x9) (and (= x4 x5) (and (= x4 x14) (and (= x4 x6) (and (= x1 x2) (and (= x1 x16) (and (= x1 x3) (and (not x17) (and (= x10 x11) (and (not x10) (= x10 x12)))))))))))))))))) (|foldr_without_checking_132[0:19]| x17 x15 x14 x16 x0 x10 x7 x4 x1 x11 x8 x5 x2 x19 x12 x9 x6 x3 x13))))
(check-sat)
(get-model)
(exit)
