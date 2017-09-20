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

(declare-fun |f3_without_checking_1535$unknown:117|
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

(declare-fun |f3_without_checking_1535$unknown:125|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:163|
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
  (forall ( (|$V-reftype:248| Int) (|$V-reftype:250| Int) (|$V-reftype:252| Int) (|$V-reftype:253| Int) (|$knormal:75| Int) (|$knormal:77| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:75| 1) (|f3_without_checking_1535$unknown:125| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| 0 1 (+ (* 0 0) 0) 0 1 0 0 0 0 0 1 0 0) (|fail$unknown:163| |$knormal:77| 1) (not (= 0 0)) )
      (|f3_1038$unknown:95| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:236| Int) (|$V-reftype:237| Int) (|$alpha-56:a_1040| Int) (|$knormal:75| Int) (|$knormal:77| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:75| 1) (|f3_without_checking_1535$unknown:121| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0) (|fail$unknown:163| |$knormal:77| 1) (not (= 0 0)) )
      (|f3_1038$unknown:87| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$alpha-56:a_1040| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$knormal:75| Int) (|$knormal:77| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:75| 1) (|fail$unknown:163| |$knormal:77| 1) (not (= 0 0)) (= 0 0) (= 0 0) )
      (|f3_without_checking_1535$unknown:117| |$V-reftype:161| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$cond-alpha-rename:159| |$cond-alpha-rename:158| (+ (* 0 |$V-reftype:141|) 0) |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:178| Int) (|$alpha-56:a_1040| Int) (|$knormal:75| Int) (|$knormal:77| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:75| 1) (|f3_1038$unknown:87| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| (+ (* 0 |$V-reftype:141|) 0) |$V-reftype:145| |$V-reftype:143| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0) (|fail$unknown:163| |$knormal:77| 1) (not (= 0 0)) (= 0 0) (= 0 0) )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$V-reftype:84| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-38:a_EXPARAM_1261| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) )
    (=>
      ( and true )
      (|f3_without_checking_1535$unknown:121| |$V-reftype:84| |$V-reftype:84| |$V-reftype:82| |$V-reftype:80| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$cond-alpha-rename:65| |$cond-alpha-rename:64| (+ (* 0 |$cond-alpha-rename:63|) (+ (* 0 (+ (* 0 |$alpha-38:a_EXPARAM_1261|) 0)) 0)) |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$alpha-38:a_EXPARAM_1261| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:248| Int) (|$V-reftype:250| Int) (|$V-reftype:252| Int) (|$V-reftype:253| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:125| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| 0 1 (+ (* 0 0) 0) 0 1 0 0 0 0 0 1 0 0) (not (not (= 0 0))) )
      (|f3_1038$unknown:95| |$V-reftype:253| |$V-reftype:252| |$V-reftype:250| |$V-reftype:248| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:214| Int) (|$V-reftype:216| Int) (|$V-reftype:218| Int) (|$V-reftype:220| Int) (|$V-reftype:222| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:236| Int) (|$V-reftype:237| Int) (|$alpha-56:a_1040| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:121| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0) (not (not (= 0 0))) )
      (|f3_1038$unknown:87| |$V-reftype:237| |$V-reftype:236| |$V-reftype:234| |$V-reftype:232| |$V-reftype:222| |$V-reftype:220| |$V-reftype:218| |$V-reftype:216| |$V-reftype:214| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$alpha-56:a_1040| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) )
    (=>
      ( and (not (not (= 0 0))) (= 0 0) (= 0 0) )
      (|f3_without_checking_1535$unknown:117| |$V-reftype:161| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$cond-alpha-rename:164| |$cond-alpha-rename:163| (+ (* 0 |$V-reftype:141|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:178| Int) (|$alpha-56:a_1040| Int) )
    (=>
      ( and (|f3_1038$unknown:87| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| (+ (* 0 |$V-reftype:141|) 0) |$V-reftype:145| |$V-reftype:143| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) )
      (|f3_without_checking_1535$unknown:125| |$V-reftype:178| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-56:a_1040| 0 0 0 0 0 1 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:104| Int) (|$V-reftype:114| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:119| Int) (|$V-reftype:98| Int) (|$alpha-33:x_DO_NOT_CARE_1779| Int) (|$alpha-34:x_DO_NOT_CARE_1780| Int) (|$alpha-35:u_1039| Int) (|$alpha-36:x_DO_NOT_CARE_1777| Int) (|$alpha-37:x_DO_NOT_CARE_1778| Int) (|$alpha-39:set_flag_f3_1504| Int) (|$alpha-40:s_f3_a_EXPARAM_1498| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f3_without_checking_1535$unknown:125| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$V-reftype:104| |$V-reftype:102| (+ (* 0 |$V-reftype:100|) (+ (* 0 (+ (* 0 |$cond-alpha-rename:101|) 0)) 0)) |$V-reftype:104| |$V-reftype:102| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$alpha-35:u_1039| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:101|) 0) (+ (* 0 |$cond-alpha-rename:101|) 0)) )
      (|f3_without_checking_1535$unknown:121| |$V-reftype:119| |$V-reftype:118| |$V-reftype:116| |$V-reftype:114| |$V-reftype:104| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$knormal:43| |$cond-alpha-rename:101| 1 (+ (* 0 |$cond-alpha-rename:101|) 0) |$cond-alpha-rename:101| 1 |$alpha-40:s_f3_a_EXPARAM_1498| |$alpha-39:set_flag_f3_1504| |$cond-alpha-rename:101| |$alpha-37:x_DO_NOT_CARE_1778| |$alpha-36:x_DO_NOT_CARE_1777| |$alpha-35:u_1039| |$alpha-34:x_DO_NOT_CARE_1780| |$alpha-33:x_DO_NOT_CARE_1779|)
    )
  )
)
(check-sat)

(get-model)

