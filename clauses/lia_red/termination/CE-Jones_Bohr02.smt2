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
  
     let f1_1030 x_DO_NOT_CARE_1793 x_DO_NOT_CARE_1794 u_1031 x_DO_NOT_CARE_1791 x_DO_NOT_CARE_1792 c_EXPARAM_1293 x_DO_NOT_CARE_1789 x_DO_NOT_CARE_1790 c_1032 set_flag_f3_1504 s_f3_a_EXPARAM_1498 d_1033 =
       d_1033
  
     let f2_1034 x_DO_NOT_CARE_1787 x_DO_NOT_CARE_1788 u_1035 x_DO_NOT_CARE_1785 x_DO_NOT_CARE_1786 a_EXPARAM_1279 x_DO_NOT_CARE_1783 x_DO_NOT_CARE_1784 a_1036 x_DO_NOT_CARE_1781 x_DO_NOT_CARE_1782 b_EXPARAM_1282 set_flag_f3_1504 s_f3_a_EXPARAM_1498 b_1037 =
       a_1036 set_flag_f3_1504 s_f3_a_EXPARAM_1498
         ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
          ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
         set_flag_f3_1504 s_f3_a_EXPARAM_1498
         (f1_1030 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1035)
  
     let f3_without_checking_1535 x_DO_NOT_CARE_1779 x_DO_NOT_CARE_1780 u_1039 x_DO_NOT_CARE_1777 x_DO_NOT_CARE_1778 a_EXPARAM_1261 set_flag_f3_1504 s_f3_a_EXPARAM_1498 a_1040 =
       let set_flag_f3_1504 = true
       in
       let s_f3_a_EXPARAM_1498 = a_EXPARAM_1261
       in
         a_1040 set_flag_f3_1504 s_f3_a_EXPARAM_1498
           ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
           set_flag_f3_1504 s_f3_a_EXPARAM_1498
           (f2_1034 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1039 set_flag_f3_1504
             s_f3_a_EXPARAM_1498
             ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
             set_flag_f3_1504 s_f3_a_EXPARAM_1498 a_1040)
  
     let rec f3_1038 x_DO_NOT_CARE_1539 x_DO_NOT_CARE_1540 u_1039 x_DO_NOT_CARE_1537 x_DO_NOT_CARE_1538 a_EXPARAM_1261 prev_set_flag_f3_1503 s_prev_f3_a_EXPARAM_1501 a_1040 =
       let u = if prev_set_flag_f3_1503 then
                let u_15524 = fail ()
                in
                  bot()
               else () in
              f3_without_checking_1535 x_DO_NOT_CARE_1539 x_DO_NOT_CARE_1540
                u_1039 x_DO_NOT_CARE_1537 x_DO_NOT_CARE_1538 a_EXPARAM_1261
                prev_set_flag_f3_1503 s_prev_f3_a_EXPARAM_1501 a_1040
  
     let f4_1041 x_DO_NOT_CARE_1775 x_DO_NOT_CARE_1776 u_1042 set_flag_f3_1504 s_f3_a_EXPARAM_1498 v_1043 =
       v_1043
  
     let f5_1044 x_DO_NOT_CARE_1773 x_DO_NOT_CARE_1774 u_1045 x_DO_NOT_CARE_1771 x_DO_NOT_CARE_1772 e_EXPARAM_1254 set_flag_f3_1504 s_f3_a_EXPARAM_1498 e_1046 =
       e_1046 set_flag_f3_1504 s_f3_a_EXPARAM_1498
         ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
         set_flag_f3_1504 s_f3_a_EXPARAM_1498
         (f4_1041 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1045)
  
     let main_1047 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1048 set_flag_f3_1504
           s_f3_a_EXPARAM_1498 c0_COEFFICIENT_1250 set_flag_f3_1504
           s_f3_a_EXPARAM_1498
           (f5_1044 set_flag_f3_1504 s_f3_a_EXPARAM_1498 u_1048)
       in
         ()
  
     let main =
       main_1047 false 0 ()
")

(set-logic HORN)

(declare-fun |f3_without_checking_1535$unknown:125|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$cond-alpha-rename:2005| Int) (|$cond-alpha-rename:2006| Int) (|$cond-alpha-rename:2007| Int) )
    (=>
      ( and (= 1 1) (= 0 0) )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:177| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$cond-alpha-rename:2007| |$cond-alpha-rename:2006| (+ (* 0 |$cond-alpha-rename:2005|) (+ (* 0 (+ 0 0)) 0)) |$cond-alpha-rename:2007| |$cond-alpha-rename:2006| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:178| Int) (|$cond-alpha-rename:2025| Int) (|$cond-alpha-rename:2026| Int) (|$cond-alpha-rename:2027| Int) (|$cond-alpha-rename:2028| Int) (|$cond-alpha-rename:2030| Int) (|$cond-alpha-rename:2031| Int) )
    (=>
      ( and (= 1 1) (= 0 0) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= 1 1) (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| 0 1 (+ 0 (+ (* 0 (+ (* 0 0) 0)) 0)) 0 1 |$cond-alpha-rename:2031| |$cond-alpha-rename:2030| 0 |$cond-alpha-rename:2028| |$cond-alpha-rename:2027| 1 |$cond-alpha-rename:2026| |$cond-alpha-rename:2025|) )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| 0 1 (+ (* 0 0) 0) 0 1 0 0 0 0 0 1 0 0)
    )
  )
)
(check-sat)

(get-model)

