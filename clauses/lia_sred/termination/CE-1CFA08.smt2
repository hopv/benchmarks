(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c7_COEFFICIENT_1128 = 0
     let rec c6_COEFFICIENT_1126 = 0
     let rec c5_COEFFICIENT_1125 = 0
     let rec c4_COEFFICIENT_1123 = 0
     let rec c3_COEFFICIENT_1120 = 0
     let rec c2_COEFFICIENT_1118 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1115 = 0
  
     let id_1030 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1031 =
       x_1031
  
     let rec omega_1032 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1033 =
       omega_1032 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1033
  
     let f_1034 x_DO_NOT_CARE_1438 x_DO_NOT_CARE_1439 x_DO_NOT_CARE_1440 x_EXPARAM_1133 x_DO_NOT_CARE_1435 x_DO_NOT_CARE_1436 x_DO_NOT_CARE_1437 x_1035 x_DO_NOT_CARE_1432 x_DO_NOT_CARE_1433 x_DO_NOT_CARE_1434 y_EXPARAM_1134 x_DO_NOT_CARE_1429 x_DO_NOT_CARE_1430 x_DO_NOT_CARE_1431 y_1036 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 z_1037 =
       y_1036 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 z_1037
  
     let app_without_checking_1355 x_DO_NOT_CARE_1426 x_DO_NOT_CARE_1427 x_DO_NOT_CARE_1428 h_EXPARAM_1131 x_DO_NOT_CARE_1423 x_DO_NOT_CARE_1424 x_DO_NOT_CARE_1425 h_1039 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1040 =
       let set_flag_app_1344 = true
       in
       let s_app_x_1339 = x_1040
       in
       let s_app_h_EXPARAM_1337 = h_EXPARAM_1131
       in
         h_1039 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1040
  
     let rec app_1038 x_DO_NOT_CARE_1360 x_DO_NOT_CARE_1361 x_DO_NOT_CARE_1362 h_EXPARAM_1131 x_DO_NOT_CARE_1357 x_DO_NOT_CARE_1358 x_DO_NOT_CARE_1359 h_1039 prev_set_flag_app_1343 s_prev_app_h_EXPARAM_1340 s_prev_app_x_1342 x_1040 =
       let u = if prev_set_flag_app_1343 then
                let u_19585 = fail ()
                in
                  bot()
               else () in
              app_without_checking_1355 x_DO_NOT_CARE_1360 x_DO_NOT_CARE_1361
                x_DO_NOT_CARE_1362 h_EXPARAM_1131 x_DO_NOT_CARE_1357
                x_DO_NOT_CARE_1358 x_DO_NOT_CARE_1359 h_1039
                prev_set_flag_app_1343 s_prev_app_h_EXPARAM_1340
                s_prev_app_x_1342 x_1040
  
     let main =
       f_1034 false 0 0 c5_COEFFICIENT_1125 false 0 0
         (app_1038 false 0 0 c4_COEFFICIENT_1123 false 0 0
           (f_1034 false 0 0 c1_COEFFICIENT_1117 false 0 0
             (app_without_checking_1355 false 0 0 c0_COEFFICIENT_1115 false 0 0
               id_1030) false 0 0 c3_COEFFICIENT_1120 false 0 0
             (app_without_checking_1355 false 0 0 c2_COEFFICIENT_1118 false 0 0
               omega_1032))) false 0 0 c7_COEFFICIENT_1128 false 0 0
         (app_without_checking_1355 false 0 0 c6_COEFFICIENT_1126 false 0 0
           id_1030) false 0 0 1
")

(set-logic HORN)

(declare-fun |omega_1032$unknown:77|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:48|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:17|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1355$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |f_1034$unknown:47|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:60|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:67|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$alpha-53:h_1039| Int) (|$alpha-54:prev_set_flag_app_1343| Int) (|$alpha-55:s_prev_app_h_EXPARAM_1340| Int) (|$alpha-56:s_prev_app_x_1342| Int) (|$alpha-57:x_1040| Int) (|$cond-alpha-rename:81| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (|bot$unknown:36| |$knormal:48| 1) (|f_1034$unknown:47| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0) (|f_1034$unknown:60| |$cond-alpha-rename:81| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-53:h_1039| 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:67| |$knormal:50| 1) (not (= 0 |$alpha-54:prev_set_flag_app_1343|)) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:81| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-53:h_1039| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$alpha-53:h_1039| Int) (|$alpha-54:prev_set_flag_app_1343| Int) (|$alpha-55:s_prev_app_h_EXPARAM_1340| Int) (|$alpha-56:s_prev_app_x_1342| Int) (|$alpha-57:x_1040| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (|f_1034$unknown:47| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0) (|f_1034$unknown:60| |$cond-alpha-rename:82| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-53:h_1039| 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-54:prev_set_flag_app_1343|))) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:82| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-53:h_1039| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-54:prev_set_flag_app_1343| Int) (|$alpha-55:s_prev_app_h_EXPARAM_1340| Int) (|$alpha-56:s_prev_app_x_1342| Int) (|$alpha-57:x_1040| Int) (|$cond-alpha-rename:72| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:72| |$alpha-57:x_1040| |$alpha-57:x_1040| 0 1 0 0 0 0 0 0 0) (|bot$unknown:36| |$knormal:48| 1) (|f_1034$unknown:47| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0) (|fail$unknown:67| |$knormal:50| 1) (not (= 0 |$alpha-54:prev_set_flag_app_1343|)) )
      (|app_1038$unknown:17| |$cond-alpha-rename:72| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-54:prev_set_flag_app_1343| Int) (|$alpha-55:s_prev_app_h_EXPARAM_1340| Int) (|$alpha-56:s_prev_app_x_1342| Int) (|$alpha-57:x_1040| Int) (|$cond-alpha-rename:74| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:74| |$alpha-57:x_1040| |$alpha-57:x_1040| 0 1 0 0 0 0 0 0 0) (|f_1034$unknown:47| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-54:prev_set_flag_app_1343|))) )
      (|app_1038$unknown:17| |$cond-alpha-rename:74| |$alpha-57:x_1040| |$alpha-56:s_prev_app_x_1342| |$alpha-55:s_prev_app_h_EXPARAM_1340| |$alpha-54:prev_set_flag_app_1343| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:33| Int) (|$knormal:159| Int) )
    (=>
      ( and (|app_1038$unknown:17| |$V-reftype:33| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$knormal:159| 0 0 0 0 0 0 0) (|f_1034$unknown:47| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$knormal:159| 0 0 0 0 0 0 0) )
      (|f_1034$unknown:48| |$V-reftype:33| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$knormal:159| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:137| Int) (|id_1030| Int) )
    (=>
      ( and true )
      (|app_without_checking_1355$unknown:29| |$V-reftype:137| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |id_1030| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:137| Int) (|id_1030| Int) )
    (=>
      ( and true )
      (|app_without_checking_1355$unknown:29| |$V-reftype:137| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |id_1030| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|omega_1032| Int) )
    (=>
      ( and (|omega_1032$unknown:77| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |omega_1032|) )
      (|app_without_checking_1355$unknown:29| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |omega_1032| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$cond-alpha-rename:76| Int) (|$knormal:180| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:76| |$V-reftype:65| |$V-reftype:65| 0 1 0 0 0 0 0 0 0) )
      (|f_1034$unknown:60| |$cond-alpha-rename:76| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$knormal:180| 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$cond-alpha-rename:78| Int) (|$knormal:71| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:78| |$V-reftype:65| |$V-reftype:65| 0 1 0 0 0 0 0 0 0) (|f_1034$unknown:47| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$knormal:71| 0 0 0 0 0 0 0) )
      (|f_1034$unknown:48| |$cond-alpha-rename:78| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$knormal:71| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$cond-alpha-rename:80| Int) (|$knormal:92| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:80| |$V-reftype:65| |$V-reftype:65| 0 1 0 0 0 0 0 0 0) )
      (|f_1034$unknown:60| |$cond-alpha-rename:80| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$knormal:92| 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:36| |$knormal:2| 1) )
      (|bot$unknown:36| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) )
    ( and (|f_1034$unknown:47| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$cond-alpha-rename:92| |$cond-alpha-rename:91| 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:91|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-7:set_flag_app_1344| Int) (|$alpha-8:s_app_h_EXPARAM_1337| Int) (|$alpha-9:s_app_x_1339| Int) (|$knormal:9| Int) )
    (=>
      ( and (|omega_1032$unknown:77| |$knormal:9| |$alpha-10:x_1033| |$alpha-9:s_app_x_1339| |$alpha-8:s_app_h_EXPARAM_1337| |$alpha-7:set_flag_app_1344|) )
      (|omega_1032$unknown:77| |$knormal:9| |$alpha-10:x_1033| |$alpha-9:s_app_x_1339| |$alpha-8:s_app_h_EXPARAM_1337| |$alpha-7:set_flag_app_1344|)
    )
  )
)
(check-sat)

(get-model)

