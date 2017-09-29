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

(declare-fun |fail$unknown:93|
  ( Int ) Bool
)

(declare-fun |f5_1044$unknown:89|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:86|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:85|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:92|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:65|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:39|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:62|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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

(declare-fun |f1_1030$unknown:13|
  ( Int Int Int Int Int Int Int Int ) Bool
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

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:190| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:190| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:190| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:212| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (= |$V-reftype:212| |$knormal:47|) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_without_checking_1613$unknown:75| |$knormal:47| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      (|f4_1041$unknown:70| |$V-reftype:212| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true (|bot$unknown:2| |$knormal:49| |$knormal:48|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:192| Int) (|$alpha-10:d_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1806| Int) (|$alpha-4:u_1031| Int) (|$alpha-5:x_DO_NOT_CARE_1805| Int) (|$alpha-6:c_EXPARAM_1293| Int) (|$alpha-7:x_DO_NOT_CARE_1804| Int) (|$alpha-9:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$V-reftype:192| |$alpha-10:d_1033|) true true true true true true true )
      (|f1_1030$unknown:13| |$V-reftype:192| |$alpha-10:d_1033| |$alpha-9:set_flag_f4_1592| |$alpha-7:x_DO_NOT_CARE_1804| |$alpha-6:c_EXPARAM_1293| |$alpha-5:x_DO_NOT_CARE_1805| |$alpha-4:u_1031| |$alpha-3:x_DO_NOT_CARE_1806|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:16| Int) (|$V-reftype:48| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f1_1030$unknown:9| |$V-reftype:16| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      (|f2_1034$unknown:26| |$V-reftype:16| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:51| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f2_1034$unknown:27| |$V-reftype:51| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) (|f1_1030$unknown:9| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      (|f1_1030$unknown:10| |$V-reftype:51| |$V-reftype:50| |$V-reftype:48| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$V-reftype:24| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f1_1030$unknown:13| |$V-reftype:24| |$V-reftype:23| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-12:u_1035| |$alpha-19:set_flag_f4_1592|) true true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      (|f2_1034$unknown:30| |$V-reftype:24| |$V-reftype:23| |$V-reftype:21| |$V-reftype:13| |$V-reftype:11| |$knormal:8| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and true (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$V-reftype:62| Int) (|$V-reftype:63| Int) (|$alpha-11:x_DO_NOT_CARE_1803| Int) (|$alpha-12:u_1035| Int) (|$alpha-13:x_DO_NOT_CARE_1802| Int) (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-15:x_DO_NOT_CARE_1801| Int) (|$alpha-17:x_DO_NOT_CARE_1800| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-19:set_flag_f4_1592| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true (|f2_1034$unknown:33| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$knormal:10| |$alpha-19:set_flag_f4_1592| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|) true true true true true )
      (|f2_1034$unknown:42| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |$alpha-19:set_flag_f4_1592| |$alpha-18:b_EXPARAM_1282| |$alpha-17:x_DO_NOT_CARE_1800| |$alpha-15:x_DO_NOT_CARE_1801| |$alpha-14:a_EXPARAM_1279| |$alpha-13:x_DO_NOT_CARE_1802| |$alpha-12:u_1035| |$alpha-11:x_DO_NOT_CARE_1803|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_EXPARAM_1279| Int) (|$alpha-18:b_EXPARAM_1282| Int) (|$alpha-21:c9_COEFFICIENT_1286| Int) (|$alpha-22:c8_COEFFICIENT_1285| Int) (|$alpha-23:c7_COEFFICIENT_1284| Int) (|$knormal:10| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$knormal:4| |$alpha-21:c9_COEFFICIENT_1286|)) (= |$knormal:4| (* |$alpha-22:c8_COEFFICIENT_1285| |$alpha-14:a_EXPARAM_1279|)) (= |$knormal:3| (* |$alpha-23:c7_COEFFICIENT_1284| |$alpha-18:b_EXPARAM_1282|)) (= |$knormal:10| (+ |$knormal:3| |$knormal:5|)) (= |$alpha-23:c7_COEFFICIENT_1284| 0) (= |$alpha-22:c8_COEFFICIENT_1285| 0) (= |$alpha-21:c9_COEFFICIENT_1286| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-29:a_1040| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f3_1038$unknown:62| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f2_1034$unknown:33| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:108| Int) (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-29:a_1040| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f3_1038$unknown:56| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:26| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f2_1034$unknown:27| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:49| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-29:a_1040| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f2_1034$unknown:26| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f3_1038$unknown:55| |$V-reftype:49| |$V-reftype:105| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-29:a_1040| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f2_1034$unknown:30| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true true true true true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f3_1038$unknown:59| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$V-reftype:97| |$V-reftype:95| |$alpha-29:a_1040| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and true (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:108| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (|f3_1038$unknown:56| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) (|f2_1034$unknown:38| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f2_1034$unknown:39| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:73| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (|f2_1034$unknown:38| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f3_1038$unknown:55| |$V-reftype:73| |$V-reftype:105| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and true true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (|f2_1034$unknown:42| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:25| |$alpha-28:set_flag_f4_1592| |$alpha-25:u_1039| |$alpha-28:set_flag_f4_1592|) true true (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      (|f3_1038$unknown:59| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |$V-reftype:70| |$V-reftype:68| |$knormal:31| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:120| Int) (|$alpha-24:x_DO_NOT_CARE_1799| Int) (|$alpha-25:u_1039| Int) (|$alpha-26:x_DO_NOT_CARE_1798| Int) (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-28:set_flag_f4_1592| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true (|f3_1038$unknown:62| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$knormal:33| |$alpha-28:set_flag_f4_1592| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|) true true true true true )
      (|f3_1038$unknown:65| |$V-reftype:120| |$V-reftype:119| |$V-reftype:117| |$alpha-28:set_flag_f4_1592| |$alpha-27:a_EXPARAM_1261| |$alpha-26:x_DO_NOT_CARE_1798| |$alpha-25:u_1039| |$alpha-24:x_DO_NOT_CARE_1799|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:25| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| (+ |$knormal:18| |$alpha-30:c6_COEFFICIENT_1273|)) (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$knormal:18| (* |$alpha-31:c5_COEFFICIENT_1272| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:a_EXPARAM_1261| Int) (|$alpha-30:c6_COEFFICIENT_1273| Int) (|$alpha-31:c5_COEFFICIENT_1272| Int) (|$alpha-32:c4_COEFFICIENT_1267| Int) (|$alpha-33:c3_COEFFICIENT_1266| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-32:c4_COEFFICIENT_1267|)) (= |$knormal:19| (* |$alpha-33:c3_COEFFICIENT_1266| |$alpha-27:a_EXPARAM_1261|)) (= |$alpha-33:c3_COEFFICIENT_1266| 0) (= |$alpha-32:c4_COEFFICIENT_1267| 0) (= |$alpha-31:c5_COEFFICIENT_1272| 0) (= |$alpha-30:c6_COEFFICIENT_1273| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:177| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) )
    (=>
      ( and (|f5_1044$unknown:92| |$V-reftype:177| |$V-reftype:176| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      (|f3_1038$unknown:62| |$V-reftype:177| |$V-reftype:176| |$V-reftype:174| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:103| Int) (|$V-reftype:106| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:162| Int) (|$V-reftype:99| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) )
    (=>
      ( and (|f3_1038$unknown:55| |$V-reftype:106| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      (|f5_1044$unknown:85| |$V-reftype:106| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:103| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:162| Int) (|$V-reftype:164| Int) (|$V-reftype:165| Int) (|$V-reftype:99| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) )
    (=>
      ( and (|f5_1044$unknown:86| |$V-reftype:165| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) (|f3_1038$unknown:55| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      (|f3_1038$unknown:56| |$V-reftype:165| |$V-reftype:164| |$V-reftype:162| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:103| Int) (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:114| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:99| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) (|$knormal:67| Int) )
    (=>
      ( and (|f3_1038$unknown:59| |$V-reftype:114| |$V-reftype:113| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-53:set_flag_f4_1592| |$alpha-55:c0_COEFFICIENT_1250| |$alpha-53:set_flag_f4_1592| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|) true true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      (|f5_1044$unknown:89| |$V-reftype:114| |$V-reftype:113| |$V-reftype:111| |$V-reftype:103| |$V-reftype:101| |$V-reftype:99| |$V-reftype:154| |$V-reftype:152| |$knormal:67| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:214| Int) (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$alpha-44:u| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (= |$V-reftype:214| |$knormal:47|) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) (|f4_without_checking_1613$unknown:75| |$knormal:47| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      (|f4_1041$unknown:70| |$V-reftype:214| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:48| Int) (|$knormal:50| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:48| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|fail$unknown:94| |$knormal:51| |$knormal:50|) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (not (= 0 |$alpha-41:prev_set_flag_f4_1591|)) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      (|fail$unknown:93| |$knormal:50|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_DO_NOT_CARE_1615| Int) (|$alpha-40:u_1042| Int) (|$alpha-41:prev_set_flag_f4_1591| Int) (|$alpha-42:v_1043| Int) (|$alpha-44:u| Int) )
    (=>
      ( and (= |$alpha-44:u| 1) (not (not (= 0 |$alpha-41:prev_set_flag_f4_1591|))) (|f4_1041$unknown:69| |$alpha-42:v_1043| |$alpha-41:prev_set_flag_f4_1591| |$alpha-40:u_1042| |$alpha-39:x_DO_NOT_CARE_1615|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$V-reftype:135| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:55| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:85| |$V-reftype:134| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) true true true true true true (|f4_1041$unknown:70| |$V-reftype:135| |$V-reftype:134| |$knormal:55| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|) )
      (|f5_1044$unknown:86| |$V-reftype:135| |$V-reftype:134| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:209| Int) (|$alpha-34:x_DO_NOT_CARE_1797| Int) (|$alpha-35:u_1042| Int) (|$alpha-36:set_flag_f4_1592| Int) (|$alpha-37:v_1043| Int) (|$alpha-38:set_flag_f4_1592| Int) )
    (=>
      ( and (= |$alpha-38:set_flag_f4_1592| 1) (= |$V-reftype:209| |$alpha-37:v_1043|) true true true true )
      (|f4_without_checking_1613$unknown:75| |$V-reftype:209| |$alpha-37:v_1043| |$alpha-36:set_flag_f4_1592| |$alpha-35:u_1042| |$alpha-34:x_DO_NOT_CARE_1797|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:163| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:55| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:85| |$V-reftype:163| |$knormal:55| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) true true true true true true )
      (|f4_1041$unknown:69| |$V-reftype:163| |$knormal:55| |$alpha-46:u_1045| |$alpha-49:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:168| Int) (|$V-reftype:170| Int) (|$V-reftype:171| Int) (|$alpha-45:x_DO_NOT_CARE_1796| Int) (|$alpha-46:u_1045| Int) (|$alpha-47:x_DO_NOT_CARE_1795| Int) (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-49:set_flag_f4_1592| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true (|f5_1044$unknown:89| |$V-reftype:171| |$V-reftype:170| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$knormal:57| |$alpha-49:set_flag_f4_1592| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|) true true true true true )
      (|f5_1044$unknown:92| |$V-reftype:171| |$V-reftype:170| |$V-reftype:168| |$alpha-49:set_flag_f4_1592| |$alpha-48:e_EXPARAM_1254| |$alpha-47:x_DO_NOT_CARE_1795| |$alpha-46:u_1045| |$alpha-45:x_DO_NOT_CARE_1796|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-48:e_EXPARAM_1254| Int) (|$alpha-51:c2_COEFFICIENT_1257| Int) (|$alpha-52:c1_COEFFICIENT_1256| Int) (|$knormal:52| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (+ |$knormal:52| |$alpha-51:c2_COEFFICIENT_1257|)) (= |$knormal:52| (* |$alpha-52:c1_COEFFICIENT_1256| |$alpha-48:e_EXPARAM_1254|)) (= |$alpha-52:c1_COEFFICIENT_1256| 0) (= |$alpha-51:c2_COEFFICIENT_1257| 0) true true true true true )
      true
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
  (forall ( (|$V-reftype:220| Int) (|$alpha-53:set_flag_f4_1592| Int) (|$alpha-54:u_1048| Int) (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) (= |$V-reftype:220| 1) true true )
      (|main_1047$unknown:97| |$V-reftype:220| |$alpha-54:u_1048| |$alpha-53:set_flag_f4_1592|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-55:c0_COEFFICIENT_1250| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$knormal:82| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:80| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$knormal:82| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:80| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

