(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c9_COEFFICIENT_1286 = 0
     let rec c8_COEFFICIENT_1285 = 0
     let rec c7_COEFFICIENT_1284 = 0
     let rec c6_COEFFICIENT_1273 = 0
     let rec c5_COEFFICIENT_1272 = 0
     let rec c4_COEFFICIENT_1267 = 0
     let rec c3_COEFFICIENT_1266 = 0
     let rec c2_COEFFICIENT_1257 = 0
     let rec c1_COEFFICIENT_1256 = 0
     let rec c0_COEFFICIENT_1250 = 0
  
     let f1_1030 x_DO_NOT_CARE_1768 x_DO_NOT_CARE_1769 x_DO_NOT_CARE_1770 u_1031 x_DO_NOT_CARE_1765 x_DO_NOT_CARE_1766 x_DO_NOT_CARE_1767 c_EXPARAM_1293 x_DO_NOT_CARE_1762 x_DO_NOT_CARE_1763 x_DO_NOT_CARE_1764 c_1032 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 d_1033 =
       d_1033
  
     let f2_without_checking_1447 x_DO_NOT_CARE_1759 x_DO_NOT_CARE_1760 x_DO_NOT_CARE_1761 u_1035 x_DO_NOT_CARE_1756 x_DO_NOT_CARE_1757 x_DO_NOT_CARE_1758 a_EXPARAM_1279 x_DO_NOT_CARE_1753 x_DO_NOT_CARE_1754 x_DO_NOT_CARE_1755 a_1036 x_DO_NOT_CARE_1750 x_DO_NOT_CARE_1751 x_DO_NOT_CARE_1752 b_EXPARAM_1282 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 b_1037 =
       let set_flag_f2_1402 = true
       in
       let s_f2_b_EXPARAM_1394 = b_EXPARAM_1282
       in
       let s_f2_a_EXPARAM_1392 = a_EXPARAM_1279
       in
         a_1036 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
           ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
            ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
           set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
           (f1_1030 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
             u_1035)
  
     let rec f2_1034 x_DO_NOT_CARE_1458 x_DO_NOT_CARE_1459 x_DO_NOT_CARE_1460 u_1035 x_DO_NOT_CARE_1455 x_DO_NOT_CARE_1456 x_DO_NOT_CARE_1457 a_EXPARAM_1279 x_DO_NOT_CARE_1452 x_DO_NOT_CARE_1453 x_DO_NOT_CARE_1454 a_1036 x_DO_NOT_CARE_1449 x_DO_NOT_CARE_1450 x_DO_NOT_CARE_1451 b_EXPARAM_1282 prev_set_flag_f2_1401 s_prev_f2_a_EXPARAM_1397 s_prev_f2_b_EXPARAM_1399 b_1037 =
       let u = if prev_set_flag_f2_1401 then
                let u_7686 = fail ()
                in
                  bot()
               else () in
              f2_without_checking_1447 x_DO_NOT_CARE_1458 x_DO_NOT_CARE_1459
                x_DO_NOT_CARE_1460 u_1035 x_DO_NOT_CARE_1455 x_DO_NOT_CARE_1456
                x_DO_NOT_CARE_1457 a_EXPARAM_1279 x_DO_NOT_CARE_1452
                x_DO_NOT_CARE_1453 x_DO_NOT_CARE_1454 a_1036 x_DO_NOT_CARE_1449
                x_DO_NOT_CARE_1450 x_DO_NOT_CARE_1451 b_EXPARAM_1282
                prev_set_flag_f2_1401 s_prev_f2_a_EXPARAM_1397
                s_prev_f2_b_EXPARAM_1399 b_1037
  
     let f3_1038 x_DO_NOT_CARE_1747 x_DO_NOT_CARE_1748 x_DO_NOT_CARE_1749 u_1039 x_DO_NOT_CARE_1744 x_DO_NOT_CARE_1745 x_DO_NOT_CARE_1746 a_EXPARAM_1261 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 a_1040 =
       a_1040 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
         ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
         set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
         (f2_1034 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 u_1039
           set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
           ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
           set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 a_1040)
  
     let f4_1041 x_DO_NOT_CARE_1741 x_DO_NOT_CARE_1742 x_DO_NOT_CARE_1743 u_1042 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 v_1043 =
       v_1043
  
     let f5_1044 x_DO_NOT_CARE_1738 x_DO_NOT_CARE_1739 x_DO_NOT_CARE_1740 u_1045 x_DO_NOT_CARE_1735 x_DO_NOT_CARE_1736 x_DO_NOT_CARE_1737 e_EXPARAM_1254 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 e_1046 =
       e_1046 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
         ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
         set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
         (f4_1041 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
           u_1045)
  
     let main_1047 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394 u_1048
           set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
           c0_COEFFICIENT_1250 set_flag_f2_1402 s_f2_a_EXPARAM_1392
           s_f2_b_EXPARAM_1394
           (f5_1044 set_flag_f2_1402 s_f2_a_EXPARAM_1392 s_f2_b_EXPARAM_1394
             u_1048)
       in
         ()
  
     let main =
       main_1047 false 0 0 ()
")

(set-logic HORN)

(declare-fun |f3_1038$unknown:172|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_without_checking_1447$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:58|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:41|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:80|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_without_checking_1447$unknown:120|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_without_checking_1447$unknown:127|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_without_checking_1447$unknown:132|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:155|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:226|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:144| Int) (|$V-reftype:146| Int) (|$alpha-64:b_1037| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:132| |$V-reftype:146| |$V-reftype:146| |$V-reftype:144| |$V-reftype:142| |$alpha-64:b_1037| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:263| Int) (|$V-reftype:265| Int) (|$V-reftype:267| Int) (|$V-reftype:269| Int) (|$V-reftype:270| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f2_without_checking_1447$unknown:120| |$V-reftype:270| |$V-reftype:269| |$V-reftype:267| |$V-reftype:265| |$V-reftype:263| (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:80| |$V-reftype:270| |$V-reftype:269| |$V-reftype:267| |$V-reftype:265| |$V-reftype:263| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:528| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:530| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:534| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:534| |$cond-alpha-rename:533| |$cond-alpha-rename:532| |$cond-alpha-rename:531| |$cond-alpha-rename:530| |$cond-alpha-rename:529| |$cond-alpha-rename:528| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:41| |$cond-alpha-rename:531| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:531|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:531| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:195| Int) (|$V-reftype:197| Int) (|$V-reftype:199| Int) (|$V-reftype:201| Int) (|$V-reftype:203| Int) (|$V-reftype:205| Int) (|$V-reftype:207| Int) (|$V-reftype:219| Int) (|$V-reftype:221| Int) (|$V-reftype:223| Int) (|$V-reftype:225| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:487| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:543| Int) (|$cond-alpha-rename:544| Int) (|$cond-alpha-rename:545| Int) (|$cond-alpha-rename:546| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:549| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:488| |$cond-alpha-rename:487| |$cond-alpha-rename:486| |$cond-alpha-rename:546| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:482| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:549| |$cond-alpha-rename:548| |$cond-alpha-rename:547| |$cond-alpha-rename:546| |$cond-alpha-rename:545| |$cond-alpha-rename:544| |$cond-alpha-rename:543| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= (+ (* 0 |$cond-alpha-rename:546|) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 |$cond-alpha-rename:546|) (+ (* 0 (+ (* 0 0) 0)) 0))) (= 1 1) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:58| |$V-reftype:225| |$V-reftype:225| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:207| |$V-reftype:205| |$V-reftype:203| |$V-reftype:201| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$cond-alpha-rename:546| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:546|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:546| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:558| Int) (|$cond-alpha-rename:559| Int) (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:561| Int) (|$cond-alpha-rename:562| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:564| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f2_1034$unknown:41| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:560| |$cond-alpha-rename:559| |$cond-alpha-rename:558| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:110| |$V-reftype:102| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:561|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:561| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:123| Int) (|$cond-alpha-rename:573| Int) (|$cond-alpha-rename:574| Int) (|$cond-alpha-rename:575| Int) (|$cond-alpha-rename:576| Int) (|$cond-alpha-rename:577| Int) (|$cond-alpha-rename:578| Int) (|$cond-alpha-rename:579| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f2_1034$unknown:41| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:579| |$cond-alpha-rename:578| |$cond-alpha-rename:577| |$cond-alpha-rename:576| |$cond-alpha-rename:575| |$cond-alpha-rename:574| |$cond-alpha-rename:573| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:123| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$V-reftype:116| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:120| |$V-reftype:123| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$V-reftype:116| |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:576|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:576| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:70| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$knormal:72| 1) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:127| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:144| Int) (|$V-reftype:146| Int) (|$alpha-64:b_1037| Int) )
    (=>
      ( and (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:132| |$V-reftype:146| |$V-reftype:146| |$V-reftype:144| |$V-reftype:142| |$alpha-64:b_1037| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:263| Int) (|$V-reftype:265| Int) (|$V-reftype:267| Int) (|$V-reftype:269| Int) (|$V-reftype:270| Int) )
    (=>
      ( and (|f2_without_checking_1447$unknown:120| |$V-reftype:270| |$V-reftype:269| |$V-reftype:267| |$V-reftype:265| |$V-reftype:263| (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:80| |$V-reftype:270| |$V-reftype:269| |$V-reftype:267| |$V-reftype:265| |$V-reftype:263| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:588| Int) (|$cond-alpha-rename:589| Int) (|$cond-alpha-rename:590| Int) (|$cond-alpha-rename:591| Int) (|$cond-alpha-rename:592| Int) (|$cond-alpha-rename:593| Int) (|$cond-alpha-rename:594| Int) )
    (=>
      ( and (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:594| |$cond-alpha-rename:593| |$cond-alpha-rename:592| |$cond-alpha-rename:591| |$cond-alpha-rename:590| |$cond-alpha-rename:589| |$cond-alpha-rename:588| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:41| |$cond-alpha-rename:591| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:591|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:591| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:195| Int) (|$V-reftype:197| Int) (|$V-reftype:199| Int) (|$V-reftype:201| Int) (|$V-reftype:203| Int) (|$V-reftype:205| Int) (|$V-reftype:207| Int) (|$V-reftype:219| Int) (|$V-reftype:221| Int) (|$V-reftype:223| Int) (|$V-reftype:225| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:498| Int) (|$cond-alpha-rename:499| Int) (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:502| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:605| Int) (|$cond-alpha-rename:606| Int) (|$cond-alpha-rename:607| Int) (|$cond-alpha-rename:608| Int) (|$cond-alpha-rename:609| Int) )
    (=>
      ( and (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:503| |$cond-alpha-rename:502| |$cond-alpha-rename:501| |$cond-alpha-rename:606| |$cond-alpha-rename:499| |$cond-alpha-rename:498| |$cond-alpha-rename:497| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:609| |$cond-alpha-rename:608| |$cond-alpha-rename:607| |$cond-alpha-rename:606| |$cond-alpha-rename:605| |$cond-alpha-rename:604| |$cond-alpha-rename:603| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= (+ (* 0 |$cond-alpha-rename:606|) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 |$cond-alpha-rename:606|) (+ (* 0 (+ (* 0 0) 0)) 0))) (= 1 1) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_1034$unknown:58| |$V-reftype:225| |$V-reftype:225| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:207| |$V-reftype:205| |$V-reftype:203| |$V-reftype:201| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$cond-alpha-rename:606| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:606|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:606| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:618| Int) (|$cond-alpha-rename:619| Int) (|$cond-alpha-rename:620| Int) (|$cond-alpha-rename:621| Int) (|$cond-alpha-rename:622| Int) (|$cond-alpha-rename:623| Int) (|$cond-alpha-rename:624| Int) )
    (=>
      ( and (|f2_1034$unknown:41| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:624| |$cond-alpha-rename:623| |$cond-alpha-rename:622| |$cond-alpha-rename:621| |$cond-alpha-rename:620| |$cond-alpha-rename:619| |$cond-alpha-rename:618| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:110| |$V-reftype:102| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:621|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:621| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:123| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:634| Int) (|$cond-alpha-rename:635| Int) (|$cond-alpha-rename:636| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:638| Int) (|$cond-alpha-rename:639| Int) )
    (=>
      ( and (|f2_1034$unknown:41| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_without_checking_1447$unknown:127| |$cond-alpha-rename:639| |$cond-alpha-rename:638| |$cond-alpha-rename:637| |$cond-alpha-rename:636| |$cond-alpha-rename:635| |$cond-alpha-rename:634| |$cond-alpha-rename:633| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:123| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$V-reftype:116| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) (+ (* 0 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:120| |$V-reftype:123| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$V-reftype:116| |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 (+ (* 0 |$cond-alpha-rename:636|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:636| (+ (* 0 0) 0) 1 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) )
      (|f2_without_checking_1447$unknown:127| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:113| Int) (|$V-reftype:296| Int) (|$V-reftype:298| Int) (|$V-reftype:300| Int) (|$alpha-78:a_1040| Int) (|$cond-alpha-rename:1018| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1022| Int) )
    (=>
      ( and (|f2_1034$unknown:41| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f2_1034$unknown:58| |$V-reftype:113| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| (+ (* 0 |$V-reftype:300|) 0) |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 0 0 0 0 1 0 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f3_1038$unknown:172| |$V-reftype:113| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| (+ (* 0 |$V-reftype:300|) 0) |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1022| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:296| Int) (|$V-reftype:298| Int) (|$V-reftype:300| Int) (|$V-reftype:302| Int) (|$V-reftype:304| Int) (|$V-reftype:79| Int) (|$alpha-78:a_1040| Int) )
    (=>
      ( and (|f2_1034$unknown:41| |$V-reftype:79| |$V-reftype:304| |$V-reftype:302| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) )
      (|f3_1038$unknown:155| |$V-reftype:79| |$V-reftype:304| |$V-reftype:302| |$V-reftype:300| |$V-reftype:298| |$V-reftype:296| |$alpha-78:a_1040| 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) )
    (=>
      ( and (|f2_1034$unknown:80| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 0 0 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (not (exists ( )
    ( and (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) )
    )
  )
)
(check-sat)

(get-model)

