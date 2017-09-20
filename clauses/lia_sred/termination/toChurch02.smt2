(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c10_COEFFICIENT_1129 = 0
     let rec c9_COEFFICIENT_1128 = 0
     let rec c8_COEFFICIENT_1127 = 0
     let rec c7_COEFFICIENT_1125 = 0
     let rec c6_COEFFICIENT_1124 = 0
     let rec c5_COEFFICIENT_1123 = 0
     let rec c4_COEFFICIENT_1122 = 0
     let rec c3_COEFFICIENT_1121 = 0
     let rec c2_COEFFICIENT_1120 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1116 = 0
  
     let compose_1030 x_DO_NOT_CARE_1445 x_DO_NOT_CARE_1446 f_EXPARAM_1133 x_DO_NOT_CARE_1443 x_DO_NOT_CARE_1444 f_1031 x_DO_NOT_CARE_1441 x_DO_NOT_CARE_1442 g_EXPARAM_1134 x_DO_NOT_CARE_1439 x_DO_NOT_CARE_1440 g_1032 set_flag_succ_1296 s_succ_x_1293 x_1033 =
       f_1031 set_flag_succ_1296 s_succ_x_1293
         (g_1032 set_flag_succ_1296 s_succ_x_1293 x_1033)
  
     let id_1034 set_flag_succ_1296 s_succ_x_1293 x_1035 = x_1035
  
     let succ_without_checking_1316 set_flag_succ_1296 s_succ_x_1293 x_1037 =
       let set_flag_succ_1296 = true
       in
       let s_succ_x_1293 = x_1037
       in
         x_1037 + 1
  
     let rec succ_1036 prev_set_flag_succ_1295 s_prev_succ_x_1294 x_1037 =
       let u = if prev_set_flag_succ_1295 then
                let u_8154 = fail ()
                in
                  bot()
               else () in
              succ_without_checking_1316 prev_set_flag_succ_1295
                s_prev_succ_x_1294 x_1037
  
     let rec toChurch_1038 x_DO_NOT_CARE_1437 x_DO_NOT_CARE_1438 n_1039 x_DO_NOT_CARE_1435 x_DO_NOT_CARE_1436 f_EXPARAM_1119 set_flag_succ_1296 s_succ_x_1293 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_succ_1296 s_succ_x_1293
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_succ_1296 s_succ_x_1293 f_1040 set_flag_succ_1296
           s_succ_x_1293
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_succ_1296 s_succ_x_1293
           (toChurch_1038 set_flag_succ_1296 s_succ_x_1293 (n_1039 - 1)
             set_flag_succ_1296 s_succ_x_1293
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_succ_1296 s_succ_x_1293 f_1040)
  
     let main_1041 x_1043 =
       let set_flag_succ_1296 = false in
       let s_succ_x_1293 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_succ_1296 s_succ_x_1293 x_1043
               set_flag_succ_1296 s_succ_x_1293
               ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_succ_1296 s_succ_x_1293 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |toChurch_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1036$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:51|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-26:prev_set_flag_succ_1295| Int) (|$alpha-27:s_prev_succ_x_1294| Int) (|$alpha-28:x_1037| Int) (|$cond-alpha-rename:1033| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:20| 1) (|fail$unknown:26| |$knormal:22| 1) (|toChurch_1038$unknown:51| |$alpha-28:x_1037| |$alpha-27:s_prev_succ_x_1294| |$alpha-26:prev_set_flag_succ_1295| 0 0 (+ (* 0 |$cond-alpha-rename:1033|) 0) 0 0 |$cond-alpha-rename:1033| 0 0) (not (= 0 |$alpha-26:prev_set_flag_succ_1295|)) (>= |$cond-alpha-rename:1033| 0) )
      (|succ_1036$unknown:36| (+ |$alpha-28:x_1037| 1) |$alpha-28:x_1037| |$alpha-27:s_prev_succ_x_1294| |$alpha-26:prev_set_flag_succ_1295|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:93| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-39:f_1040| Int) (|$cond-alpha-rename:1065| Int) (|$cond-alpha-rename:1066| Int) (|$cond-alpha-rename:1078| Int) (|$cond-alpha-rename:1079| Int) (|$cond-alpha-rename:1080| Int) (|$cond-alpha-rename:1081| Int) (|$cond-alpha-rename:1082| Int) (|$cond-alpha-rename:1083| Int) (|$cond-alpha-rename:1119| Int) (|$cond-alpha-rename:1120| Int) (|$cond-alpha-rename:1132| Int) (|$cond-alpha-rename:1133| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1137| Int) (|$cond-alpha-rename:1138| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:43| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$cond-alpha-rename:1083| |$cond-alpha-rename:1082| |$cond-alpha-rename:1081| |$cond-alpha-rename:1080| |$cond-alpha-rename:1079| |$cond-alpha-rename:1078|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$cond-alpha-rename:1137| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134| |$cond-alpha-rename:1133| |$cond-alpha-rename:1132|) (|toChurch_1038$unknown:56| |$V-reftype:18| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| (- |$cond-alpha-rename:129| 1) |$cond-alpha-rename:1139| |$cond-alpha-rename:1138|) (not (= |$cond-alpha-rename:1080| 0)) (not (= |$cond-alpha-rename:1065| 0)) (not (= |$cond-alpha-rename:1134| 0)) (not (= |$cond-alpha-rename:1119| 0)) (not (= |$cond-alpha-rename:129| 0)) (not (= (- |$cond-alpha-rename:1065| 1) 0)) (not (= (- |$cond-alpha-rename:1119| 1) 0)) (not (= |$alpha-33:n_1039| 0)) (= (+ (* 0 |$cond-alpha-rename:1083|) (+ (* 0 |$cond-alpha-rename:1080|) 0)) (+ (* 0 |$cond-alpha-rename:1066|) (+ (* 0 |$cond-alpha-rename:1065|) 0))) (= (+ (* 0 |$cond-alpha-rename:1083|) (+ (* 0 |$cond-alpha-rename:1080|) 0)) (+ (* 0 |$cond-alpha-rename:1066|) (+ (* 0 |$cond-alpha-rename:1065|) 0))) (= (+ (* 0 |$cond-alpha-rename:1137|) (+ (* 0 |$cond-alpha-rename:1134|) 0)) (+ (* 0 |$cond-alpha-rename:1120|) (+ (* 0 |$cond-alpha-rename:1119|) 0))) (= (+ (* 0 |$cond-alpha-rename:1137|) (+ (* 0 |$cond-alpha-rename:1134|) 0)) (+ (* 0 |$cond-alpha-rename:1120|) (+ (* 0 |$cond-alpha-rename:1119|) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1066|) (+ (* 0 |$cond-alpha-rename:1065|) 0))) (+ (* 0 (- |$cond-alpha-rename:1065| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1120|) (+ (* 0 |$cond-alpha-rename:1119|) 0))) (+ (* 0 (- |$cond-alpha-rename:1119| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1066|) (+ (* 0 |$cond-alpha-rename:1065|) 0))) (+ (* 0 (- |$cond-alpha-rename:1065| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1120|) (+ (* 0 |$cond-alpha-rename:1119|) 0))) (+ (* 0 (- |$cond-alpha-rename:1119| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0))) )
      (|toChurch_1038$unknown:51| |$V-reftype:18| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1024| Int) (|$cond-alpha-rename:1025| Int) (|$cond-alpha-rename:1026| Int) (|$cond-alpha-rename:1028| Int) (|$cond-alpha-rename:1029| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:1174| Int) (|$cond-alpha-rename:1186| Int) (|$cond-alpha-rename:1187| Int) (|$cond-alpha-rename:1188| Int) (|$cond-alpha-rename:1189| Int) (|$cond-alpha-rename:1190| Int) (|$cond-alpha-rename:1191| Int) (|$cond-alpha-rename:1227| Int) (|$cond-alpha-rename:1228| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1241| Int) (|$cond-alpha-rename:1242| Int) (|$cond-alpha-rename:1243| Int) (|$cond-alpha-rename:1244| Int) (|$cond-alpha-rename:1245| Int) (|$cond-alpha-rename:1281| Int) (|$cond-alpha-rename:1282| Int) (|$cond-alpha-rename:1294| Int) (|$cond-alpha-rename:1295| Int) (|$cond-alpha-rename:1296| Int) (|$cond-alpha-rename:1297| Int) (|$cond-alpha-rename:1298| Int) (|$cond-alpha-rename:1299| Int) (|$cond-alpha-rename:1335| Int) (|$cond-alpha-rename:1336| Int) (|$cond-alpha-rename:1348| Int) (|$cond-alpha-rename:1349| Int) (|$cond-alpha-rename:1350| Int) (|$cond-alpha-rename:1351| Int) (|$cond-alpha-rename:1352| Int) (|$cond-alpha-rename:1353| Int) (|$cond-alpha-rename:1389| Int) (|$cond-alpha-rename:1390| Int) (|$cond-alpha-rename:1402| Int) (|$cond-alpha-rename:1403| Int) (|$cond-alpha-rename:1404| Int) (|$cond-alpha-rename:1405| Int) (|$cond-alpha-rename:1406| Int) (|$cond-alpha-rename:1407| Int) (|$cond-alpha-rename:1408| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:840| Int) (|$cond-alpha-rename:855| Int) (|$cond-alpha-rename:856| Int) (|$cond-alpha-rename:880| Int) (|$cond-alpha-rename:881| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$cond-alpha-rename:1028| |$cond-alpha-rename:1029| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1026| |$cond-alpha-rename:1025| |$cond-alpha-rename:1024| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1191| |$cond-alpha-rename:1190| |$cond-alpha-rename:1189| |$cond-alpha-rename:1188| |$cond-alpha-rename:1187| |$cond-alpha-rename:1186|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1245| |$cond-alpha-rename:1244| |$cond-alpha-rename:1243| |$cond-alpha-rename:1242| |$cond-alpha-rename:1241| |$cond-alpha-rename:1240|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1299| |$cond-alpha-rename:1298| |$cond-alpha-rename:1297| |$cond-alpha-rename:1296| |$cond-alpha-rename:1295| |$cond-alpha-rename:1294|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:840| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1353| |$cond-alpha-rename:1352| |$cond-alpha-rename:1351| |$cond-alpha-rename:1350| |$cond-alpha-rename:1349| |$cond-alpha-rename:1348|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:840| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1407| |$cond-alpha-rename:1406| |$cond-alpha-rename:1405| |$cond-alpha-rename:1404| |$cond-alpha-rename:1403| |$cond-alpha-rename:1402|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:1029| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (+ (* 0 |$cond-alpha-rename:856|) (+ (* 0 |$cond-alpha-rename:855|) 0)) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (- |$cond-alpha-rename:855| 1) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:1029| |$cond-alpha-rename:840| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (+ (* 0 |$cond-alpha-rename:881|) (+ (* 0 |$cond-alpha-rename:880|) 0)) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (- |$cond-alpha-rename:880| 1) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408|) (not (= (- |$cond-alpha-rename:1389| 1) 0)) (not (= |$cond-alpha-rename:1188| 0)) (not (= |$cond-alpha-rename:1173| 0)) (not (= |$cond-alpha-rename:1242| 0)) (not (= |$cond-alpha-rename:1227| 0)) (not (= |$cond-alpha-rename:1296| 0)) (not (= |$cond-alpha-rename:1281| 0)) (not (= |$cond-alpha-rename:1350| 0)) (not (= |$cond-alpha-rename:1335| 0)) (not (= |$cond-alpha-rename:1404| 0)) (not (= |$cond-alpha-rename:1389| 0)) (not (= |$cond-alpha-rename:1023| 0)) (not (= |$cond-alpha-rename:855| 0)) (not (= |$cond-alpha-rename:880| 0)) (not (= (- |$cond-alpha-rename:1227| 1) 0)) (not (= (- |$cond-alpha-rename:1281| 1) 0)) (not (= (- |$cond-alpha-rename:1335| 1) 0)) (not (= (- |$cond-alpha-rename:1173| 1) 0)) (= (+ (* 0 |$cond-alpha-rename:1191|) (+ (* 0 |$cond-alpha-rename:1188|) 0)) (+ (* 0 |$cond-alpha-rename:1174|) (+ (* 0 |$cond-alpha-rename:1173|) 0))) (= (+ (* 0 |$cond-alpha-rename:1191|) (+ (* 0 |$cond-alpha-rename:1188|) 0)) (+ (* 0 |$cond-alpha-rename:1174|) (+ (* 0 |$cond-alpha-rename:1173|) 0))) (= (+ (* 0 |$cond-alpha-rename:1245|) (+ (* 0 |$cond-alpha-rename:1242|) 0)) (+ (* 0 |$cond-alpha-rename:1228|) (+ (* 0 |$cond-alpha-rename:1227|) 0))) (= (+ (* 0 |$cond-alpha-rename:1245|) (+ (* 0 |$cond-alpha-rename:1242|) 0)) (+ (* 0 |$cond-alpha-rename:1228|) (+ (* 0 |$cond-alpha-rename:1227|) 0))) (= (+ (* 0 |$cond-alpha-rename:1299|) (+ (* 0 |$cond-alpha-rename:1296|) 0)) (+ (* 0 |$cond-alpha-rename:1282|) (+ (* 0 |$cond-alpha-rename:1281|) 0))) (= (+ (* 0 |$cond-alpha-rename:1299|) (+ (* 0 |$cond-alpha-rename:1296|) 0)) (+ (* 0 |$cond-alpha-rename:1282|) (+ (* 0 |$cond-alpha-rename:1281|) 0))) (= (+ (* 0 |$cond-alpha-rename:1353|) (+ (* 0 |$cond-alpha-rename:1350|) 0)) (+ (* 0 |$cond-alpha-rename:1336|) (+ (* 0 |$cond-alpha-rename:1335|) 0))) (= (+ (* 0 |$cond-alpha-rename:1353|) (+ (* 0 |$cond-alpha-rename:1350|) 0)) (+ (* 0 |$cond-alpha-rename:1336|) (+ (* 0 |$cond-alpha-rename:1335|) 0))) (= (+ (* 0 |$cond-alpha-rename:1407|) (+ (* 0 |$cond-alpha-rename:1404|) 0)) (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (= (+ (* 0 |$cond-alpha-rename:1407|) (+ (* 0 |$cond-alpha-rename:1404|) 0)) (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 |$cond-alpha-rename:881|) (+ (* 0 |$cond-alpha-rename:880|) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1336|) (+ (* 0 |$cond-alpha-rename:1335|) 0))) (+ (* 0 (- |$cond-alpha-rename:1335| 1)) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 |$cond-alpha-rename:1026|) (+ (* 0 |$cond-alpha-rename:1023|) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 |$cond-alpha-rename:856|) (+ (* 0 |$cond-alpha-rename:855|) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 |$cond-alpha-rename:881|) (+ (* 0 |$cond-alpha-rename:880|) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1228|) (+ (* 0 |$cond-alpha-rename:1227|) 0))) (+ (* 0 (- |$cond-alpha-rename:1227| 1)) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1282|) (+ (* 0 |$cond-alpha-rename:1281|) 0))) (+ (* 0 (- |$cond-alpha-rename:1281| 1)) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1336|) (+ (* 0 |$cond-alpha-rename:1335|) 0))) (+ (* 0 (- |$cond-alpha-rename:1335| 1)) 0))) (= (+ (* 0 (+ (* 0 |$cond-alpha-rename:1390|) (+ (* 0 |$cond-alpha-rename:1389|) 0))) (+ (* 0 (- |$cond-alpha-rename:1389| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1174|) (+ (* 0 |$cond-alpha-rename:1173|) 0))) (+ (* 0 (- |$cond-alpha-rename:1173| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:856|) (+ (* 0 |$cond-alpha-rename:855|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1228|) (+ (* 0 |$cond-alpha-rename:1227|) 0))) (+ (* 0 (- |$cond-alpha-rename:1227| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:856|) (+ (* 0 |$cond-alpha-rename:855|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1282|) (+ (* 0 |$cond-alpha-rename:1281|) 0))) (+ (* 0 (- |$cond-alpha-rename:1281| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:856|) (+ (* 0 |$cond-alpha-rename:855|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1174|) (+ (* 0 |$cond-alpha-rename:1173|) 0))) (+ (* 0 (- |$cond-alpha-rename:1173| 1)) 0))) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:1028| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (+ (* 0 |$cond-alpha-rename:1174|) (+ (* 0 |$cond-alpha-rename:1173|) 0)) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| (- |$cond-alpha-rename:1173| 1) |$cond-alpha-rename:1409| |$cond-alpha-rename:1408|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1030| Int) (|$cond-alpha-rename:1031| Int) (|$cond-alpha-rename:1032| Int) (|$cond-alpha-rename:1041| Int) )
    ( and (|toChurch_1038$unknown:51| |$cond-alpha-rename:1032| |$cond-alpha-rename:1031| |$cond-alpha-rename:1030| 0 0 (+ (* 0 |$cond-alpha-rename:1041|) 0) 0 0 |$cond-alpha-rename:1041| 0 0) (not (= 0 |$cond-alpha-rename:1030|)) (>= |$cond-alpha-rename:1041| 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$cond-alpha-rename:1443| Int) (|$cond-alpha-rename:1444| Int) (|$cond-alpha-rename:1456| Int) (|$cond-alpha-rename:1457| Int) (|$cond-alpha-rename:1458| Int) (|$cond-alpha-rename:1459| Int) (|$cond-alpha-rename:1460| Int) (|$cond-alpha-rename:1461| Int) (|$cond-alpha-rename:1462| Int) (|$cond-alpha-rename:1463| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:1463| |$cond-alpha-rename:1462| |$cond-alpha-rename:1461| |$cond-alpha-rename:1460| |$cond-alpha-rename:1459| |$cond-alpha-rename:1458| |$cond-alpha-rename:1457| |$cond-alpha-rename:1456|) (= (- |$cond-alpha-rename:1443| 1) 0) (not (= |$cond-alpha-rename:1458| 0)) (not (= |$cond-alpha-rename:1443| 0)) (= (+ (* 0 |$cond-alpha-rename:1461|) (+ (* 0 |$cond-alpha-rename:1458|) 0)) (+ (* 0 |$cond-alpha-rename:1444|) (+ (* 0 |$cond-alpha-rename:1443|) 0))) (= (+ (* 0 |$cond-alpha-rename:1461|) (+ (* 0 |$cond-alpha-rename:1458|) 0)) (+ (* 0 |$cond-alpha-rename:1444|) (+ (* 0 |$cond-alpha-rename:1443|) 0))) )
      (|toChurch_1038$unknown:56| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:1463| |$cond-alpha-rename:1462| (+ (* 0 |$cond-alpha-rename:1444|) (+ (* 0 |$cond-alpha-rename:1443|) 0)) |$cond-alpha-rename:1463| |$cond-alpha-rename:1462| (- |$cond-alpha-rename:1443| 1) |$cond-alpha-rename:1463| |$cond-alpha-rename:1462|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-49:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (|succ_1036$unknown:36| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |succ_1036|) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (>= |$alpha-49:x_1043| 0) )
      (|toChurch_1038$unknown:52| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-26:prev_set_flag_succ_1295| Int) (|$alpha-27:s_prev_succ_x_1294| Int) (|$alpha-28:x_1037| Int) (|$cond-alpha-rename:1049| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$alpha-28:x_1037| |$alpha-27:s_prev_succ_x_1294| |$alpha-26:prev_set_flag_succ_1295| 0 0 (+ (* 0 |$cond-alpha-rename:1049|) 0) 0 0 |$cond-alpha-rename:1049| 0 0) (>= |$cond-alpha-rename:1049| 0) (not (not (= 0 |$alpha-26:prev_set_flag_succ_1295|))) )
      (|succ_1036$unknown:36| (+ |$alpha-28:x_1037| 1) |$alpha-28:x_1037| |$alpha-27:s_prev_succ_x_1294| |$alpha-26:prev_set_flag_succ_1295|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:94| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:51| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|)
    )
  )
)
(check-sat)

(get-model)

