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
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16808| Int) (|$cond-alpha-rename:16810| Int) (|$cond-alpha-rename:16872| Int) (|$cond-alpha-rename:16874| Int) (|$cond-alpha-rename:17000| Int) (|$cond-alpha-rename:17002| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16808| 1) (|bot$unknown:2| |$cond-alpha-rename:16872| 1) (|bot$unknown:2| |$cond-alpha-rename:17000| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16810| 1) (|fail$unknown:226| |$cond-alpha-rename:16874| 1) (|fail$unknown:226| |$cond-alpha-rename:17002| 1) (not (= 0 0)) (not (= 0 0)) (not (= 0 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16808| Int) (|$cond-alpha-rename:16810| Int) (|$cond-alpha-rename:16872| Int) (|$cond-alpha-rename:16874| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16808| 1) (|bot$unknown:2| |$cond-alpha-rename:16872| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16810| 1) (|fail$unknown:226| |$cond-alpha-rename:16874| 1) (not (= 0 0)) (not (= 0 0)) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16808| Int) (|$cond-alpha-rename:16810| Int) (|$cond-alpha-rename:17064| Int) (|$cond-alpha-rename:17066| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16808| 1) (|bot$unknown:2| |$cond-alpha-rename:17064| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16810| 1) (|fail$unknown:226| |$cond-alpha-rename:17066| 1) (not (= 0 0)) (not (= 0 0)) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16808| Int) (|$cond-alpha-rename:16810| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16808| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16810| 1) (not (= 0 0)) (not (not (= 0 0))) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16936| Int) (|$cond-alpha-rename:16938| Int) (|$cond-alpha-rename:17128| Int) (|$cond-alpha-rename:17130| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16936| 1) (|bot$unknown:2| |$cond-alpha-rename:17128| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16938| 1) (|fail$unknown:226| |$cond-alpha-rename:17130| 1) (not (= 0 0)) (not (= 0 0)) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:16936| Int) (|$cond-alpha-rename:16938| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:16936| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:16938| 1) (not (= 0 0)) (not (not (= 0 0))) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$cond-alpha-rename:17192| Int) (|$cond-alpha-rename:17194| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:17192| 1) (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:17194| 1) (not (= 0 0)) (not (not (= 0 0))) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) )
    (=>
      ( and (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 0) 0)) (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (not (not (= 0 0))) (not (not (= 0 0))) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= (+ (* 0 (+ (* 0 0) 0)) 0) (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:112| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:106| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:17320| Int) (|$cond-alpha-rename:17322| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:17320| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:17322| 1) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 1 1) )
      (|f3_1038$unknown:155| (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 (+ (* 0 (+ (* 0 0) 0)) 0) 0 1 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$cond-alpha-rename:18856| Int) (|$cond-alpha-rename:18858| Int) (|$cond-alpha-rename:19048| Int) (|$cond-alpha-rename:19050| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:18856| 1) (|bot$unknown:2| |$cond-alpha-rename:19048| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:18858| 1) (|fail$unknown:226| |$cond-alpha-rename:19050| 1) (not (= 0 0)) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$cond-alpha-rename:18856| Int) (|$cond-alpha-rename:18858| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:18856| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:18858| 1) (not (= 0 0)) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$cond-alpha-rename:19112| Int) (|$cond-alpha-rename:19114| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:19112| 1) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|fail$unknown:226| |$cond-alpha-rename:19114| 1) (not (= 0 0)) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) )
    (=>
      ( and (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| 0 0 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:155| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 0) (+ (* 0 0) 0) 1 (+ 0 (+ 0 0)) (+ 0 0) (+ (* 0 0) 0) 1 0 0 0 0 0 0 0 1 0 0 0) (not (not (= 0 0))) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 0 (+ (* 0 0) 0)) (= 0 (+ (* 0 (+ (* 0 0) 0)) 0)) (= 1 1) )
      (|f3_1038$unknown:172| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      (|f3_1038$unknown:155| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0)
    )
  )
)
(assert
  (not (exists ( (unused Int) )
    ( and (not (= 0 0)) (|f3_1038$unknown:155| 0 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 0 0 0 1 0 0 0) )
    )
  )
)
(check-sat)

(get-model)

(exit)

