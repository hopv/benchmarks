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

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:51|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:93| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-39:f_1040| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:527| Int) (|$cond-alpha-rename:528| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:530| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:555| Int) (|$cond-alpha-rename:556| Int) (|$cond-alpha-rename:557| Int) (|$cond-alpha-rename:558| Int) (|$cond-alpha-rename:559| Int) (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:561| Int) (|$cond-alpha-rename:562| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:531| |$cond-alpha-rename:530| |$cond-alpha-rename:529| |$cond-alpha-rename:528| |$cond-alpha-rename:527| |$cond-alpha-rename:526|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:560| |$cond-alpha-rename:559| |$cond-alpha-rename:558| |$cond-alpha-rename:557| |$cond-alpha-rename:556| |$cond-alpha-rename:555|) (|toChurch_1038$unknown:56| |$V-reftype:18| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:562| |$cond-alpha-rename:561| (+ (* 0 |$cond-alpha-rename:300|) (+ (* 0 |$cond-alpha-rename:299|) 0)) |$cond-alpha-rename:562| |$cond-alpha-rename:561| (- |$cond-alpha-rename:299| 1) |$cond-alpha-rename:562| |$cond-alpha-rename:561|) (not (= |$cond-alpha-rename:528| 0)) (not (= |$cond-alpha-rename:557| 0)) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:299| 0)) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:531|) (+ (* 0 |$cond-alpha-rename:528|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:531|) (+ (* 0 |$cond-alpha-rename:528|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:560|) (+ (* 0 |$cond-alpha-rename:557|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:560|) (+ (* 0 |$cond-alpha-rename:557|) 0))) )
      (|toChurch_1038$unknown:51| |$V-reftype:18| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:36| Int) (|$alpha-33:n_1039| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:703| Int) (|$cond-alpha-rename:704| Int) (|$cond-alpha-rename:705| Int) (|$cond-alpha-rename:706| Int) (|$cond-alpha-rename:707| Int) (|$knormal:51| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:707| |$cond-alpha-rename:706| |$cond-alpha-rename:705| |$cond-alpha-rename:704| |$cond-alpha-rename:703| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700|) (not (= |$cond-alpha-rename:702| 0)) (not (= |$alpha-33:n_1039| 0)) (= 0 (+ (* 0 |$cond-alpha-rename:705|) (+ (* 0 |$cond-alpha-rename:702|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:705|) (+ (* 0 |$cond-alpha-rename:702|) 0))) )
      (|toChurch_1038$unknown:55| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:707| |$cond-alpha-rename:706| 0 |$cond-alpha-rename:707| |$cond-alpha-rename:706| (- |$alpha-33:n_1039| 1) |$cond-alpha-rename:707| |$cond-alpha-rename:706|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$cond-alpha-rename:1093| Int) (|$cond-alpha-rename:1094| Int) (|$cond-alpha-rename:1095| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:1098| Int) (|$cond-alpha-rename:1122| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:1124| Int) (|$cond-alpha-rename:1125| Int) (|$cond-alpha-rename:1126| Int) (|$cond-alpha-rename:1127| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:1129| Int) (|$cond-alpha-rename:1151| Int) (|$cond-alpha-rename:1152| Int) (|$cond-alpha-rename:1153| Int) (|$cond-alpha-rename:1154| Int) (|$cond-alpha-rename:1155| Int) (|$cond-alpha-rename:1156| Int) (|$cond-alpha-rename:1172| Int) (|$cond-alpha-rename:1187| Int) (|$cond-alpha-rename:1188| Int) (|$cond-alpha-rename:1212| Int) (|$cond-alpha-rename:1213| Int) (|$cond-alpha-rename:1237| Int) (|$cond-alpha-rename:1238| Int) (|$cond-alpha-rename:1239| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1241| Int) (|$cond-alpha-rename:1242| Int) (|$cond-alpha-rename:1266| Int) (|$cond-alpha-rename:1267| Int) (|$cond-alpha-rename:1268| Int) (|$cond-alpha-rename:1269| Int) (|$cond-alpha-rename:1270| Int) (|$cond-alpha-rename:1271| Int) (|$cond-alpha-rename:1292| Int) (|$cond-alpha-rename:1293| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:1271|) (+ (* 0 |$cond-alpha-rename:1268|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1271|) (+ (* 0 |$cond-alpha-rename:1268|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1242|) (+ (* 0 |$cond-alpha-rename:1239|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1242|) (+ (* 0 |$cond-alpha-rename:1239|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1213|) (+ (* 0 |$cond-alpha-rename:1212|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1188|) (+ (* 0 |$cond-alpha-rename:1187|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1188|) (+ (* 0 |$cond-alpha-rename:1187|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1156|) (+ (* 0 |$cond-alpha-rename:1153|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1127|) (+ (* 0 |$cond-alpha-rename:1124|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:1098|) (+ (* 0 |$cond-alpha-rename:1095|) 0))) (= (+ (* 0 |$cond-alpha-rename:1098|) (+ (* 0 |$cond-alpha-rename:1095|) 0)) (+ (* 0 |$cond-alpha-rename:1213|) (+ (* 0 |$cond-alpha-rename:1212|) 0))) (= (+ (* 0 |$cond-alpha-rename:1098|) (+ (* 0 |$cond-alpha-rename:1095|) 0)) (+ (* 0 |$cond-alpha-rename:1127|) (+ (* 0 |$cond-alpha-rename:1124|) 0))) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:1268| 0)) (not (= |$cond-alpha-rename:1239| 0)) (not (= |$cond-alpha-rename:1212| 0)) (not (= |$cond-alpha-rename:1187| 0)) (not (= |$cond-alpha-rename:1153| 0)) (not (= |$cond-alpha-rename:1124| 0)) (not (= |$cond-alpha-rename:1095| 0)) (|toChurch_1038$unknown:56| |$cond-alpha-rename:1293| |$cond-alpha-rename:1172| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| (+ (* 0 |$cond-alpha-rename:1213|) (+ (* 0 |$cond-alpha-rename:1212|) 0)) |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| (- |$cond-alpha-rename:1212| 1) |$cond-alpha-rename:1129| |$cond-alpha-rename:1128|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:1293| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| (+ (* 0 |$cond-alpha-rename:1188|) (+ (* 0 |$cond-alpha-rename:1187|) 0)) |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| (- |$cond-alpha-rename:1187| 1) |$cond-alpha-rename:1129| |$cond-alpha-rename:1128|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:1172| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1127| |$cond-alpha-rename:1126| |$cond-alpha-rename:1125| |$cond-alpha-rename:1124| |$cond-alpha-rename:1123| |$cond-alpha-rename:1122|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:1172| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1098| |$cond-alpha-rename:1097| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:1094| |$cond-alpha-rename:1093|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1271| |$cond-alpha-rename:1270| |$cond-alpha-rename:1269| |$cond-alpha-rename:1268| |$cond-alpha-rename:1267| |$cond-alpha-rename:1266|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1242| |$cond-alpha-rename:1241| |$cond-alpha-rename:1240| |$cond-alpha-rename:1239| |$cond-alpha-rename:1238| |$cond-alpha-rename:1237|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) (|toChurch_1038$unknown:52| |$cond-alpha-rename:1292| |$cond-alpha-rename:1293| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1156| |$cond-alpha-rename:1155| |$cond-alpha-rename:1154| |$cond-alpha-rename:1153| |$cond-alpha-rename:1152| |$cond-alpha-rename:1151|) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:1292| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1530| Int) (|$cond-alpha-rename:1531| Int) (|$cond-alpha-rename:1532| Int) (|$cond-alpha-rename:1632| Int) )
    ( and (>= |$cond-alpha-rename:1632| 0) (not (= 0 |$cond-alpha-rename:1530|)) (|toChurch_1038$unknown:51| |$cond-alpha-rename:1532| |$cond-alpha-rename:1531| |$cond-alpha-rename:1530| 0 0 (+ (* 0 |$cond-alpha-rename:1632|) 0) 0 0 |$cond-alpha-rename:1632| 0 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| 0 |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) )
      (|toChurch_1038$unknown:56| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| 0 |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1732| Int) (|$cond-alpha-rename:1742| Int) (|$cond-alpha-rename:1744| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) (not (= 0 |succ_1036|)) (>= |$cond-alpha-rename:1732| 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1732|) 0) 0 0 |$cond-alpha-rename:1732| 0 0) (|fail$unknown:26| |$cond-alpha-rename:1744| 1) (|bot$unknown:2| |$cond-alpha-rename:1742| 1) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1745| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) (not (not (= 0 |succ_1036|))) (>= |$cond-alpha-rename:1745| 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1745|) 0) 0 0 |$cond-alpha-rename:1745| 0 0) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
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

(exit)

