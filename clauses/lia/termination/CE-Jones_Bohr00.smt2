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
  
     let f1_without_checking_1361 x_DO_NOT_CARE_1733 x_DO_NOT_CARE_1734 u_1031 x_DO_NOT_CARE_1731 x_DO_NOT_CARE_1732 c_EXPARAM_1293 x_DO_NOT_CARE_1729 x_DO_NOT_CARE_1730 c_1032 set_flag_f1_1304 s_f1_c_EXPARAM_1296 d_1033 =
       let set_flag_f1_1304 = true
       in
       let s_f1_c_EXPARAM_1296 = c_EXPARAM_1293
       in
         d_1033
  
     let rec f1_1030 x_DO_NOT_CARE_1367 x_DO_NOT_CARE_1368 u_1031 x_DO_NOT_CARE_1365 x_DO_NOT_CARE_1366 c_EXPARAM_1293 x_DO_NOT_CARE_1363 x_DO_NOT_CARE_1364 c_1032 prev_set_flag_f1_1303 s_prev_f1_c_EXPARAM_1300 d_1033 =
       let u = if prev_set_flag_f1_1303 then
                let u_2056 = fail ()
                in
                  bot()
               else () in
              f1_without_checking_1361 x_DO_NOT_CARE_1367 x_DO_NOT_CARE_1368
                u_1031 x_DO_NOT_CARE_1365 x_DO_NOT_CARE_1366 c_EXPARAM_1293
                x_DO_NOT_CARE_1363 x_DO_NOT_CARE_1364 c_1032
                prev_set_flag_f1_1303 s_prev_f1_c_EXPARAM_1300 d_1033
  
     let f2_1034 x_DO_NOT_CARE_1727 x_DO_NOT_CARE_1728 u_1035 x_DO_NOT_CARE_1725 x_DO_NOT_CARE_1726 a_EXPARAM_1279 x_DO_NOT_CARE_1723 x_DO_NOT_CARE_1724 a_1036 x_DO_NOT_CARE_1721 x_DO_NOT_CARE_1722 b_EXPARAM_1282 set_flag_f1_1304 s_f1_c_EXPARAM_1296 b_1037 =
       a_1036 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
          ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f1_1030 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1035)
  
     let f3_1038 x_DO_NOT_CARE_1719 x_DO_NOT_CARE_1720 u_1039 x_DO_NOT_CARE_1717 x_DO_NOT_CARE_1718 a_EXPARAM_1261 set_flag_f1_1304 s_f1_c_EXPARAM_1296 a_1040 =
       a_1040 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f2_1034 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1039 set_flag_f1_1304
           s_f1_c_EXPARAM_1296
           ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
           set_flag_f1_1304 s_f1_c_EXPARAM_1296 a_1040)
  
     let f4_1041 x_DO_NOT_CARE_1715 x_DO_NOT_CARE_1716 u_1042 set_flag_f1_1304 s_f1_c_EXPARAM_1296 v_1043 =
       v_1043
  
     let f5_1044 x_DO_NOT_CARE_1713 x_DO_NOT_CARE_1714 u_1045 x_DO_NOT_CARE_1711 x_DO_NOT_CARE_1712 e_EXPARAM_1254 set_flag_f1_1304 s_f1_c_EXPARAM_1296 e_1046 =
       e_1046 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f4_1041 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1045)
  
     let main_1047 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048 set_flag_f1_1304
           s_f1_c_EXPARAM_1296 c0_COEFFICIENT_1250 set_flag_f1_1304
           s_f1_c_EXPARAM_1296
           (f5_1044 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048)
       in
         ()
  
     let main =
       main_1047 false 0 ()
")

(set-logic HORN)

(declare-fun |main_1047$unknown:149|
  ( Int Int Int Int ) Bool
)

(declare-fun |f4_1041$unknown:118|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:139|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:138|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:135|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:143|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f5_1044$unknown:142|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:73|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:111|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:103|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:102|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:99|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:107|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:106|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:63|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:77|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:76|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:64|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:60|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f2_1034$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:144|
  ( Int ) Bool
)

(declare-fun |f1_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_without_checking_1361$unknown:34|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_without_checking_1361$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:145|
  ( Int Int ) Bool
)

(declare-fun |f1_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:14|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:294| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:294| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:294| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-25:c_1032| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true (|f1_1030$unknown:14| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      (|f1_without_checking_1361$unknown:30| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:300| Int) (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (= |$V-reftype:300| |$knormal:25|) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) (|f1_without_checking_1361$unknown:34| |$knormal:25| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      (|f1_1030$unknown:18| |$V-reftype:300| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true (|bot$unknown:2| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-25:c_1032| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true (|f1_1030$unknown:14| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true )
      (|f1_without_checking_1361$unknown:30| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:302| Int) (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (= |$V-reftype:302| |$knormal:25|) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) (|f1_without_checking_1361$unknown:34| |$knormal:25| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      (|f1_1030$unknown:18| |$V-reftype:302| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (|fail$unknown:145| |$knormal:29| |$knormal:28|) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      (|fail$unknown:144| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1367| Int) (|$alpha-18:x_DO_NOT_CARE_1368| Int) (|$alpha-19:u_1031| Int) (|$alpha-20:x_DO_NOT_CARE_1365| Int) (|$alpha-21:x_DO_NOT_CARE_1366| Int) (|$alpha-22:c_EXPARAM_1293| Int) (|$alpha-23:x_DO_NOT_CARE_1363| Int) (|$alpha-24:x_DO_NOT_CARE_1364| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$alpha-30:u| Int) )
    (=>
      ( and (= |$alpha-30:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) true true true true true true true (|f1_1030$unknown:17| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$alpha-24:x_DO_NOT_CARE_1364| |$alpha-23:x_DO_NOT_CARE_1363| |$alpha-22:c_EXPARAM_1293| |$alpha-21:x_DO_NOT_CARE_1366| |$alpha-20:x_DO_NOT_CARE_1365| |$alpha-19:u_1031| |$alpha-18:x_DO_NOT_CARE_1368| |$alpha-17:x_DO_NOT_CARE_1367|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:297| Int) (|$alpha-10:x_DO_NOT_CARE_1730| Int) (|$alpha-12:set_flag_f1_1304| Int) (|$alpha-13:s_f1_c_EXPARAM_1296| Int) (|$alpha-14:d_1033| Int) (|$alpha-15:set_flag_f1_1304| Int) (|$alpha-3:x_DO_NOT_CARE_1733| Int) (|$alpha-4:x_DO_NOT_CARE_1734| Int) (|$alpha-5:u_1031| Int) (|$alpha-6:x_DO_NOT_CARE_1731| Int) (|$alpha-7:x_DO_NOT_CARE_1732| Int) (|$alpha-8:c_EXPARAM_1293| Int) (|$alpha-9:x_DO_NOT_CARE_1729| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_f1_1304| 1) (= |$V-reftype:297| |$alpha-14:d_1033|) true true true true true true true true true true true )
      (|f1_without_checking_1361$unknown:34| |$V-reftype:297| |$alpha-14:d_1033| |$alpha-13:s_f1_c_EXPARAM_1296| |$alpha-12:set_flag_f1_1304| |$alpha-10:x_DO_NOT_CARE_1730| |$alpha-9:x_DO_NOT_CARE_1729| |$alpha-8:c_EXPARAM_1293| |$alpha-7:x_DO_NOT_CARE_1732| |$alpha-6:x_DO_NOT_CARE_1731| |$alpha-5:u_1031| |$alpha-4:x_DO_NOT_CARE_1734| |$alpha-3:x_DO_NOT_CARE_1733|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:108| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$alpha-31:x_DO_NOT_CARE_1727| Int) (|$alpha-32:x_DO_NOT_CARE_1728| Int) (|$alpha-33:u_1035| Int) (|$alpha-34:x_DO_NOT_CARE_1725| Int) (|$alpha-35:x_DO_NOT_CARE_1726| Int) (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-37:x_DO_NOT_CARE_1723| Int) (|$alpha-38:x_DO_NOT_CARE_1724| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-43:set_flag_f1_1304| Int) (|$alpha-44:s_f1_c_EXPARAM_1296| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:41| Int) )
    (=>
      ( and (|f2_1034$unknown:56| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:103| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      (|f1_1030$unknown:14| |$V-reftype:108| |$V-reftype:107| |$V-reftype:105| |$V-reftype:103| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-33:u_1035| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and true true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:114| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$alpha-31:x_DO_NOT_CARE_1727| Int) (|$alpha-32:x_DO_NOT_CARE_1728| Int) (|$alpha-33:u_1035| Int) (|$alpha-34:x_DO_NOT_CARE_1725| Int) (|$alpha-35:x_DO_NOT_CARE_1726| Int) (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-37:x_DO_NOT_CARE_1723| Int) (|$alpha-38:x_DO_NOT_CARE_1724| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-43:set_flag_f1_1304| Int) (|$alpha-44:s_f1_c_EXPARAM_1296| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:41| Int) )
    (=>
      ( and (|f2_1034$unknown:59| |$V-reftype:114| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      (|f1_1030$unknown:17| |$V-reftype:114| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-33:u_1035| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:33| Int) (|$V-reftype:34| Int) (|$alpha-31:x_DO_NOT_CARE_1727| Int) (|$alpha-32:x_DO_NOT_CARE_1728| Int) (|$alpha-33:u_1035| Int) (|$alpha-34:x_DO_NOT_CARE_1725| Int) (|$alpha-35:x_DO_NOT_CARE_1726| Int) (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-37:x_DO_NOT_CARE_1723| Int) (|$alpha-38:x_DO_NOT_CARE_1724| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-43:set_flag_f1_1304| Int) (|$alpha-44:s_f1_c_EXPARAM_1296| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:41| Int) )
    (=>
      ( and (|f1_1030$unknown:18| |$V-reftype:34| |$V-reftype:33| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-33:u_1035| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304|) (|f2_1034$unknown:59| |$V-reftype:33| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true true )
      (|f2_1034$unknown:60| |$V-reftype:34| |$V-reftype:33| |$V-reftype:31| |$V-reftype:29| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$V-reftype:13| |$knormal:37| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:123| Int) (|$V-reftype:124| Int) (|$alpha-31:x_DO_NOT_CARE_1727| Int) (|$alpha-32:x_DO_NOT_CARE_1728| Int) (|$alpha-33:u_1035| Int) (|$alpha-34:x_DO_NOT_CARE_1725| Int) (|$alpha-35:x_DO_NOT_CARE_1726| Int) (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-37:x_DO_NOT_CARE_1723| Int) (|$alpha-38:x_DO_NOT_CARE_1724| Int) (|$alpha-40:x_DO_NOT_CARE_1721| Int) (|$alpha-41:x_DO_NOT_CARE_1722| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-43:set_flag_f1_1304| Int) (|$alpha-44:s_f1_c_EXPARAM_1296| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:76| |$V-reftype:123| |$V-reftype:121| |$V-reftype:119| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-42:b_EXPARAM_1282| |$alpha-41:x_DO_NOT_CARE_1722| |$alpha-40:x_DO_NOT_CARE_1721| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true true true true true true (|f2_1034$unknown:64| |$V-reftype:124| |$V-reftype:123| |$V-reftype:121| |$V-reftype:119| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true true true true true true true )
      (|f2_1034$unknown:77| |$V-reftype:124| |$V-reftype:123| |$V-reftype:121| |$V-reftype:119| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-42:b_EXPARAM_1282| |$alpha-41:x_DO_NOT_CARE_1722| |$alpha-40:x_DO_NOT_CARE_1721| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:148| Int) (|$alpha-31:x_DO_NOT_CARE_1727| Int) (|$alpha-32:x_DO_NOT_CARE_1728| Int) (|$alpha-33:u_1035| Int) (|$alpha-34:x_DO_NOT_CARE_1725| Int) (|$alpha-35:x_DO_NOT_CARE_1726| Int) (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-37:x_DO_NOT_CARE_1723| Int) (|$alpha-38:x_DO_NOT_CARE_1724| Int) (|$alpha-40:x_DO_NOT_CARE_1721| Int) (|$alpha-41:x_DO_NOT_CARE_1722| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-43:set_flag_f1_1304| Int) (|$alpha-44:s_f1_c_EXPARAM_1296| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) (|f2_1034$unknown:76| |$V-reftype:148| |$V-reftype:121| |$V-reftype:119| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-42:b_EXPARAM_1282| |$alpha-41:x_DO_NOT_CARE_1722| |$alpha-40:x_DO_NOT_CARE_1721| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|) true true true true true true true true true true true true true true true )
      (|f2_1034$unknown:63| |$V-reftype:148| |$V-reftype:121| |$V-reftype:119| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$knormal:41| |$alpha-44:s_f1_c_EXPARAM_1296| |$alpha-43:set_flag_f1_1304| |$alpha-38:x_DO_NOT_CARE_1724| |$alpha-37:x_DO_NOT_CARE_1723| |$alpha-36:a_EXPARAM_1279| |$alpha-35:x_DO_NOT_CARE_1726| |$alpha-34:x_DO_NOT_CARE_1725| |$alpha-33:u_1035| |$alpha-32:x_DO_NOT_CARE_1728| |$alpha-31:x_DO_NOT_CARE_1727|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) )
    (=>
      ( and (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-36:a_EXPARAM_1279| Int) (|$alpha-42:b_EXPARAM_1282| Int) (|$alpha-46:c9_COEFFICIENT_1286| Int) (|$alpha-47:c8_COEFFICIENT_1285| Int) (|$alpha-48:c7_COEFFICIENT_1284| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:32| (+ |$knormal:31| |$alpha-46:c9_COEFFICIENT_1286|)) (= |$knormal:31| (* |$alpha-47:c8_COEFFICIENT_1285| |$alpha-36:a_EXPARAM_1279|)) (= |$knormal:30| (* |$alpha-48:c7_COEFFICIENT_1284| |$alpha-42:b_EXPARAM_1282|)) (= |$alpha-48:c7_COEFFICIENT_1284| 0) (= |$alpha-47:c8_COEFFICIENT_1285| 0) (= |$alpha-46:c9_COEFFICIENT_1286| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:122| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-57:a_1040| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (|f2_1034$unknown:63| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|) true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f3_1038$unknown:106| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$V-reftype:208| Int) (|$V-reftype:209| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-57:a_1040| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (|f3_1038$unknown:107| |$V-reftype:209| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) (|f2_1034$unknown:63| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|) true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:64| |$V-reftype:209| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:188| Int) (|$V-reftype:190| Int) (|$V-reftype:192| Int) (|$V-reftype:193| Int) (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-57:a_1040| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (|f3_1038$unknown:99| |$V-reftype:193| |$V-reftype:192| |$V-reftype:190| |$V-reftype:188| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:56| |$V-reftype:193| |$V-reftype:192| |$V-reftype:190| |$V-reftype:188| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:116| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-57:a_1040| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (|f2_1034$unknown:60| |$V-reftype:116| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|) (|f3_1038$unknown:102| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f3_1038$unknown:103| |$V-reftype:116| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:199| Int) (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-57:a_1040| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (|f3_1038$unknown:102| |$V-reftype:199| |$V-reftype:113| |$V-reftype:111| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:59| |$V-reftype:199| |$V-reftype:113| |$V-reftype:111| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$V-reftype:95| |$V-reftype:93| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:170| |$alpha-57:a_1040| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and true true true true true (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$V-reftype:208| Int) (|$V-reftype:209| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true (|f3_1038$unknown:110| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true (|f3_1038$unknown:107| |$V-reftype:209| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) )
      (|f3_1038$unknown:111| |$V-reftype:209| |$V-reftype:208| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$V-reftype:215| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true (|f3_1038$unknown:110| |$V-reftype:215| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true )
      (|f3_1038$unknown:106| |$V-reftype:215| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and true true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:188| Int) (|$V-reftype:190| Int) (|$V-reftype:192| Int) (|$V-reftype:193| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (|f3_1038$unknown:99| |$V-reftype:193| |$V-reftype:192| |$V-reftype:190| |$V-reftype:188| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:73| |$V-reftype:193| |$V-reftype:192| |$V-reftype:190| |$V-reftype:188| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (|f2_1034$unknown:77| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|) (|f3_1038$unknown:102| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f3_1038$unknown:103| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:199| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (|f3_1038$unknown:102| |$V-reftype:199| |$V-reftype:147| |$V-reftype:145| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:74| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      (|f2_1034$unknown:76| |$V-reftype:199| |$V-reftype:147| |$V-reftype:145| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$knormal:70| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$knormal:62| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-51:u_1039| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and true true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and true (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:62| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:51| |$alpha-58:c6_COEFFICIENT_1273|)) (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$knormal:51| (* |$alpha-59:c5_COEFFICIENT_1272| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-58:c6_COEFFICIENT_1273| Int) (|$alpha-59:c5_COEFFICIENT_1272| Int) (|$alpha-60:c4_COEFFICIENT_1267| Int) (|$alpha-61:c3_COEFFICIENT_1266| Int) (|$knormal:52| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:52| |$alpha-60:c4_COEFFICIENT_1267|)) (= |$knormal:52| (* |$alpha-61:c3_COEFFICIENT_1266| |$alpha-54:a_EXPARAM_1261|)) (= |$alpha-61:c3_COEFFICIENT_1266| 0) (= |$alpha-60:c4_COEFFICIENT_1267| 0) (= |$alpha-59:c5_COEFFICIENT_1272| 0) (= |$alpha-58:c6_COEFFICIENT_1273| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:207| Int) (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$V-reftype:274| Int) (|$V-reftype:276| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$V-reftype:207| |$V-reftype:276| |$V-reftype:274| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      (|f5_1044$unknown:142| |$V-reftype:207| |$V-reftype:276| |$V-reftype:274| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$V-reftype:274| Int) (|$V-reftype:276| Int) (|$V-reftype:278| Int) (|$V-reftype:279| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f5_1044$unknown:143| |$V-reftype:279| |$V-reftype:278| |$V-reftype:276| |$V-reftype:274| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) (|f3_1038$unknown:106| |$V-reftype:278| |$V-reftype:276| |$V-reftype:274| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      (|f3_1038$unknown:107| |$V-reftype:279| |$V-reftype:278| |$V-reftype:276| |$V-reftype:274| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:186| Int) (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$V-reftype:258| Int) (|$V-reftype:260| Int) (|$V-reftype:262| Int) (|$V-reftype:263| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f5_1044$unknown:135| |$V-reftype:263| |$V-reftype:262| |$V-reftype:260| |$V-reftype:258| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) true true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      (|f3_1038$unknown:99| |$V-reftype:263| |$V-reftype:262| |$V-reftype:260| |$V-reftype:258| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:186| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:201| Int) (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f3_1038$unknown:103| |$V-reftype:201| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) (|f5_1044$unknown:138| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      (|f5_1044$unknown:139| |$V-reftype:201| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:186| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:240| Int) (|$V-reftype:242| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$V-reftype:269| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f5_1044$unknown:138| |$V-reftype:269| |$V-reftype:198| |$V-reftype:196| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|) true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      (|f3_1038$unknown:102| |$V-reftype:269| |$V-reftype:198| |$V-reftype:196| |$V-reftype:186| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:246| |$V-reftype:244| |$V-reftype:242| |$V-reftype:240| |$knormal:107| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-82:c0_COEFFICIENT_1250| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and true (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:318| Int) (|$alpha-62:x_DO_NOT_CARE_1715| Int) (|$alpha-63:x_DO_NOT_CARE_1716| Int) (|$alpha-64:u_1042| Int) (|$alpha-65:set_flag_f1_1304| Int) (|$alpha-66:s_f1_c_EXPARAM_1296| Int) (|$alpha-67:v_1043| Int) )
    (=>
      ( and (= |$V-reftype:318| |$alpha-67:v_1043|) true true true true true true )
      (|f4_1041$unknown:118| |$V-reftype:318| |$alpha-67:v_1043| |$alpha-66:s_f1_c_EXPARAM_1296| |$alpha-65:set_flag_f1_1304| |$alpha-64:u_1042| |$alpha-63:x_DO_NOT_CARE_1716| |$alpha-62:x_DO_NOT_CARE_1715|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:227| Int) (|$V-reftype:229| Int) (|$V-reftype:230| Int) (|$alpha-68:x_DO_NOT_CARE_1713| Int) (|$alpha-69:x_DO_NOT_CARE_1714| Int) (|$alpha-70:u_1045| Int) (|$alpha-71:x_DO_NOT_CARE_1711| Int) (|$alpha-72:x_DO_NOT_CARE_1712| Int) (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-74:set_flag_f1_1304| Int) (|$alpha-75:s_f1_c_EXPARAM_1296| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:89| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true true true (|f4_1041$unknown:118| |$V-reftype:230| |$V-reftype:229| |$V-reftype:227| |$knormal:89| |$alpha-70:u_1045| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304|) )
      (|f5_1044$unknown:135| |$V-reftype:230| |$V-reftype:229| |$V-reftype:227| |$knormal:89| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$knormal:93| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|)
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:266| Int) (|$V-reftype:268| Int) (|$V-reftype:270| Int) (|$V-reftype:271| Int) (|$alpha-68:x_DO_NOT_CARE_1713| Int) (|$alpha-69:x_DO_NOT_CARE_1714| Int) (|$alpha-70:u_1045| Int) (|$alpha-71:x_DO_NOT_CARE_1711| Int) (|$alpha-72:x_DO_NOT_CARE_1712| Int) (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-74:set_flag_f1_1304| Int) (|$alpha-75:s_f1_c_EXPARAM_1296| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:142| |$V-reftype:270| |$V-reftype:268| |$V-reftype:266| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|) true true (|f5_1044$unknown:139| |$V-reftype:271| |$V-reftype:270| |$V-reftype:268| |$V-reftype:266| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$knormal:93| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|) true true true true true true true true )
      (|f5_1044$unknown:143| |$V-reftype:271| |$V-reftype:270| |$V-reftype:268| |$V-reftype:266| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:266| Int) (|$V-reftype:268| Int) (|$V-reftype:277| Int) (|$alpha-68:x_DO_NOT_CARE_1713| Int) (|$alpha-69:x_DO_NOT_CARE_1714| Int) (|$alpha-70:u_1045| Int) (|$alpha-71:x_DO_NOT_CARE_1711| Int) (|$alpha-72:x_DO_NOT_CARE_1712| Int) (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-74:set_flag_f1_1304| Int) (|$alpha-75:s_f1_c_EXPARAM_1296| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) (|f5_1044$unknown:142| |$V-reftype:277| |$V-reftype:268| |$V-reftype:266| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|) true true true true true true true true true true )
      (|f5_1044$unknown:138| |$V-reftype:277| |$V-reftype:268| |$V-reftype:266| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$knormal:93| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-75:s_f1_c_EXPARAM_1296| |$alpha-74:set_flag_f1_1304| |$alpha-73:e_EXPARAM_1254| |$alpha-72:x_DO_NOT_CARE_1712| |$alpha-71:x_DO_NOT_CARE_1711| |$alpha-70:u_1045| |$alpha-69:x_DO_NOT_CARE_1714| |$alpha-68:x_DO_NOT_CARE_1713|)
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) )
    (=>
      ( and (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-73:e_EXPARAM_1254| Int) (|$alpha-77:c2_COEFFICIENT_1257| Int) (|$alpha-78:c1_COEFFICIENT_1256| Int) (|$knormal:84| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| (+ |$knormal:84| |$alpha-77:c2_COEFFICIENT_1257|)) (= |$knormal:84| (* |$alpha-78:c1_COEFFICIENT_1256| |$alpha-73:e_EXPARAM_1254|)) (= |$alpha-78:c1_COEFFICIENT_1256| 0) (= |$alpha-77:c2_COEFFICIENT_1257| 0) true true true true true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:144| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:324| Int) (|$alpha-79:set_flag_f1_1304| Int) (|$alpha-80:s_f1_c_EXPARAM_1296| Int) (|$alpha-81:u_1048| Int) (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) (= |$V-reftype:324| 1) true true true )
      (|main_1047$unknown:149| |$V-reftype:324| |$alpha-81:u_1048| |$alpha-80:s_f1_c_EXPARAM_1296| |$alpha-79:set_flag_f1_1304|)
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-82:c0_COEFFICIENT_1250| Int) )
    (=>
      ( and (= |$alpha-82:c0_COEFFICIENT_1250| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:126| Int) (|$knormal:128| Int) (|$knormal:131| Int) )
    (=>
      ( and (= |$knormal:131| 1) (= |$knormal:128| 0) (= |$knormal:126| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:126| Int) (|$knormal:128| Int) (|$knormal:131| Int) )
    (=>
      ( and (= |$knormal:131| 1) (= |$knormal:128| 0) (= |$knormal:126| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:126| Int) (|$knormal:128| Int) (|$knormal:131| Int) )
    (=>
      ( and (= |$knormal:131| 1) (= |$knormal:128| 0) (= |$knormal:126| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

