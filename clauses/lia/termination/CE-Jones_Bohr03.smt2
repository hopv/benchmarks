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

(declare-fun |main_1047$unknown:97|
  ( Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:77|
  ( Int Int ) Bool
)

(declare-fun |f5_1044$unknown:76|
  ( Int ) Bool
)

(declare-fun |fail$unknown:93|
  ( Int ) Bool
)

(declare-fun |f5_1044$unknown:79|
  ( Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:80|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:89|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:88|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:87|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:86|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:85|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:84|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:83|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:82|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:81|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:92|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:91|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:90|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:78|
  ( Int Int Int ) Bool
)

(declare-fun |main_1047$unknown:96|
  ( Int Int ) Bool
)

(declare-fun |main_1047$unknown:95|
  ( Int ) Bool
)

(declare-fun |f3_1038$unknown:65|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:64|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:63|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:39|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:37|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:58|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:57|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:54|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:51|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:60|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:61|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:62|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:50|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:49|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:48|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:47|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:46|
  ( Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:45|
  ( Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:44|
  ( Int Int ) Bool
)

(declare-fun |f3_1038$unknown:43|
  ( Int ) Bool
)

(declare-fun |f2_1034$unknown:21|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:31|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:32|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:41|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:40|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:27|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:26|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:25|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:36|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:34|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:22|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:18|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:17|
  ( Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f2_1034$unknown:14|
  ( Int ) Bool
)

(declare-fun |f1_1030$unknown:13|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f1_1030$unknown:3|
  ( Int ) Bool
)

(declare-fun |f1_1030$unknown:12|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f4_without_checking_1613$unknown:74|
  ( Int Int Int Int ) Bool
)

(declare-fun |f4_without_checking_1613$unknown:73|
  ( Int Int Int ) Bool
)

(declare-fun |f4_without_checking_1613$unknown:72|
  ( Int Int ) Bool
)

(declare-fun |f4_without_checking_1613$unknown:71|
  ( Int ) Bool
)

(declare-fun |f4_1041$unknown:70|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:94|
  ( Int Int ) Bool
)

(declare-fun |f4_without_checking_1613$unknown:75|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:69|
  ( Int Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:68|
  ( Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:67|
  ( Int Int ) Bool
)

(declare-fun |f4_1041$unknown:66|
  ( Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:190| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:190| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:190| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:212| Int) (|$knormal:50| Int) (|$knormal:47| Int) (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$knormal:49| Int) (|$knormal:48| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (= |$V-reftype:212| |$knormal:47|) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_without_checking_1613$unknown:75| |$knormal:47| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_1041$unknown:70| |$V-reftype:212| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_without_checking_1613$unknown:71| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$knormal:49| Int) (|$knormal:48| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_without_checking_1613$unknown:72| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_without_checking_1613$unknown:73| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$knormal:49| Int) (|$knormal:48| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_without_checking_1613$unknown:74| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x_DO_NOT_CARE_1806| Int) (|$alpha-5:x_DO_NOT_CARE_1805| Int) (|$alpha-7:x_DO_NOT_CARE_1804| Int) (|$alpha-9:set_flag_f4_1592| Int) (|$alpha-6:c_EXPARAM_1293| Int) (|$alpha-4:u_1031| Int) (|$alpha-10:d_1033| Int) (|$V-reftype:192| Int) )
    (=>
      ( and (= |$V-reftype:192| |$alpha-10:d_1033|) (|f1_1030$unknown:7| |$alpha-7:x_DO_NOT_CARE_1804| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:6| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:5| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:4| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:3| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:12| |$alpha-10:d_1033| |$alpha-9:set_flag_f4_1592| |$alpha-7:x_DO_NOT_CARE_1804| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) (|f1_1030$unknown:11| |$alpha-9:set_flag_f4_1592| |$alpha-7:x_DO_NOT_CARE_1804| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|) )
      (|f1_1030$unknown:13| |$V-reftype:192| |$alpha-10:d_1033| |$alpha-9:set_flag_f4_1592| |$alpha-7:x_DO_NOT_CARE_1804| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:5| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$V-reftype:41| Int) (|$knormal:10| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$V-reftype:41| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:5| |$V-reftype:41| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:28| |$V-reftype:53| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:11| |$V-reftype:53| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:28| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:29| |$V-reftype:55| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:12| |$V-reftype:55| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:28| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:29| |$V-reftype:23| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f1_1030$unknown:13| |$V-reftype:24| |$V-reftype:23| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) )
      (|f2_1034$unknown:30| |$V-reftype:24| |$V-reftype:23| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f1_1030$unknown:8| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) (|f1_1030$unknown:9| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) (|f2_1034$unknown:27| |$V-reftype:51| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:10| |$V-reftype:51| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f1_1030$unknown:8| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) (|f1_1030$unknown:9| |$V-reftype:16| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) )
      (|f2_1034$unknown:26| |$V-reftype:16| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$V-reftype:51| Int) (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) (|$V-reftype:14| Int) (|$V-reftype:48| Int) (|$V-reftype:16| Int) (|$V-reftype:50| Int) (|$V-reftype:24| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) (|f1_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) )
      (|f2_1034$unknown:25| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:5| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$V-reftype:11| Int) (|$V-reftype:45| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:24| |$V-reftype:45| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:7| |$V-reftype:45| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$V-reftype:43| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:5| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:23| |$V-reftype:43| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:22| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:6| |$V-reftype:43| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:5| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:10| Int) (|$V-reftype:60| Int) (|$V-reftype:63| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$V-reftype:62| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:41| |$V-reftype:62| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:40| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:33| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:42| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$V-reftype:79| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$V-reftype:60| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:10| Int) (|$knormal:5| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:41| |$V-reftype:79| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:40| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:32| |$V-reftype:79| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:10| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$V-reftype:77| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:40| |$V-reftype:77| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:31| |$V-reftype:77| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:3| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) )
    (=>
      ( and (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f1_1030$unknown:4| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:10| Int) (|$knormal:5| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:19| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:10| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-12:u_1035| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:20| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$knormal:10| Int) (|$knormal:5| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:36| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:35| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:34| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:18| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:17| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:16| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:15| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f2_1034$unknown:14| |$alpha-11:x_DO_NOT_CARE_1803|) )
      (|f2_1034$unknown:21| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$V-reftype:35| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:19| |$V-reftype:35| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:48| |$V-reftype:35| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:37| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:20| |$V-reftype:37| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:49| |$V-reftype:37| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$V-reftype:39| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-29:a_1040| Int) (|$knormal:25| Int) (|$alpha-25:u_1039| Int) (|$V-reftype:95| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:39| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:50| |$V-reftype:39| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:98| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:22| |$V-reftype:98| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:58| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:30| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:59| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:58| |$V-reftype:112| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:29| |$V-reftype:112| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:110| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:28| |$V-reftype:110| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:25| |$V-reftype:47| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:54| |$V-reftype:47| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:25| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:26| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:55| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:25| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:26| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:56| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:27| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:53| |$V-reftype:102| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:24| |$V-reftype:102| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:51| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:100| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:23| |$V-reftype:100| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:31| |$V-reftype:59| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:60| |$V-reftype:59| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:31| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:32| |$V-reftype:61| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:61| |$V-reftype:61| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$V-reftype:112| Int) (|$V-reftype:54| Int) (|$V-reftype:110| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:108| Int) (|$V-reftype:46| Int) (|$V-reftype:102| Int) (|$V-reftype:44| Int) (|$V-reftype:100| Int) (|$V-reftype:117| Int) (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:95| Int) (|$alpha-25:u_1039| Int) (|$knormal:25| Int) (|$alpha-29:a_1040| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:61| Int) (|$V-reftype:59| Int) (|$V-reftype:42| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:57| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:21| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:20| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:19| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:31| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:32| |$V-reftype:119| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:62| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:33| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$knormal:33| Int) (|$V-reftype:98| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:51| |$V-reftype:98| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:34| |$V-reftype:98| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:18| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$V-reftype:100| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:52| |$V-reftype:100| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:35| |$V-reftype:100| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:102| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:102| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:36| |$V-reftype:102| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:58| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:42| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:59| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:58| |$V-reftype:112| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:41| |$V-reftype:112| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:57| |$V-reftype:110| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:40| |$V-reftype:110| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:37| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:54| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:37| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:38| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) )
      (|f3_1038$unknown:55| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$V-reftype:112| Int) (|$V-reftype:78| Int) (|$V-reftype:71| Int) (|$V-reftype:108| Int) (|$V-reftype:107| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:70| Int) (|$V-reftype:68| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$V-reftype:105| Int) (|$V-reftype:73| Int) (|$V-reftype:110| Int) (|$V-reftype:80| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:53| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:52| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:51| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:37| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f2_1034$unknown:38| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) (|f3_1038$unknown:56| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:39| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:119| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$V-reftype:120| Int) (|$V-reftype:117| Int) (|$knormal:33| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:64| |$V-reftype:119| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:63| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:62| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:65| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$V-reftype:124| Int) (|$V-reftype:117| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:64| |$V-reftype:124| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:63| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:61| |$V-reftype:124| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:18| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$V-reftype:122| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:63| |$V-reftype:122| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:60| |$V-reftype:122| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:48| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:18| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:49| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:19| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f3_1038$unknown:50| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:14| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:15| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:16| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:17| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-25:u_1039| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) (|f3_1038$unknown:47| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:46| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:45| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:44| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f3_1038$unknown:43| |$alpha-24:x_DO_NOT_CARE_1799|) )
      (|f2_1034$unknown:18| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$V-reftype:92| Int) (|$alpha-53:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$V-reftype:92| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:78| |$V-reftype:92| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:157| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:52| |$V-reftype:157| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:159| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:53| |$V-reftype:159| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:87| |$V-reftype:167| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:57| |$V-reftype:167| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:87| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:88| |$V-reftype:169| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:58| |$V-reftype:169| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:87| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:88| |$V-reftype:113| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:59| |$V-reftype:114| |$V-reftype:113| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:89| |$V-reftype:114| |$V-reftype:113| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:54| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:55| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:86| |$V-reftype:165| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:56| |$V-reftype:165| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:54| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:55| |$V-reftype:106| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:85| |$V-reftype:106| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:82| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:83| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:54| |$V-reftype:104| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:84| |$V-reftype:104| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:81| |$V-reftype:155| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:51| |$V-reftype:155| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:60| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:61| |$V-reftype:176| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f5_1044$unknown:92| |$V-reftype:177| |$V-reftype:176| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:62| |$V-reftype:177| |$V-reftype:176| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:60| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:61| |$V-reftype:118| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:91| |$V-reftype:118| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:157| Int) (|$V-reftype:167| Int) (|$V-reftype:114| Int) (|$V-reftype:113| Int) (|$V-reftype:165| Int) (|$V-reftype:106| Int) (|$V-reftype:162| Int) (|$V-reftype:101| Int) (|$V-reftype:99| Int) (|$V-reftype:177| Int) (|$V-reftype:176| Int) (|$V-reftype:174| Int) (|$V-reftype:152| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$V-reftype:154| Int) (|$V-reftype:116| Int) (|$V-reftype:118| Int) (|$V-reftype:155| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$V-reftype:164| Int) (|$V-reftype:111| Int) (|$V-reftype:169| Int) (|$V-reftype:159| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:60| |$V-reftype:116| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:90| |$V-reftype:116| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$knormal:67| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$alpha-54:u_1048| Int) (|$V-reftype:152| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:50| |$V-reftype:96| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:80| |$V-reftype:96| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:94| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) (|$alpha-53:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:49| |$V-reftype:94| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:48| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:79| |$V-reftype:94| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) (|$knormal:47| Int) (|$V-reftype:214| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$V-reftype:214| |$knormal:47|) (= |$alpha-41:prev_set_flag_f4_1591| 0) (|f4_without_checking_1613$unknown:75| |$knormal:47| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|f4_1041$unknown:70| |$V-reftype:214| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:50| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|bot$unknown:1| |$knormal:48|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (not (= |$alpha-41:prev_set_flag_f4_1591| 0)) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|fail$unknown:93| |$knormal:50|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$alpha-41:prev_set_flag_f4_1591| 0) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|f4_without_checking_1613$unknown:71| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-44:u| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$alpha-41:prev_set_flag_f4_1591| 0) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|f4_without_checking_1613$unknown:72| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:v_1043| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$alpha-41:prev_set_flag_f4_1591| 0) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|f4_without_checking_1613$unknown:73| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-44:u| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-40:u_1042| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-42:v_1043| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$alpha-41:prev_set_flag_f4_1591| 0) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:68| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:67| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:66| |$alpha-39:x_DO_NOT_CARE_1615|) )
      (|f4_without_checking_1613$unknown:74| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$V-reftype:134| Int) (|$V-reftype:135| Int) (|$knormal:55| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$knormal:57| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:85| |$V-reftype:134| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:84| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) (|f4_1041$unknown:70| |$V-reftype:135| |$V-reftype:134| |$knormal:55| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|) )
      (|f5_1044$unknown:86| |$V-reftype:135| |$V-reftype:134| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:set_flag_f4_1592| Int) (|$alpha-35:u_1042| Int) (|$alpha-34:x_DO_NOT_CARE_1797| Int) (|$alpha-37:v_1043| Int) (|$V-reftype:209| Int) (|$alpha-38:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-38:set_flag_f4_1592| 1) (= |$V-reftype:209| |$alpha-37:v_1043|) (|f4_without_checking_1613$unknown:74| |$alpha-37:v_1043| |$alpha-36:set_flag_f4_1592| |$alpha-35:u_1042| |$alpha-34:x_DO_NOT_CARE_1797|) (|f4_without_checking_1613$unknown:73| |$alpha-36:set_flag_f4_1592| |$alpha-35:u_1042| |$alpha-34:x_DO_NOT_CARE_1797|) (|f4_without_checking_1613$unknown:72| |$alpha-35:u_1042| |$alpha-34:x_DO_NOT_CARE_1797|) (|f4_without_checking_1613$unknown:71| |$alpha-34:x_DO_NOT_CARE_1797|) )
      (|f4_without_checking_1613$unknown:75| |$V-reftype:209| |$alpha-37:v_1043| |$alpha-36:set_flag_f4_1592| |$alpha-35:u_1042| |$alpha-34:x_DO_NOT_CARE_1797|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$V-reftype:161| Int) (|$knormal:57| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:84| |$V-reftype:161| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f4_1041$unknown:68| |$V-reftype:161| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:57| Int) (|$knormal:55| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-46:u_1045| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$V-reftype:163| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:85| |$V-reftype:163| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:84| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f4_1041$unknown:69| |$V-reftype:163| |$knormal:55| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$V-reftype:170| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$V-reftype:171| Int) (|$V-reftype:168| Int) (|$knormal:57| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:91| |$V-reftype:170| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:90| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:89| |$V-reftype:171| |$V-reftype:170| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:92| |$V-reftype:171| |$V-reftype:170| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$V-reftype:175| Int) (|$V-reftype:168| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-46:u_1045| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:91| |$V-reftype:175| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:90| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:88| |$V-reftype:175| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$V-reftype:173| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-46:u_1045| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:90| |$V-reftype:173| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:87| |$V-reftype:173| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-46:u_1045| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f4_1041$unknown:66| |$alpha-49:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) )
    (=>
      ( and (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f4_1041$unknown:67| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:81| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-46:u_1045| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:82| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:80| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:79| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:78| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:77| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) (|f5_1044$unknown:76| |$alpha-45:x_DO_NOT_CARE_1796|) )
      (|f5_1044$unknown:83| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:93| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:220| Int) (|$alpha-54:u_1048| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (= |$V-reftype:220| 1) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|main_1047$unknown:97| |$V-reftype:220| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:43| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$alpha-54:u_1048| Int) (|$alpha-53:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:44| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:45| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$alpha-54:u_1048| Int) (|$alpha-53:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:46| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f3_1038$unknown:47| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:76| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$alpha-54:u_1048| Int) (|$alpha-53:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (|main_1047$unknown:96| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|main_1047$unknown:95| |$alpha-53:set_flag_f4_1592|) )
      (|f5_1044$unknown:77| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$knormal:82| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:80| 0) )
      (|main_1047$unknown:95| |$knormal:80|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Int) (|$knormal:80| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:80| 0) )
      (|main_1047$unknown:96| |$knormal:82| |$knormal:80|)
    )
  )
)
(check-sat)

(get-model)

