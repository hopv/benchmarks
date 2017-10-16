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
  
     let compose_1030 x_DO_NOT_CARE_1462 x_DO_NOT_CARE_1463 x_DO_NOT_CARE_1464 f_EXPARAM_1133 x_DO_NOT_CARE_1459 x_DO_NOT_CARE_1460 x_DO_NOT_CARE_1461 f_1031 x_DO_NOT_CARE_1456 x_DO_NOT_CARE_1457 x_DO_NOT_CARE_1458 g_EXPARAM_1134 x_DO_NOT_CARE_1453 x_DO_NOT_CARE_1454 x_DO_NOT_CARE_1455 g_1032 set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 x_1033 =
       f_1031 set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
         (g_1032 set_flag_toChurch_1362 s_toChurch_n_1355
           s_toChurch_f_EXPARAM_1356 x_1033)
  
     let id_1034 set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 x_1035 =
       x_1035
  
     let succ_1036 set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 x_1037 =
       x_1037 + 1
  
     let rec toChurch_without_checking_1376 x_DO_NOT_CARE_1450 x_DO_NOT_CARE_1451 x_DO_NOT_CARE_1452 n_1039 x_DO_NOT_CARE_1447 x_DO_NOT_CARE_1448 x_DO_NOT_CARE_1449 f_EXPARAM_1119 set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 f_1040 =
       let set_flag_toChurch_1362 = true
       in
       let s_toChurch_f_EXPARAM_1356 = f_EXPARAM_1119
       in
       let s_toChurch_n_1355 = n_1039
       in
         if n_1039 = 0 then
           id_1034
         else
           compose_1030 set_flag_toChurch_1362 s_toChurch_n_1355
             s_toChurch_f_EXPARAM_1356
             ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
              ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
             set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
             f_1040 set_flag_toChurch_1362 s_toChurch_n_1355
             s_toChurch_f_EXPARAM_1356
             ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
              ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
             set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
             (toChurch_without_checking_1376 set_flag_toChurch_1362
               s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 (n_1039 - 1)
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
                ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               f_1040)
  
     let rec toChurch_1038 x_DO_NOT_CARE_1381 x_DO_NOT_CARE_1382 x_DO_NOT_CARE_1383 n_1039 x_DO_NOT_CARE_1378 x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 f_EXPARAM_1119 prev_set_flag_toChurch_1361 s_prev_toChurch_n_1358 s_prev_toChurch_f_EXPARAM_1359 f_1040 =
       let u = if prev_set_flag_toChurch_1361 then
                let u_10600 = fail ()
                in
                  bot()
               else () in
              toChurch_without_checking_1376 x_DO_NOT_CARE_1381
                x_DO_NOT_CARE_1382 x_DO_NOT_CARE_1383 n_1039 x_DO_NOT_CARE_1378
                x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 f_EXPARAM_1119
                prev_set_flag_toChurch_1361 s_prev_toChurch_n_1358
                s_prev_toChurch_f_EXPARAM_1359 f_1040
  
     let main x_1043 =
       let set_flag_toChurch_1362 = false in
       let s_toChurch_n_1355 = 0 in
       let s_toChurch_f_EXPARAM_1356 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_toChurch_1362 s_toChurch_n_1355
               s_toChurch_f_EXPARAM_1356 x_1043 set_flag_toChurch_1362
               s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |succ_1036$unknown:43|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:38|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:32|
  ( Int ) Bool
)

(declare-fun |compose_1030$unknown:31|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:26|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:14|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:64|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:85|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:80|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:54|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:168| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:168| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:168| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-66:f_1040| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true true true (|toChurch_1038$unknown:59| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$alpha-66:f_1040| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      (|toChurch_without_checking_1376$unknown:80| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$alpha-66:f_1040| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:166| Int) (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_without_checking_1376$unknown:85| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      (|toChurch_1038$unknown:64| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:111| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) (|bot$unknown:2| |$knormal:111| |$knormal:110|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:156| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-34:n_1039| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-42:f_1040| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) (|toChurch_without_checking_1376$unknown:80| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$alpha-34:n_1039| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|) true true true true true true true true true true true true true true true )
      (|compose_1030$unknown:14| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:58| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:170| Int) (|$alpha-11:x_DO_NOT_CARE_1456| Int) (|$alpha-12:x_DO_NOT_CARE_1457| Int) (|$alpha-13:x_DO_NOT_CARE_1458| Int) (|$alpha-14:g_EXPARAM_1134| Int) (|$alpha-15:x_DO_NOT_CARE_1453| Int) (|$alpha-16:x_DO_NOT_CARE_1454| Int) (|$alpha-17:x_DO_NOT_CARE_1455| Int) (|$alpha-19:set_flag_toChurch_1362| Int) (|$alpha-20:s_toChurch_n_1355| Int) (|$alpha-21:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-22:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1462| Int) (|$alpha-4:x_DO_NOT_CARE_1463| Int) (|$alpha-5:x_DO_NOT_CARE_1464| Int) (|$alpha-6:f_EXPARAM_1133| Int) (|$alpha-7:x_DO_NOT_CARE_1459| Int) (|$alpha-8:x_DO_NOT_CARE_1460| Int) (|$alpha-9:x_DO_NOT_CARE_1461| Int) (|$knormal:17| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$V-reftype:170| |$knormal:17|) true true true true true true true true true true true (|compose_1030$unknown:26| |$knormal:9| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) true true true true true true true (|compose_1030$unknown:14| |$knormal:17| |$knormal:9| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) )
      (|compose_1030$unknown:31| |$V-reftype:170| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1456| Int) (|$alpha-12:x_DO_NOT_CARE_1457| Int) (|$alpha-13:x_DO_NOT_CARE_1458| Int) (|$alpha-14:g_EXPARAM_1134| Int) (|$alpha-15:x_DO_NOT_CARE_1453| Int) (|$alpha-16:x_DO_NOT_CARE_1454| Int) (|$alpha-17:x_DO_NOT_CARE_1455| Int) (|$alpha-19:set_flag_toChurch_1362| Int) (|$alpha-20:s_toChurch_n_1355| Int) (|$alpha-21:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-22:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1462| Int) (|$alpha-4:x_DO_NOT_CARE_1463| Int) (|$alpha-5:x_DO_NOT_CARE_1464| Int) (|$alpha-6:f_EXPARAM_1133| Int) (|$alpha-7:x_DO_NOT_CARE_1459| Int) (|$alpha-8:x_DO_NOT_CARE_1460| Int) (|$alpha-9:x_DO_NOT_CARE_1461| Int) (|$knormal:9| Int) )
    (=>
      ( and true true true true true true true true true true true (|compose_1030$unknown:26| |$knormal:9| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1456| Int) (|$alpha-12:x_DO_NOT_CARE_1457| Int) (|$alpha-13:x_DO_NOT_CARE_1458| Int) (|$alpha-14:g_EXPARAM_1134| Int) (|$alpha-15:x_DO_NOT_CARE_1453| Int) (|$alpha-16:x_DO_NOT_CARE_1454| Int) (|$alpha-17:x_DO_NOT_CARE_1455| Int) (|$alpha-19:set_flag_toChurch_1362| Int) (|$alpha-20:s_toChurch_n_1355| Int) (|$alpha-21:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-22:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1462| Int) (|$alpha-4:x_DO_NOT_CARE_1463| Int) (|$alpha-5:x_DO_NOT_CARE_1464| Int) (|$alpha-6:f_EXPARAM_1133| Int) (|$alpha-7:x_DO_NOT_CARE_1459| Int) (|$alpha-8:x_DO_NOT_CARE_1460| Int) (|$alpha-9:x_DO_NOT_CARE_1461| Int) (|$knormal:9| Int) )
    (=>
      ( and true true true true true true true true true true true (|compose_1030$unknown:26| |$knormal:9| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1456| Int) (|$alpha-12:x_DO_NOT_CARE_1457| Int) (|$alpha-13:x_DO_NOT_CARE_1458| Int) (|$alpha-14:g_EXPARAM_1134| Int) (|$alpha-15:x_DO_NOT_CARE_1453| Int) (|$alpha-16:x_DO_NOT_CARE_1454| Int) (|$alpha-17:x_DO_NOT_CARE_1455| Int) (|$alpha-19:set_flag_toChurch_1362| Int) (|$alpha-20:s_toChurch_n_1355| Int) (|$alpha-21:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-22:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1462| Int) (|$alpha-4:x_DO_NOT_CARE_1463| Int) (|$alpha-5:x_DO_NOT_CARE_1464| Int) (|$alpha-6:f_EXPARAM_1133| Int) (|$alpha-7:x_DO_NOT_CARE_1459| Int) (|$alpha-8:x_DO_NOT_CARE_1460| Int) (|$alpha-9:x_DO_NOT_CARE_1461| Int) (|$knormal:9| Int) )
    (=>
      ( and true true true true true true true true true true true (|compose_1030$unknown:26| |$knormal:9| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1456| Int) (|$alpha-12:x_DO_NOT_CARE_1457| Int) (|$alpha-13:x_DO_NOT_CARE_1458| Int) (|$alpha-14:g_EXPARAM_1134| Int) (|$alpha-15:x_DO_NOT_CARE_1453| Int) (|$alpha-16:x_DO_NOT_CARE_1454| Int) (|$alpha-17:x_DO_NOT_CARE_1455| Int) (|$alpha-19:set_flag_toChurch_1362| Int) (|$alpha-20:s_toChurch_n_1355| Int) (|$alpha-21:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-22:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1462| Int) (|$alpha-4:x_DO_NOT_CARE_1463| Int) (|$alpha-5:x_DO_NOT_CARE_1464| Int) (|$alpha-6:f_EXPARAM_1133| Int) (|$alpha-7:x_DO_NOT_CARE_1459| Int) (|$alpha-8:x_DO_NOT_CARE_1460| Int) (|$alpha-9:x_DO_NOT_CARE_1461| Int) (|$knormal:9| Int) )
    (=>
      ( and true true true true true true true true true true true (|compose_1030$unknown:26| |$knormal:9| |$alpha-22:x_1033| |$alpha-21:s_toChurch_f_EXPARAM_1356| |$alpha-20:s_toChurch_n_1355| |$alpha-19:set_flag_toChurch_1362| |$alpha-17:x_DO_NOT_CARE_1455| |$alpha-16:x_DO_NOT_CARE_1454| |$alpha-15:x_DO_NOT_CARE_1453| |$alpha-14:g_EXPARAM_1134| |$alpha-13:x_DO_NOT_CARE_1458| |$alpha-12:x_DO_NOT_CARE_1457| |$alpha-11:x_DO_NOT_CARE_1456| |$alpha-9:x_DO_NOT_CARE_1461| |$alpha-8:x_DO_NOT_CARE_1460| |$alpha-7:x_DO_NOT_CARE_1459| |$alpha-6:f_EXPARAM_1133| |$alpha-5:x_DO_NOT_CARE_1464| |$alpha-4:x_DO_NOT_CARE_1463| |$alpha-3:x_DO_NOT_CARE_1462|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:161| Int) (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:166| Int) (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:52| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) (|toChurch_without_checking_1376$unknown:85| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$knormal:52| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:42| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:33| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362|) true true true true true true true true true true true true true true true )
      (|compose_1030$unknown:26| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$knormal:52| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:75| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:58| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$V-reftype:60| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-34:n_1039| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true true (|compose_1030$unknown:31| |$V-reftype:60| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:75| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:58| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362|) )
      (|toChurch_without_checking_1376$unknown:85| |$V-reftype:60| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$alpha-34:n_1039| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:32| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:110| Int) (|$knormal:112| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:112| 1) (= |$knormal:110| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true (|fail$unknown:33| |$knormal:113| |$knormal:112|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:171| Int) (|$alpha-23:set_flag_toChurch_1362| Int) (|$alpha-24:s_toChurch_n_1355| Int) (|$alpha-25:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-26:x_1035| Int) )
    (=>
      ( and (= |$V-reftype:171| |$alpha-26:x_1035|) true true true true )
      (|id_1034$unknown:38| |$V-reftype:171| |$alpha-26:x_1035| |$alpha-25:s_toChurch_f_EXPARAM_1356| |$alpha-24:s_toChurch_n_1355| |$alpha-23:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-34:n_1039| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:18|)) true true true true true true true true true true true true true true true (|id_1034$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65|) )
      (|toChurch_without_checking_1376$unknown:85| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$alpha-34:n_1039| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:172| Int) (|$alpha-27:set_flag_toChurch_1362| Int) (|$alpha-28:s_toChurch_n_1355| Int) (|$alpha-29:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-30:x_1037| Int) )
    (=>
      ( and (= |$V-reftype:172| (+ |$alpha-30:x_1037| 1)) true true true true )
      (|succ_1036$unknown:43| |$V-reftype:172| |$alpha-30:x_1037| |$alpha-29:s_toChurch_f_EXPARAM_1356| |$alpha-28:s_toChurch_n_1355| |$alpha-27:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:84| Int) (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) (|succ_1036| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) true true true true (|succ_1036$unknown:43| |$V-reftype:84| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |succ_1036|) )
      (|toChurch_1038$unknown:59| |$V-reftype:84| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |succ_1036| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362| |$knormal:129| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362| |$alpha-69:x_1043| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-66:f_1040| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true true true (|toChurch_1038$unknown:59| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$alpha-66:f_1040| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      (|toChurch_without_checking_1376$unknown:80| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$alpha-66:f_1040| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:166| Int) (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_without_checking_1376$unknown:85| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      (|toChurch_1038$unknown:64| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) true true (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$knormal:112| Int) )
    (=>
      ( and (= |$knormal:112| 1) (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|)) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      (|fail$unknown:32| |$knormal:112|)
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-55:x_DO_NOT_CARE_1381| Int) (|$alpha-56:x_DO_NOT_CARE_1382| Int) (|$alpha-57:x_DO_NOT_CARE_1383| Int) (|$alpha-58:n_1039| Int) (|$alpha-59:x_DO_NOT_CARE_1378| Int) (|$alpha-60:x_DO_NOT_CARE_1379| Int) (|$alpha-61:x_DO_NOT_CARE_1380| Int) (|$alpha-62:f_EXPARAM_1119| Int) (|$alpha-63:prev_set_flag_toChurch_1361| Int) (|$alpha-64:s_prev_toChurch_n_1358| Int) (|$alpha-65:s_prev_toChurch_f_EXPARAM_1359| Int) (|$alpha-68:u| Int) )
    (=>
      ( and (= |$alpha-68:u| 1) (not (not (= 0 |$alpha-63:prev_set_flag_toChurch_1361|))) (|toChurch_1038$unknown:54| |$alpha-65:s_prev_toChurch_f_EXPARAM_1359| |$alpha-64:s_prev_toChurch_n_1358| |$alpha-63:prev_set_flag_toChurch_1361| |$alpha-62:f_EXPARAM_1119| |$alpha-61:x_DO_NOT_CARE_1380| |$alpha-60:x_DO_NOT_CARE_1379| |$alpha-59:x_DO_NOT_CARE_1378| |$alpha-58:n_1039| |$alpha-57:x_DO_NOT_CARE_1383| |$alpha-56:x_DO_NOT_CARE_1382| |$alpha-55:x_DO_NOT_CARE_1381|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:156| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-34:n_1039| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-42:f_1040| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) (|toChurch_without_checking_1376$unknown:80| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$alpha-34:n_1039| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|) true true true true true true true true true true true true true true true )
      (|toChurch_without_checking_1376$unknown:80| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:42| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362| |$knormal:33| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| |$alpha-52:set_flag_toChurch_1362|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:18|)) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:18|)) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:18|)) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:18|)) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) (|$knormal:58| Int) (|$knormal:75| Int) )
    (=>
      ( and (= |$knormal:75| (+ |$knormal:22| |$knormal:24|)) (= |$knormal:58| (+ |$knormal:19| |$knormal:21|)) (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:24| (+ |$knormal:23| |$alpha-51:c10_COEFFICIENT_1129|)) (= |$knormal:23| (* |$alpha-43:c9_COEFFICIENT_1128| |$alpha-34:n_1039|)) (= |$knormal:22| (* |$alpha-44:c8_COEFFICIENT_1127| |$alpha-38:f_EXPARAM_1119|)) (= |$knormal:21| (+ |$knormal:20| |$alpha-48:c4_COEFFICIENT_1122|)) (= |$knormal:20| (* |$alpha-49:c3_COEFFICIENT_1121| |$alpha-34:n_1039|)) (= |$knormal:19| (* |$alpha-50:c2_COEFFICIENT_1120| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:n_1039| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-43:c9_COEFFICIENT_1128| Int) (|$alpha-44:c8_COEFFICIENT_1127| Int) (|$alpha-45:c7_COEFFICIENT_1125| Int) (|$alpha-46:c6_COEFFICIENT_1124| Int) (|$alpha-47:c5_COEFFICIENT_1123| Int) (|$alpha-48:c4_COEFFICIENT_1122| Int) (|$alpha-49:c3_COEFFICIENT_1121| Int) (|$alpha-50:c2_COEFFICIENT_1120| Int) (|$alpha-51:c10_COEFFICIENT_1129| Int) (|$alpha-52:set_flag_toChurch_1362| Int) (|$knormal:18| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:33| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$knormal:25| |$knormal:27|)) (= |$knormal:33| (- |$alpha-34:n_1039| 1)) (= |$knormal:27| (+ |$knormal:26| |$alpha-45:c7_COEFFICIENT_1125|)) (= |$knormal:26| (* |$alpha-46:c6_COEFFICIENT_1124| |$alpha-34:n_1039|)) (= |$knormal:25| (* |$alpha-47:c5_COEFFICIENT_1123| |$alpha-38:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:18|)) (= |$alpha-34:n_1039| 0)) (= |$alpha-52:set_flag_toChurch_1362| 1) (= |$alpha-51:c10_COEFFICIENT_1129| 0) (= |$alpha-50:c2_COEFFICIENT_1120| 0) (= |$alpha-49:c3_COEFFICIENT_1121| 0) (= |$alpha-48:c4_COEFFICIENT_1122| 0) (= |$alpha-47:c5_COEFFICIENT_1123| 0) (= |$alpha-46:c6_COEFFICIENT_1124| 0) (= |$alpha-45:c7_COEFFICIENT_1125| 0) (= |$alpha-44:c8_COEFFICIENT_1127| 0) (= |$alpha-43:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:18|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) (|$alpha-70:c1_COEFFICIENT_1117| Int) (|$alpha-71:c0_COEFFICIENT_1116| Int) (|$alpha-72:set_flag_toChurch_1362| Int) (|$alpha-73:s_toChurch_n_1355| Int) (|$alpha-74:s_toChurch_f_EXPARAM_1356| Int) (|$knormal:114| Int) (|$knormal:115| Int) (|$knormal:129| Int) )
    (=>
      ( and (= |$knormal:129| (+ |$knormal:115| |$alpha-70:c1_COEFFICIENT_1117|)) (= |$knormal:115| (* |$alpha-71:c0_COEFFICIENT_1116| |$alpha-69:x_1043|)) (= (not (= 0 |$knormal:114|)) (>= |$alpha-69:x_1043| 0)) (= |$alpha-74:s_toChurch_f_EXPARAM_1356| 0) (= |$alpha-73:s_toChurch_n_1355| 0) (= |$alpha-72:set_flag_toChurch_1362| 0) (= |$alpha-71:c0_COEFFICIENT_1116| 0) (= |$alpha-70:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:114|)) )
      (|toChurch_1038$unknown:54| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362| |$knormal:129| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362| |$alpha-69:x_1043| |$alpha-74:s_toChurch_f_EXPARAM_1356| |$alpha-73:s_toChurch_n_1355| |$alpha-72:set_flag_toChurch_1362|)
    )
  )
)
(check-sat)

(get-model)

(exit)

