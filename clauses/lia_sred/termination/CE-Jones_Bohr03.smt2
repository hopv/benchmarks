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
  
     let f1_1030 x_DO_NOT_CARE_1806 u_1031 x_DO_NOT_CARE_1805 c_EXPARAM_1293 x_DO_NOT_CARE_1804 c_1032 set_flag_f4_1592 d_1033 =
       d_1033
  
     let f2_1034 x_DO_NOT_CARE_1803 u_1035 x_DO_NOT_CARE_1802 a_EXPARAM_1279 x_DO_NOT_CARE_1801 a_1036 x_DO_NOT_CARE_1800 b_EXPARAM_1282 set_flag_f4_1592 b_1037 =
       a_1036 set_flag_f4_1592
         ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
          ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
         set_flag_f4_1592 (f1_1030 set_flag_f4_1592 u_1035)
  
     let f3_1038 x_DO_NOT_CARE_1799 u_1039 x_DO_NOT_CARE_1798 a_EXPARAM_1261 set_flag_f4_1592 a_1040 =
       a_1040 set_flag_f4_1592
         ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
         set_flag_f4_1592
         (f2_1034 set_flag_f4_1592 u_1039 set_flag_f4_1592
           ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
           set_flag_f4_1592 a_1040)
  
     let f4_without_checking_1613 x_DO_NOT_CARE_1797 u_1042 set_flag_f4_1592 v_1043 =
       let set_flag_f4_1592 = true
       in
         v_1043
  
     let rec f4_1041 x_DO_NOT_CARE_1615 u_1042 prev_set_flag_f4_1591 v_1043 =
       let u =if prev_set_flag_f4_1591 then
                let u_19355 = fail ()
                in
                  bot()
              else () in
              f4_without_checking_1613 x_DO_NOT_CARE_1615 u_1042
                prev_set_flag_f4_1591 v_1043
  
     let f5_1044 x_DO_NOT_CARE_1796 u_1045 x_DO_NOT_CARE_1795 e_EXPARAM_1254 set_flag_f4_1592 e_1046 =
       e_1046 set_flag_f4_1592
         ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
         set_flag_f4_1592 (f4_1041 set_flag_f4_1592 u_1045)
  
     let main_1047 set_flag_f4_1592 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f4_1592 u_1048 set_flag_f4_1592 c0_COEFFICIENT_1250
           set_flag_f4_1592 (f5_1044 set_flag_f4_1592 u_1048)
       in
         ()
  
     let main =
       main_1047 false ()
")

(set-logic HORN)

(declare-fun |f2_1034$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:70|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:94|
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
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$knormal:49| Int) (|$knormal:51| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:49| 1) (|f3_1038$unknown:55| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-39:x_DO_NOT_CARE_1615| (+ (* 0 |$cond-alpha-rename:114|) 0) |$alpha-39:x_DO_NOT_CARE_1615| |$alpha-39:x_DO_NOT_CARE_1615| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:112| 0 |$cond-alpha-rename:112| |$alpha-40:u_1042| |$cond-alpha-rename:112|) (|fail$unknown:94| |$knormal:51| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) )
      (|f4_1041$unknown:70| |$alpha-42:v_1043| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:49| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) )
    (=>
      ( and (|f1_1030$unknown:9| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$alpha-25:u_1039| |$cond-alpha-rename:38|) )
      (|f3_1038$unknown:55| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:38| (+ (* 0 |$cond-alpha-rename:37|) (+ (* 0 (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0)) 0)) |$cond-alpha-rename:38| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) )
    (=>
      ( and true )
      (|f3_1038$unknown:59| |$V-reftype:56| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:69| (+ (* 0 |$cond-alpha-rename:68|) (+ (* 0 (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0)) 0)) |$cond-alpha-rename:69| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:73| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$knormal:31| Int) )
    (=>
      ( and (|f2_1034$unknown:38| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0) |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:55| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0) |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$cond-alpha-rename:107| Int) (|$knormal:31| Int) )
    (=>
      ( and (|f3_1038$unknown:59| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| (+ (* 0 (+ (* 0 |$V-reftype:68|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0) |$V-reftype:70| |$V-reftype:70| (+ (* 0 |$V-reftype:68|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$V-reftype:70| |$cond-alpha-rename:107| 0 |$cond-alpha-rename:107| |$alpha-25:u_1039| |$cond-alpha-rename:107|) (= (+ (* 0 0) 0) (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0)) )
      (|f3_1038$unknown:59| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$cond-alpha-rename:107| (+ (* 0 |$alpha-27:a_EXPARAM_1261|) 0) |$cond-alpha-rename:107| |$cond-alpha-rename:107| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) )
    (=>
      ( and (|f3_1038$unknown:55| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-39:x_DO_NOT_CARE_1615| (+ (* 0 |$cond-alpha-rename:121|) 0) |$alpha-39:x_DO_NOT_CARE_1615| |$alpha-39:x_DO_NOT_CARE_1615| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| 0 |$cond-alpha-rename:119| |$alpha-40:u_1042| |$cond-alpha-rename:119|) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) )
      (|f4_1041$unknown:70| |$alpha-42:v_1043| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) )
    ( and (|f3_1038$unknown:55| |$cond-alpha-rename:197| |$cond-alpha-rename:196| |$cond-alpha-rename:194| (+ (* 0 |$cond-alpha-rename:200|) 0) |$cond-alpha-rename:194| |$cond-alpha-rename:194| |$cond-alpha-rename:200| |$cond-alpha-rename:199| |$cond-alpha-rename:198| 0 |$cond-alpha-rename:198| |$cond-alpha-rename:195| |$cond-alpha-rename:198|) (not (= 0 |$cond-alpha-rename:196|)) )
    )
  )
)
(check-sat)

(get-model)

