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
  
     let f1_1030 x_DO_NOT_CARE_1829 x_DO_NOT_CARE_1830 u_1031 x_DO_NOT_CARE_1827 x_DO_NOT_CARE_1828 c_EXPARAM_1293 x_DO_NOT_CARE_1825 x_DO_NOT_CARE_1826 c_1032 set_flag_f5_1677 s_f5_e_EXPARAM_1671 d_1033 =
       d_1033
  
     let f2_1034 x_DO_NOT_CARE_1823 x_DO_NOT_CARE_1824 u_1035 x_DO_NOT_CARE_1821 x_DO_NOT_CARE_1822 a_EXPARAM_1279 x_DO_NOT_CARE_1819 x_DO_NOT_CARE_1820 a_1036 x_DO_NOT_CARE_1817 x_DO_NOT_CARE_1818 b_EXPARAM_1282 set_flag_f5_1677 s_f5_e_EXPARAM_1671 b_1037 =
       a_1036 set_flag_f5_1677 s_f5_e_EXPARAM_1671
         ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
          ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
         set_flag_f5_1677 s_f5_e_EXPARAM_1671
         (f1_1030 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1035)
  
     let f3_1038 x_DO_NOT_CARE_1815 x_DO_NOT_CARE_1816 u_1039 x_DO_NOT_CARE_1813 x_DO_NOT_CARE_1814 a_EXPARAM_1261 set_flag_f5_1677 s_f5_e_EXPARAM_1671 a_1040 =
       a_1040 set_flag_f5_1677 s_f5_e_EXPARAM_1671
         ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
         set_flag_f5_1677 s_f5_e_EXPARAM_1671
         (f2_1034 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1039 set_flag_f5_1677
           s_f5_e_EXPARAM_1671
           ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
           set_flag_f5_1677 s_f5_e_EXPARAM_1671 a_1040)
  
     let f4_1041 x_DO_NOT_CARE_1811 x_DO_NOT_CARE_1812 u_1042 set_flag_f5_1677 s_f5_e_EXPARAM_1671 v_1043 =
       v_1043
  
     let f5_without_checking_1690 x_DO_NOT_CARE_1809 x_DO_NOT_CARE_1810 u_1045 x_DO_NOT_CARE_1807 x_DO_NOT_CARE_1808 e_EXPARAM_1254 set_flag_f5_1677 s_f5_e_EXPARAM_1671 e_1046 =
       let set_flag_f5_1677 = true
       in
       let s_f5_e_EXPARAM_1671 = e_EXPARAM_1254
       in
         e_1046 set_flag_f5_1677 s_f5_e_EXPARAM_1671
           ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
           set_flag_f5_1677 s_f5_e_EXPARAM_1671
           (f4_1041 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1045)
  
     let rec f5_1044 x_DO_NOT_CARE_1694 x_DO_NOT_CARE_1695 u_1045 x_DO_NOT_CARE_1692 x_DO_NOT_CARE_1693 e_EXPARAM_1254 prev_set_flag_f5_1676 s_prev_f5_e_EXPARAM_1674 e_1046 =
       let u = if prev_set_flag_f5_1676 then
                if (-1 * 1) + (-s_prev_f5_e_EXPARAM_1674) >
                   (-1 * 1) + (-e_EXPARAM_1254) &&
                   (-1 * 1) + (-e_EXPARAM_1254) >= 0 then
                  ()
                else
                  let u_27527 = fail ()
                  in
                    bot()
               else
                 ()
                   in
              f5_without_checking_1690 x_DO_NOT_CARE_1694 x_DO_NOT_CARE_1695
                u_1045 x_DO_NOT_CARE_1692 x_DO_NOT_CARE_1693 e_EXPARAM_1254
                prev_set_flag_f5_1676 s_prev_f5_e_EXPARAM_1674 e_1046
  
     let main_1047 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1048 set_flag_f5_1677
           s_f5_e_EXPARAM_1671 c0_COEFFICIENT_1250 set_flag_f5_1677
           s_f5_e_EXPARAM_1671
           (f5_1044 set_flag_f5_1677 s_f5_e_EXPARAM_1671 u_1048)
       in
         ()
  
     let main =
       main_1047 false 0 ()
")

(set-logic HORN)

(declare-fun |f3_1038$unknown:87|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:115|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:119|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:127|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:74|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_without_checking_1690$unknown:135|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_without_checking_1690$unknown:148|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:154|
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
  (forall ( (|$V-reftype:292| Int) (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:297| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$knormal:106| Int) (|$knormal:108| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:106| 1) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:148| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-70:e_EXPARAM_1254| 1 (+ (* 0 |$alpha-70:e_EXPARAM_1254|) 0) |$alpha-70:e_EXPARAM_1254| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|fail$unknown:154| |$knormal:108| 1) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (not (and (>= (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|)) 0) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|))))) )
      (|f5_1044$unknown:127| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:628| Int) (|$knormal:106| Int) (|$knormal:108| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:106| 1) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:628| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:628| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:628| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|fail$unknown:154| |$knormal:108| 1) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (not (and (>= (+ (- 1) (- |$cond-alpha-rename:628|)) 0) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:628|))))) (= (+ (* 0 |$cond-alpha-rename:628|) 0) (+ (* 0 |$cond-alpha-rename:628|) 0)) (= 1 1) )
      (|f5_1044$unknown:119| |$V-reftype:280| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$cond-alpha-rename:628| 1 (+ (* 0 |$cond-alpha-rename:628|) 0) |$cond-alpha-rename:628| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:628| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:235| Int) (|$V-reftype:237| Int) (|$V-reftype:239| Int) (|$V-reftype:240| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:588| Int) (|$knormal:106| Int) (|$knormal:108| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:106| 1) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:87| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:588| 1 (+ (* 0 |$cond-alpha-rename:588|) 0) |$cond-alpha-rename:588| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:588| 1 (+ (* 0 |$cond-alpha-rename:588|) 0) |$cond-alpha-rename:588| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|fail$unknown:154| |$knormal:108| 1) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (not (and (>= (+ (- 1) (- |$cond-alpha-rename:588|)) 0) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:588|))))) )
      (|f5_without_checking_1690$unknown:148| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:588| 1 (+ (* 0 |$cond-alpha-rename:588|) 0) |$cond-alpha-rename:588| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:588| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:593| Int) (|$knormal:106| Int) (|$knormal:108| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:106| 1) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:593| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:593| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|fail$unknown:154| |$knormal:108| 1) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (not (and (>= (+ (- 1) (- |$cond-alpha-rename:593|)) 0) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:593|))))) )
      (|f5_1044$unknown:115| |$cond-alpha-rename:593| 1 (+ (* 0 |$cond-alpha-rename:593|) 0) |$cond-alpha-rename:593| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:593| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$knormal:106| Int) (|$knormal:108| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:106| 1) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|fail$unknown:154| |$knormal:108| 1) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (not (and (>= (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|)) 0) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|))))) )
      (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$V-reftype:84| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$cond-alpha-rename:170| |$cond-alpha-rename:169| (+ (* 0 |$cond-alpha-rename:103|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:170| |$cond-alpha-rename:169| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$cond-alpha-rename:170| |$cond-alpha-rename:169| (+ (* 0 |$cond-alpha-rename:103|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:170| |$cond-alpha-rename:169| 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:170| |$cond-alpha-rename:169| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:170| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:166| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (= (+ (* 0 |$cond-alpha-rename:103|) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 |$cond-alpha-rename:168|) (+ (* 0 (+ (* 0 0) 0)) 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) )
      (|f3_1038$unknown:87| |$V-reftype:84| |$V-reftype:84| |$V-reftype:82| |$V-reftype:80| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$cond-alpha-rename:170| |$cond-alpha-rename:169| (+ (* 0 |$cond-alpha-rename:103|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:170| |$cond-alpha-rename:169| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) )
    (=>
      ( and (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:112| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) )
      (|f3_1038$unknown:74| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (+ (* 0 |$cond-alpha-rename:114|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:116| |$cond-alpha-rename:115| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:114| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:119| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:414| Int) (|$cond-alpha-rename:415| Int) (|$cond-alpha-rename:416| Int) (|$cond-alpha-rename:417| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$cond-alpha-rename:417| |$cond-alpha-rename:416| (+ (* 0 |$cond-alpha-rename:415|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:417| |$cond-alpha-rename:416| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:417| |$cond-alpha-rename:416| |$V-reftype:100| |$V-reftype:98| |$knormal:43| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:417| |$cond-alpha-rename:416| |$V-reftype:100| |$V-reftype:98| |$knormal:43| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:417| |$cond-alpha-rename:416| |$cond-alpha-rename:415| |$cond-alpha-rename:414| |$cond-alpha-rename:413| 0 0 (+ (* 0 0) 0) 0 0 1 0 0) (|f5_1044$unknown:127| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$cond-alpha-rename:417| |$cond-alpha-rename:416| (+ (* 0 |$cond-alpha-rename:415|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:417| |$cond-alpha-rename:416| 1 0 0) (= (+ (* 0 |$cond-alpha-rename:415|) (+ (* 0 (+ (* 0 0) 0)) 0)) (+ (* 0 |$V-reftype:100|) (+ (* 0 (+ (* 0 0) 0)) 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) (= (+ (* 0 0) 0) (+ (* 0 0) 0)) )
      (|f3_1038$unknown:87| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$cond-alpha-rename:417| |$cond-alpha-rename:416| |$V-reftype:100| |$V-reftype:98| |$knormal:43| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|f3_1038$unknown:74| 0 0 (+ (* 0 0) 0) 0 0 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:292| Int) (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:297| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:148| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-70:e_EXPARAM_1254| 1 (+ (* 0 |$alpha-70:e_EXPARAM_1254|) 0) |$alpha-70:e_EXPARAM_1254| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|))) (>= (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|)) 0) )
      (|f5_1044$unknown:127| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:292| Int) (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:297| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:148| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-70:e_EXPARAM_1254| 1 (+ (* 0 |$alpha-70:e_EXPARAM_1254|) 0) |$alpha-70:e_EXPARAM_1254| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (not (= 0 |$alpha-71:prev_set_flag_f5_1676|))) )
      (|f5_1044$unknown:127| |$V-reftype:297| |$V-reftype:296| |$V-reftype:294| |$V-reftype:292| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:633| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:633| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:633| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:633| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:633|))) (>= (+ (- 1) (- |$cond-alpha-rename:633|)) 0) (= (+ (* 0 |$cond-alpha-rename:633|) 0) (+ (* 0 |$cond-alpha-rename:633|) 0)) (= 1 1) )
      (|f5_1044$unknown:119| |$V-reftype:280| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$cond-alpha-rename:633| 1 (+ (* 0 |$cond-alpha-rename:633|) 0) |$cond-alpha-rename:633| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:633| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:235| Int) (|$V-reftype:237| Int) (|$V-reftype:239| Int) (|$V-reftype:240| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:603| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:87| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:603| 1 (+ (* 0 |$cond-alpha-rename:603|) 0) |$cond-alpha-rename:603| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:603| 1 (+ (* 0 |$cond-alpha-rename:603|) 0) |$cond-alpha-rename:603| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:603|))) (>= (+ (- 1) (- |$cond-alpha-rename:603|)) 0) )
      (|f5_without_checking_1690$unknown:148| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:603| 1 (+ (* 0 |$cond-alpha-rename:603|) 0) |$cond-alpha-rename:603| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:603| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:638| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:638| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:638| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:638| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (not (= 0 |$alpha-71:prev_set_flag_f5_1676|))) (= (+ (* 0 |$cond-alpha-rename:638|) 0) (+ (* 0 |$cond-alpha-rename:638|) 0)) (= 1 1) )
      (|f5_1044$unknown:119| |$V-reftype:280| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$cond-alpha-rename:638| 1 (+ (* 0 |$cond-alpha-rename:638|) 0) |$cond-alpha-rename:638| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:638| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:235| Int) (|$V-reftype:237| Int) (|$V-reftype:239| Int) (|$V-reftype:240| Int) (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:613| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f3_1038$unknown:87| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:613| 1 (+ (* 0 |$cond-alpha-rename:613|) 0) |$cond-alpha-rename:613| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_1044$unknown:115| |$cond-alpha-rename:613| 1 (+ (* 0 |$cond-alpha-rename:613|) 0) |$cond-alpha-rename:613| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (not (= 0 |$alpha-71:prev_set_flag_f5_1676|))) )
      (|f5_without_checking_1690$unknown:148| |$V-reftype:240| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$cond-alpha-rename:613| 1 (+ (* 0 |$cond-alpha-rename:613|) 0) |$cond-alpha-rename:613| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:613| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:618| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:618| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:618| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$cond-alpha-rename:618|))) (>= (+ (- 1) (- |$cond-alpha-rename:618|)) 0) )
      (|f5_1044$unknown:115| |$cond-alpha-rename:618| 1 (+ (* 0 |$cond-alpha-rename:618|) 0) |$cond-alpha-rename:618| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:618| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) (|$cond-alpha-rename:623| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:623| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:623| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0) (not (not (= 0 |$alpha-71:prev_set_flag_f5_1676|))) )
      (|f5_1044$unknown:115| |$cond-alpha-rename:623| 1 (+ (* 0 |$cond-alpha-rename:623|) 0) |$cond-alpha-rename:623| 1 |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$cond-alpha-rename:623| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (not (= 0 |$alpha-71:prev_set_flag_f5_1676|)) (> (+ (- 1) (- |$alpha-72:s_prev_f5_e_EXPARAM_1674|)) (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|))) (>= (+ (- 1) (- |$alpha-70:e_EXPARAM_1254|)) 0) )
      (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1692| Int) (|$alpha-69:x_DO_NOT_CARE_1693| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:prev_set_flag_f5_1676| Int) (|$alpha-72:s_prev_f5_e_EXPARAM_1674| Int) )
    (=>
      ( and (|f3_1038$unknown:74| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 0 0 0 0 0 1 0 0) (not (not (= 0 |$alpha-71:prev_set_flag_f5_1676|))) )
      (|f5_without_checking_1690$unknown:135| |$alpha-72:s_prev_f5_e_EXPARAM_1674| |$alpha-71:prev_set_flag_f5_1676| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1693| |$alpha-68:x_DO_NOT_CARE_1692| 1 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:663| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) )
    ( and (|f3_1038$unknown:74| |$cond-alpha-rename:665| |$cond-alpha-rename:664| |$cond-alpha-rename:663| |$cond-alpha-rename:662| |$cond-alpha-rename:661| 0 0 0 0 0 1 0 0) (not (= 0 |$cond-alpha-rename:664|)) (not (and (>= (+ (- 1) (- |$cond-alpha-rename:663|)) 0) (> (+ (- 1) (- |$cond-alpha-rename:665|)) (+ (- 1) (- |$cond-alpha-rename:663|))))) )
    )
  )
)
(check-sat)

(get-model)

