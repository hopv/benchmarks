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
  
     let main x_1043 =
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

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:50|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:49|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:54|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:53|
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
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:93| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-39:f_1040| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:549| Int) (|$cond-alpha-rename:550| Int) (|$cond-alpha-rename:551| Int) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:554| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:552|) (+ (* 0 |$cond-alpha-rename:549|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:552|) (+ (* 0 |$cond-alpha-rename:549|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:523|) (+ (* 0 |$cond-alpha-rename:520|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:523|) (+ (* 0 |$cond-alpha-rename:520|) 0))) (= 0 0) (not (= |$cond-alpha-rename:293| 0)) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:549| 0)) (not (= |$cond-alpha-rename:520| 0)) (|toChurch_1038$unknown:54| |$V-reftype:18| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:554| |$cond-alpha-rename:553| (+ (* 0 |$cond-alpha-rename:294|) (+ (* 0 |$cond-alpha-rename:293|) 0)) |$cond-alpha-rename:554| |$cond-alpha-rename:553| (- |$cond-alpha-rename:293| 1) |$cond-alpha-rename:554| |$cond-alpha-rename:553|) (|toChurch_1038$unknown:53| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:554| |$cond-alpha-rename:553| |$cond-alpha-rename:552| |$cond-alpha-rename:551| |$cond-alpha-rename:550| |$cond-alpha-rename:549| |$cond-alpha-rename:548| |$cond-alpha-rename:547|) (|toChurch_1038$unknown:53| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:554| |$cond-alpha-rename:553| |$cond-alpha-rename:523| |$cond-alpha-rename:522| |$cond-alpha-rename:521| |$cond-alpha-rename:520| |$cond-alpha-rename:519| |$cond-alpha-rename:518|) )
      (|toChurch_1038$unknown:49| |$V-reftype:18| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:554| |$cond-alpha-rename:553| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:36| Int) (|$alpha-33:n_1039| Int) (|$cond-alpha-rename:692| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:694| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$knormal:51| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:697|) (+ (* 0 |$cond-alpha-rename:694|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:697|) (+ (* 0 |$cond-alpha-rename:694|) 0))) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:694| 0)) (|toChurch_1038$unknown:53| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696| |$cond-alpha-rename:695| |$cond-alpha-rename:694| |$cond-alpha-rename:693| |$cond-alpha-rename:692|) )
      (|toChurch_1038$unknown:53| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:699| |$cond-alpha-rename:698| 0 |$cond-alpha-rename:699| |$cond-alpha-rename:698| (- |$alpha-33:n_1039| 1) |$cond-alpha-rename:699| |$cond-alpha-rename:698|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$cond-alpha-rename:1102| Int) (|$cond-alpha-rename:1103| Int) (|$cond-alpha-rename:1104| Int) (|$cond-alpha-rename:1105| Int) (|$cond-alpha-rename:1106| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1108| Int) (|$cond-alpha-rename:1109| Int) (|$cond-alpha-rename:1131| Int) (|$cond-alpha-rename:1132| Int) (|$cond-alpha-rename:1133| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1152| Int) (|$cond-alpha-rename:1167| Int) (|$cond-alpha-rename:1168| Int) (|$cond-alpha-rename:1192| Int) (|$cond-alpha-rename:1193| Int) (|$cond-alpha-rename:1217| Int) (|$cond-alpha-rename:1218| Int) (|$cond-alpha-rename:1219| Int) (|$cond-alpha-rename:1220| Int) (|$cond-alpha-rename:1221| Int) (|$cond-alpha-rename:1222| Int) (|$cond-alpha-rename:1246| Int) (|$cond-alpha-rename:1247| Int) (|$cond-alpha-rename:1248| Int) (|$cond-alpha-rename:1249| Int) (|$cond-alpha-rename:1250| Int) (|$cond-alpha-rename:1251| Int) (|$cond-alpha-rename:1275| Int) (|$cond-alpha-rename:1276| Int) (|$cond-alpha-rename:1277| Int) (|$cond-alpha-rename:1278| Int) (|$cond-alpha-rename:1279| Int) (|$cond-alpha-rename:1280| Int) (|$cond-alpha-rename:1282| Int) (|$cond-alpha-rename:1283| Int) )
    (=>
      ( and (|toChurch_1038$unknown:50| |$cond-alpha-rename:1282| |$cond-alpha-rename:1283| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134| |$cond-alpha-rename:1133| |$cond-alpha-rename:1132| |$cond-alpha-rename:1131|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1222| |$cond-alpha-rename:1221| |$cond-alpha-rename:1220| |$cond-alpha-rename:1219| |$cond-alpha-rename:1218| |$cond-alpha-rename:1217|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1251| |$cond-alpha-rename:1250| |$cond-alpha-rename:1249| |$cond-alpha-rename:1248| |$cond-alpha-rename:1247| |$cond-alpha-rename:1246|) (|toChurch_1038$unknown:53| |$cond-alpha-rename:1152| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1280| |$cond-alpha-rename:1279| |$cond-alpha-rename:1278| |$cond-alpha-rename:1277| |$cond-alpha-rename:1276| |$cond-alpha-rename:1275|) (|toChurch_1038$unknown:53| |$cond-alpha-rename:1152| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107| |$cond-alpha-rename:1106| |$cond-alpha-rename:1105| |$cond-alpha-rename:1104| |$cond-alpha-rename:1103| |$cond-alpha-rename:1102|) (|toChurch_1038$unknown:54| |$cond-alpha-rename:1283| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| (+ (* 0 |$cond-alpha-rename:1168|) (+ (* 0 |$cond-alpha-rename:1167|) 0)) |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| (- |$cond-alpha-rename:1167| 1) |$cond-alpha-rename:1109| |$cond-alpha-rename:1108|) (|toChurch_1038$unknown:54| |$cond-alpha-rename:1283| |$cond-alpha-rename:1152| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| (+ (* 0 |$cond-alpha-rename:1193|) (+ (* 0 |$cond-alpha-rename:1192|) 0)) |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| (- |$cond-alpha-rename:1192| 1) |$cond-alpha-rename:1109| |$cond-alpha-rename:1108|) (not (= |$cond-alpha-rename:1277| 0)) (not (= |$cond-alpha-rename:1104| 0)) (not (= |$cond-alpha-rename:1133| 0)) (not (= |$cond-alpha-rename:1167| 0)) (not (= |$cond-alpha-rename:1192| 0)) (not (= |$cond-alpha-rename:1219| 0)) (not (= |$cond-alpha-rename:1248| 0)) (not (= |$alpha-33:n_1039| 0)) (= (+ (* 0 |$cond-alpha-rename:1280|) (+ (* 0 |$cond-alpha-rename:1277|) 0)) (+ (* 0 |$cond-alpha-rename:1107|) (+ (* 0 |$cond-alpha-rename:1104|) 0))) (= (+ (* 0 |$cond-alpha-rename:1280|) (+ (* 0 |$cond-alpha-rename:1277|) 0)) (+ (* 0 |$cond-alpha-rename:1193|) (+ (* 0 |$cond-alpha-rename:1192|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1280|) (+ (* 0 |$cond-alpha-rename:1277|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1107|) (+ (* 0 |$cond-alpha-rename:1104|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1136|) (+ (* 0 |$cond-alpha-rename:1133|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1168|) (+ (* 0 |$cond-alpha-rename:1167|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1168|) (+ (* 0 |$cond-alpha-rename:1167|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1193|) (+ (* 0 |$cond-alpha-rename:1192|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1222|) (+ (* 0 |$cond-alpha-rename:1219|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1222|) (+ (* 0 |$cond-alpha-rename:1219|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1251|) (+ (* 0 |$cond-alpha-rename:1248|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1251|) (+ (* 0 |$cond-alpha-rename:1248|) 0))) )
      (|toChurch_1038$unknown:54| |$cond-alpha-rename:1282| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1518| Int) (|$cond-alpha-rename:1519| Int) (|$cond-alpha-rename:1520| Int) (|$cond-alpha-rename:1587| Int) )
    ( and (>= |$cond-alpha-rename:1587| 0) (not (= 0 |$cond-alpha-rename:1518|)) (|toChurch_1038$unknown:49| |$cond-alpha-rename:1520| |$cond-alpha-rename:1519| |$cond-alpha-rename:1518| 0 0 (+ (* 0 |$cond-alpha-rename:1587|) 0) 0 0 |$cond-alpha-rename:1587| 0 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) )
    (=>
      ( and (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| 0 |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) )
      (|toChurch_1038$unknown:54| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| 0 |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1687| Int) (|$cond-alpha-rename:1697| Int) (|$cond-alpha-rename:1699| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) (not (= 0 |succ_1036|)) (>= |$cond-alpha-rename:1687| 0) (|toChurch_1038$unknown:49| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:49| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1687|) 0) 0 0 |$cond-alpha-rename:1687| 0 0) (|fail$unknown:26| |$cond-alpha-rename:1699| 1) (|bot$unknown:2| |$cond-alpha-rename:1697| 1) )
      (|toChurch_1038$unknown:50| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1700| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) (not (not (= 0 |succ_1036|))) (>= |$cond-alpha-rename:1700| 0) (|toChurch_1038$unknown:49| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:49| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1700|) 0) 0 0 |$cond-alpha-rename:1700| 0 0) )
      (|toChurch_1038$unknown:50| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:94| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (not (= |$alpha-33:n_1039| 0)) (|toChurch_1038$unknown:49| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) )
      (|toChurch_1038$unknown:49| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (not (= |$alpha-33:n_1039| 0)) (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) (|toChurch_1038$unknown:49| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) )
      (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|)
    )
  )
)
(check-sat)

(get-model)

(exit)

