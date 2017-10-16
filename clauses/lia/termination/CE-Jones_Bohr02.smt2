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

(declare-fun |main_1047$unknown:167|
  ( Int Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:136|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:57|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:157|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:153|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:161|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1047$unknown:166|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:162|
  ( Int ) Bool
)

(declare-fun |f2_1034$unknown:61|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:48|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:44|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:14|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:40|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_without_checking_1535$unknown:125|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:91|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_without_checking_1535$unknown:117|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:83|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:87|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_without_checking_1535$unknown:121|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:95|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_without_checking_1535$unknown:129|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:163|
  ( Int Int ) Bool
)

(declare-fun |f3_1038$unknown:69|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:330| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:330| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:330| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:248| Int) (|$V-reftype:250| Int) (|$V-reftype:252| Int) (|$V-reftype:253| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_without_checking_1535$unknown:129| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      (|f3_1038$unknown:95| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:236| Int) (|$V-reftype:237| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:121| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      (|f3_1038$unknown:87| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:162| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (|f3_1038$unknown:83| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      (|f3_without_checking_1535$unknown:117| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:178| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (|f3_1038$unknown:91| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and true (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true (|bot$unknown:2| |$knormal:75| |$knormal:74|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:332| Int) (|$alpha-10:x_DO_NOT_CARE_1790| Int) (|$alpha-12:set_flag_f3_1504| Int) (|$alpha-13:s_f3_a_EXPARAM_1498| Int) (|$alpha-14:d_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1793| Int) (|$alpha-4:x_DO_NOT_CARE_1794| Int) (|$alpha-5:u_1031| Int) (|$alpha-6:x_DO_NOT_CARE_1791| Int) (|$alpha-7:x_DO_NOT_CARE_1792| Int) (|$alpha-8:c_EXPARAM_1293| Int) (|$alpha-9:x_DO_NOT_CARE_1789| Int) )
    (=>
      ( and (= |$V-reftype:332| |$alpha-14:d_1033|) true true true true true true true true true true true )
      (|f1_1030$unknown:18| |$V-reftype:332| |$alpha-14:d_1033| |$alpha-13:s_f3_a_EXPARAM_1498| |$alpha-12:set_flag_f3_1504| |$alpha-10:x_DO_NOT_CARE_1790| |$alpha-9:x_DO_NOT_CARE_1789| |$alpha-8:c_EXPARAM_1293| |$alpha-7:x_DO_NOT_CARE_1792| |$alpha-6:x_DO_NOT_CARE_1791| |$alpha-5:u_1031| |$alpha-4:x_DO_NOT_CARE_1794| |$alpha-3:x_DO_NOT_CARE_1793|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:77| Int) (|$alpha-15:x_DO_NOT_CARE_1787| Int) (|$alpha-16:x_DO_NOT_CARE_1788| Int) (|$alpha-17:u_1035| Int) (|$alpha-18:x_DO_NOT_CARE_1785| Int) (|$alpha-19:x_DO_NOT_CARE_1786| Int) (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-21:x_DO_NOT_CARE_1783| Int) (|$alpha-22:x_DO_NOT_CARE_1784| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-27:set_flag_f3_1504| Int) (|$alpha-28:s_f3_a_EXPARAM_1498| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (|f2_1034$unknown:40| |$V-reftype:77| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:10| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$knormal:14| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$alpha-22:x_DO_NOT_CARE_1784| |$alpha-21:x_DO_NOT_CARE_1783| |$alpha-20:a_EXPARAM_1279| |$alpha-19:x_DO_NOT_CARE_1786| |$alpha-18:x_DO_NOT_CARE_1785| |$alpha-17:u_1035| |$alpha-16:x_DO_NOT_CARE_1788| |$alpha-15:x_DO_NOT_CARE_1787|) true true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      (|f1_1030$unknown:14| |$V-reftype:77| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:10| |$alpha-17:u_1035| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:33| Int) (|$V-reftype:34| Int) (|$alpha-15:x_DO_NOT_CARE_1787| Int) (|$alpha-16:x_DO_NOT_CARE_1788| Int) (|$alpha-17:u_1035| Int) (|$alpha-18:x_DO_NOT_CARE_1785| Int) (|$alpha-19:x_DO_NOT_CARE_1786| Int) (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-21:x_DO_NOT_CARE_1783| Int) (|$alpha-22:x_DO_NOT_CARE_1784| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-27:set_flag_f3_1504| Int) (|$alpha-28:s_f3_a_EXPARAM_1498| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (|f1_1030$unknown:18| |$V-reftype:34| |$V-reftype:33| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:10| |$alpha-17:u_1035| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504|) true true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      (|f2_1034$unknown:44| |$V-reftype:34| |$V-reftype:33| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:10| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$knormal:14| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$alpha-22:x_DO_NOT_CARE_1784| |$alpha-21:x_DO_NOT_CARE_1783| |$alpha-20:a_EXPARAM_1279| |$alpha-19:x_DO_NOT_CARE_1786| |$alpha-18:x_DO_NOT_CARE_1785| |$alpha-17:u_1035| |$alpha-16:x_DO_NOT_CARE_1788| |$alpha-15:x_DO_NOT_CARE_1787|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:88| Int) (|$V-reftype:90| Int) (|$V-reftype:92| Int) (|$V-reftype:93| Int) (|$alpha-15:x_DO_NOT_CARE_1787| Int) (|$alpha-16:x_DO_NOT_CARE_1788| Int) (|$alpha-17:u_1035| Int) (|$alpha-18:x_DO_NOT_CARE_1785| Int) (|$alpha-19:x_DO_NOT_CARE_1786| Int) (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-21:x_DO_NOT_CARE_1783| Int) (|$alpha-22:x_DO_NOT_CARE_1784| Int) (|$alpha-24:x_DO_NOT_CARE_1781| Int) (|$alpha-25:x_DO_NOT_CARE_1782| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-27:set_flag_f3_1504| Int) (|$alpha-28:s_f3_a_EXPARAM_1498| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true (|f2_1034$unknown:48| |$V-reftype:93| |$V-reftype:92| |$V-reftype:90| |$V-reftype:88| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$knormal:14| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$alpha-22:x_DO_NOT_CARE_1784| |$alpha-21:x_DO_NOT_CARE_1783| |$alpha-20:a_EXPARAM_1279| |$alpha-19:x_DO_NOT_CARE_1786| |$alpha-18:x_DO_NOT_CARE_1785| |$alpha-17:u_1035| |$alpha-16:x_DO_NOT_CARE_1788| |$alpha-15:x_DO_NOT_CARE_1787|) true true true true true true true true )
      (|f2_1034$unknown:61| |$V-reftype:93| |$V-reftype:92| |$V-reftype:90| |$V-reftype:88| |$alpha-28:s_f3_a_EXPARAM_1498| |$alpha-27:set_flag_f3_1504| |$alpha-26:b_EXPARAM_1282| |$alpha-25:x_DO_NOT_CARE_1782| |$alpha-24:x_DO_NOT_CARE_1781| |$alpha-22:x_DO_NOT_CARE_1784| |$alpha-21:x_DO_NOT_CARE_1783| |$alpha-20:a_EXPARAM_1279| |$alpha-19:x_DO_NOT_CARE_1786| |$alpha-18:x_DO_NOT_CARE_1785| |$alpha-17:u_1035| |$alpha-16:x_DO_NOT_CARE_1788| |$alpha-15:x_DO_NOT_CARE_1787|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:a_EXPARAM_1279| Int) (|$alpha-26:b_EXPARAM_1282| Int) (|$alpha-30:c9_COEFFICIENT_1286| Int) (|$alpha-31:c8_COEFFICIENT_1285| Int) (|$alpha-32:c7_COEFFICIENT_1284| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-30:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-31:c8_COEFFICIENT_1285| |$alpha-20:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-32:c7_COEFFICIENT_1284| |$alpha-26:b_EXPARAM_1282|)) (= |$knormal:14| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-32:c7_COEFFICIENT_1284| 0) (= |$alpha-31:c8_COEFFICIENT_1285| 0) (= |$alpha-30:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:206| Int) (|$V-reftype:208| Int) (|$V-reftype:210| Int) (|$V-reftype:212| Int) (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:245| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-41:a_1040| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:125| |$V-reftype:245| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|) true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:48| |$V-reftype:245| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:35| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-35:u_1039| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:206| Int) (|$V-reftype:208| Int) (|$V-reftype:210| Int) (|$V-reftype:212| Int) (|$V-reftype:224| Int) (|$V-reftype:226| Int) (|$V-reftype:228| Int) (|$V-reftype:229| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-41:a_1040| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:117| |$V-reftype:229| |$V-reftype:228| |$V-reftype:226| |$V-reftype:224| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|) true true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:40| |$V-reftype:229| |$V-reftype:228| |$V-reftype:226| |$V-reftype:224| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:35| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-35:u_1039| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:206| Int) (|$V-reftype:208| Int) (|$V-reftype:210| Int) (|$V-reftype:212| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$V-reftype:84| Int) (|$V-reftype:85| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-41:a_1040| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (|f2_1034$unknown:44| |$V-reftype:85| |$V-reftype:84| |$V-reftype:82| |$V-reftype:80| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:35| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-35:u_1039| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504|) true true true true true true true true (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f3_without_checking_1535$unknown:121| |$V-reftype:85| |$V-reftype:84| |$V-reftype:82| |$V-reftype:80| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:212| |$V-reftype:210| |$V-reftype:208| |$V-reftype:206| |$alpha-41:a_1040| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:248| Int) (|$V-reftype:250| Int) (|$V-reftype:252| Int) (|$V-reftype:253| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_without_checking_1535$unknown:129| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      (|f3_1038$unknown:95| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:236| Int) (|$V-reftype:237| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:121| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      (|f3_1038$unknown:87| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:162| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (|f3_1038$unknown:83| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      (|f3_without_checking_1535$unknown:117| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:178| Int) (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-56:a_1040| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (|f3_1038$unknown:91| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and true (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) true true (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:76| 1) (= |$knormal:74| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|fail$unknown:163| |$knormal:77| |$knormal:76|) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| 1) (not (= 0 |$alpha-54:prev_set_flag_f3_1503|)) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      (|fail$unknown:162| |$knormal:76|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:x_DO_NOT_CARE_1539| Int) (|$alpha-49:x_DO_NOT_CARE_1540| Int) (|$alpha-50:u_1039| Int) (|$alpha-51:x_DO_NOT_CARE_1537| Int) (|$alpha-52:x_DO_NOT_CARE_1538| Int) (|$alpha-53:a_EXPARAM_1261| Int) (|$alpha-54:prev_set_flag_f3_1503| Int) (|$alpha-55:s_prev_f3_a_EXPARAM_1501| Int) (|$alpha-58:u| Int) )
    (=>
      ( and (= |$alpha-58:u| 1) (not (not (= 0 |$alpha-54:prev_set_flag_f3_1503|))) (|f3_1038$unknown:69| |$alpha-55:s_prev_f3_a_EXPARAM_1501| |$alpha-54:prev_set_flag_f3_1503| |$alpha-53:a_EXPARAM_1261| |$alpha-52:x_DO_NOT_CARE_1538| |$alpha-51:x_DO_NOT_CARE_1537| |$alpha-50:u_1039| |$alpha-49:x_DO_NOT_CARE_1540| |$alpha-48:x_DO_NOT_CARE_1539|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$V-reftype:310| Int) (|$V-reftype:312| Int) (|$V-reftype:314| Int) (|$V-reftype:315| Int) (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) (|$knormal:101| Int) )
    (=>
      ( and (|f5_1044$unknown:161| |$V-reftype:315| |$V-reftype:314| |$V-reftype:312| |$V-reftype:310| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      (|f3_1038$unknown:91| |$V-reftype:315| |$V-reftype:314| |$V-reftype:312| |$V-reftype:310| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-79:c0_COEFFICIENT_1250| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:298| Int) (|$V-reftype:299| Int) (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) (|$knormal:101| Int) )
    (=>
      ( and (|f5_1044$unknown:153| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:147| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      (|f3_1038$unknown:83| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:147| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-79:c0_COEFFICIENT_1250| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:170| Int) (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) (|$knormal:101| Int) )
    (=>
      ( and (|f3_1038$unknown:87| |$V-reftype:170| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:147| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-79:c0_COEFFICIENT_1250| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      (|f5_1044$unknown:157| |$V-reftype:170| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:147| |$V-reftype:282| |$V-reftype:280| |$V-reftype:278| |$V-reftype:276| |$knormal:101| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:104| Int) (|$V-reftype:224| Int) (|$V-reftype:226| Int) (|$V-reftype:228| Int) (|$V-reftype:229| Int) (|$V-reftype:98| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:43| Int) (|$knormal:47| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:117| |$V-reftype:229| |$V-reftype:228| |$V-reftype:226| |$V-reftype:224| |$V-reftype:104| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$knormal:43| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:47| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|) true true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:57| |$V-reftype:229| |$V-reftype:228| |$V-reftype:226| |$V-reftype:224| |$V-reftype:104| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$knormal:43| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:35| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-35:u_1039| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:104| Int) (|$V-reftype:114| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:119| Int) (|$V-reftype:98| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:43| Int) (|$knormal:47| Int) )
    (=>
      ( and (|f2_1034$unknown:61| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$V-reftype:104| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$knormal:43| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:35| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-35:u_1039| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504|) true true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f3_without_checking_1535$unknown:121| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$V-reftype:104| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$knormal:43| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:47| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and true (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:245| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true (|f3_without_checking_1535$unknown:125| |$V-reftype:245| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$knormal:47| |$alpha-38:a_EXPARAM_1261| |$alpha-46:set_flag_f3_1504| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|) true true true true )
      (|f3_without_checking_1535$unknown:129| |$V-reftype:245| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:35| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$knormal:24| |$alpha-42:c6_COEFFICIENT_1273|)) (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$knormal:24| (* |$alpha-43:c5_COEFFICIENT_1272| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-42:c6_COEFFICIENT_1273| Int) (|$alpha-43:c5_COEFFICIENT_1272| Int) (|$alpha-44:c4_COEFFICIENT_1267| Int) (|$alpha-45:c3_COEFFICIENT_1266| Int) (|$alpha-46:set_flag_f3_1504| Int) (|$knormal:25| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (+ |$knormal:25| |$alpha-44:c4_COEFFICIENT_1267|)) (= |$knormal:25| (* |$alpha-45:c3_COEFFICIENT_1266| |$alpha-38:a_EXPARAM_1261|)) (= |$alpha-46:set_flag_f3_1504| 1) (= |$alpha-45:c3_COEFFICIENT_1266| 0) (= |$alpha-44:c4_COEFFICIENT_1267| 0) (= |$alpha-43:c5_COEFFICIENT_1272| 0) (= |$alpha-42:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:352| Int) (|$alpha-59:x_DO_NOT_CARE_1775| Int) (|$alpha-60:x_DO_NOT_CARE_1776| Int) (|$alpha-61:u_1042| Int) (|$alpha-62:set_flag_f3_1504| Int) (|$alpha-63:s_f3_a_EXPARAM_1498| Int) (|$alpha-64:v_1043| Int) )
    (=>
      ( and (= |$V-reftype:352| |$alpha-64:v_1043|) true true true true true true )
      (|f4_1041$unknown:136| |$V-reftype:352| |$alpha-64:v_1043| |$alpha-63:s_f3_a_EXPARAM_1498| |$alpha-62:set_flag_f3_1504| |$alpha-61:u_1042| |$alpha-60:x_DO_NOT_CARE_1776| |$alpha-59:x_DO_NOT_CARE_1775|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:263| Int) (|$V-reftype:265| Int) (|$V-reftype:266| Int) (|$alpha-65:x_DO_NOT_CARE_1773| Int) (|$alpha-66:x_DO_NOT_CARE_1774| Int) (|$alpha-67:u_1045| Int) (|$alpha-68:x_DO_NOT_CARE_1771| Int) (|$alpha-69:x_DO_NOT_CARE_1772| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:set_flag_f3_1504| Int) (|$alpha-72:s_f3_a_EXPARAM_1498| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true true true (|f4_1041$unknown:136| |$V-reftype:266| |$V-reftype:265| |$V-reftype:263| |$knormal:83| |$alpha-67:u_1045| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504|) )
      (|f5_1044$unknown:153| |$V-reftype:266| |$V-reftype:265| |$V-reftype:263| |$knormal:83| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$knormal:87| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1772| |$alpha-68:x_DO_NOT_CARE_1771| |$alpha-67:u_1045| |$alpha-66:x_DO_NOT_CARE_1774| |$alpha-65:x_DO_NOT_CARE_1773|)
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:302| Int) (|$V-reftype:304| Int) (|$V-reftype:306| Int) (|$V-reftype:307| Int) (|$alpha-65:x_DO_NOT_CARE_1773| Int) (|$alpha-66:x_DO_NOT_CARE_1774| Int) (|$alpha-67:u_1045| Int) (|$alpha-68:x_DO_NOT_CARE_1771| Int) (|$alpha-69:x_DO_NOT_CARE_1772| Int) (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-71:set_flag_f3_1504| Int) (|$alpha-72:s_f3_a_EXPARAM_1498| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true (|f5_1044$unknown:157| |$V-reftype:307| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$knormal:87| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1772| |$alpha-68:x_DO_NOT_CARE_1771| |$alpha-67:u_1045| |$alpha-66:x_DO_NOT_CARE_1774| |$alpha-65:x_DO_NOT_CARE_1773|) true true true true true true true true )
      (|f5_1044$unknown:161| |$V-reftype:307| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$alpha-72:s_f3_a_EXPARAM_1498| |$alpha-71:set_flag_f3_1504| |$alpha-70:e_EXPARAM_1254| |$alpha-69:x_DO_NOT_CARE_1772| |$alpha-68:x_DO_NOT_CARE_1771| |$alpha-67:u_1045| |$alpha-66:x_DO_NOT_CARE_1774| |$alpha-65:x_DO_NOT_CARE_1773|)
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-70:e_EXPARAM_1254| Int) (|$alpha-74:c2_COEFFICIENT_1257| Int) (|$alpha-75:c1_COEFFICIENT_1256| Int) (|$knormal:78| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| (+ |$knormal:78| |$alpha-74:c2_COEFFICIENT_1257|)) (= |$knormal:78| (* |$alpha-75:c1_COEFFICIENT_1256| |$alpha-70:e_EXPARAM_1254|)) (= |$alpha-75:c1_COEFFICIENT_1256| 0) (= |$alpha-74:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:162| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:358| Int) (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (= |$V-reftype:358| 1) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      (|main_1047$unknown:167| |$V-reftype:358| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      (|f3_1038$unknown:69| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-79:c0_COEFFICIENT_1250| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|)
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-76:set_flag_f3_1504| Int) (|$alpha-77:s_f3_a_EXPARAM_1498| Int) (|$alpha-78:u_1048| Int) (|$alpha-79:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-79:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:166| |$alpha-78:u_1048| |$alpha-77:s_f3_a_EXPARAM_1498| |$alpha-76:set_flag_f3_1504|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:120| Int) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:125| 1) (= |$knormal:122| 0) (= |$knormal:120| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:120| Int) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:125| 1) (= |$knormal:122| 0) (= |$knormal:120| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:120| Int) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:125| 1) (= |$knormal:122| 0) (= |$knormal:120| 0) )
      (|main_1047$unknown:166| |$knormal:125| |$knormal:122| |$knormal:120|)
    )
  )
)
(check-sat)

(get-model)

(exit)

