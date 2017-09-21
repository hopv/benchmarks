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
  
     let rec toChurch_1038 toChurch_without_checking_1376 x_DO_NOT_CARE_1381 x_DO_NOT_CARE_1382 x_DO_NOT_CARE_1383 n_1039 x_DO_NOT_CARE_1378 x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 f_EXPARAM_1119 prev_set_flag_toChurch_1361 s_prev_toChurch_n_1358 s_prev_toChurch_f_EXPARAM_1359 f_1040 =
       let u = if prev_set_flag_toChurch_1361 then
                if ((0 * 1) + (1 * s_prev_toChurch_n_1358)) +
                   (0 * s_prev_toChurch_f_EXPARAM_1359) >
                   ((0 * 1) + (1 * n_1039)) + (0 * f_EXPARAM_1119) &&
                   ((0 * 1) + (1 * n_1039)) + (0 * f_EXPARAM_1119) >= 0 then
                  ()
                else
                  let u_19601 = fail ()
                  in
                    bot()
               else
                 ()
                   in
              toChurch_without_checking_1376 x_DO_NOT_CARE_1381
                x_DO_NOT_CARE_1382 x_DO_NOT_CARE_1383 n_1039 x_DO_NOT_CARE_1378
                x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 f_EXPARAM_1119
                prev_set_flag_toChurch_1361 s_prev_toChurch_n_1358
                s_prev_toChurch_f_EXPARAM_1359 f_1040
  
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
             (toChurch_1038 toChurch_without_checking_1376 set_flag_toChurch_1362 s_toChurch_n_1355
               s_toChurch_f_EXPARAM_1356 (n_1039 - 1) set_flag_toChurch_1362
               s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
                ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               f_1040)
  
     let main_1041 x_1043 =
       let set_flag_toChurch_1362 = false in
       let s_toChurch_n_1355 = 0 in
       let s_toChurch_f_EXPARAM_1356 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_without_checking_1376 set_flag_toChurch_1362
               s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356 x_1043
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_toChurch_1362 s_toChurch_n_1355 s_toChurch_f_EXPARAM_1356
               succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |main_1041$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |main_1041$unknown:39|
  ( Int ) Bool
)

(declare-fun |toChurch_1038$unknown:87|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:108|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:61|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:98|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:103|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:33|
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
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$alpha-43:f_1040| Int) (|$cond-alpha-rename:1086| Int) (|$cond-alpha-rename:1087| Int) (|$cond-alpha-rename:1088| Int) (|$cond-alpha-rename:1089| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1091| Int) (|$cond-alpha-rename:1092| Int) (|$cond-alpha-rename:1093| Int) (|$cond-alpha-rename:1094| Int) (|$cond-alpha-rename:1095| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:739| Int) (|$cond-alpha-rename:740| Int) (|$cond-alpha-rename:741| Int) (|$cond-alpha-rename:743| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:745| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1089| 1) (- |$cond-alpha-rename:1089| 1)) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:1093|) (+ (* 0 |$cond-alpha-rename:1089|) 0))) (not (and (>= (- |$cond-alpha-rename:1089| 1) 0) (> |$cond-alpha-rename:1089| (- |$cond-alpha-rename:1089| 1)))) (not (= |$cond-alpha-rename:1089| 0)) (not (= |$cond-alpha-rename:1089| 0)) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:749| |$cond-alpha-rename:748| |$cond-alpha-rename:747| |$cond-alpha-rename:1093| |$cond-alpha-rename:745| |$cond-alpha-rename:744| |$cond-alpha-rename:743| |$cond-alpha-rename:1089| |$cond-alpha-rename:741| |$cond-alpha-rename:740| |$cond-alpha-rename:739|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:1094| |$cond-alpha-rename:1093| |$cond-alpha-rename:1092| |$cond-alpha-rename:1091| |$cond-alpha-rename:1090| |$cond-alpha-rename:1089| |$cond-alpha-rename:1088| |$cond-alpha-rename:1087| |$cond-alpha-rename:1086|) (|toChurch_without_checking_1376$unknown:103| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:1094| |$cond-alpha-rename:1093| |$cond-alpha-rename:1092| |$cond-alpha-rename:1091| |$cond-alpha-rename:1090| |$cond-alpha-rename:1089| |$cond-alpha-rename:1088| |$cond-alpha-rename:1087| |$cond-alpha-rename:1086|) (|fail$unknown:33| |$knormal:62| 1) (|bot$unknown:2| |$knormal:60| 1) )
      (|toChurch_1038$unknown:61| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:1093| |$cond-alpha-rename:1089| 1 0 |$cond-alpha-rename:1093| |$cond-alpha-rename:1089| 1 (- |$cond-alpha-rename:1089| 1) |$cond-alpha-rename:1093| |$cond-alpha-rename:1089| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:629| Int) (|$cond-alpha-rename:630| Int) (|$cond-alpha-rename:631| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:634| Int) (|$cond-alpha-rename:635| Int) (|$cond-alpha-rename:636| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:638| Int) (|$cond-alpha-rename:639| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|fail$unknown:33| |$knormal:62| 1) (|toChurch_1038$unknown:56| |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (+ (* 0 |$cond-alpha-rename:765|) (+ (* 0 |$cond-alpha-rename:761|) 0)) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (- |$cond-alpha-rename:761| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (+ (* 0 |$cond-alpha-rename:765|) (+ (* 0 |$cond-alpha-rename:761|) 0)) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (- |$cond-alpha-rename:761| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:639| |$cond-alpha-rename:638| |$cond-alpha-rename:637| |$cond-alpha-rename:636| |$cond-alpha-rename:635| |$cond-alpha-rename:634| |$cond-alpha-rename:633| |$cond-alpha-rename:632| |$cond-alpha-rename:631| |$cond-alpha-rename:630| |$cond-alpha-rename:629|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (not (= 0 1)) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:632| 0)) (not (and (>= (- |$cond-alpha-rename:761| 1) 0) (> |$cond-alpha-rename:761| (- |$cond-alpha-rename:761| 1)))) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (+ (* 0 |$cond-alpha-rename:765|) (+ (* 0 |$cond-alpha-rename:761|) 0)) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (- |$cond-alpha-rename:761| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:777| Int) (|$cond-alpha-rename:778| Int) (|$cond-alpha-rename:779| Int) (|$cond-alpha-rename:780| Int) (|$cond-alpha-rename:781| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$cond-alpha-rename:784| Int) (|$cond-alpha-rename:785| Int) (|$cond-alpha-rename:786| Int) (|$cond-alpha-rename:787| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|fail$unknown:33| |$knormal:62| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:787| |$cond-alpha-rename:786| |$cond-alpha-rename:785| |$cond-alpha-rename:784| |$cond-alpha-rename:783| |$cond-alpha-rename:782| |$cond-alpha-rename:781| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777|) (not (= 0 1)) (not (= |$cond-alpha-rename:780| 0)) (not (and (>= (- |$cond-alpha-rename:780| 1) 0) (> |$cond-alpha-rename:780| (- |$cond-alpha-rename:780| 1)))) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:784| |$cond-alpha-rename:780| 1 (+ (* 0 |$cond-alpha-rename:784|) (+ (* 0 |$cond-alpha-rename:780|) 0)) |$cond-alpha-rename:784| |$cond-alpha-rename:780| 1 (- |$cond-alpha-rename:780| 1) |$cond-alpha-rename:784| |$cond-alpha-rename:780| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:363| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:395| Int) )
    (=>
      ( and (= 1 1) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:368|) (+ (* 0 |$cond-alpha-rename:364|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:368|) (+ (* 0 |$cond-alpha-rename:364|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:368|) (+ (* 0 |$cond-alpha-rename:364|) 0))) (not (= |$cond-alpha-rename:364| 0)) (not (= |$cond-alpha-rename:364| 0)) (not (= |$cond-alpha-rename:364| 0)) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:371| |$cond-alpha-rename:370| |$cond-alpha-rename:369| |$cond-alpha-rename:368| |$cond-alpha-rename:367| |$cond-alpha-rename:366| |$cond-alpha-rename:365| |$cond-alpha-rename:364| |$cond-alpha-rename:363| |$cond-alpha-rename:362| |$cond-alpha-rename:361|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:335| |$cond-alpha-rename:368| |$cond-alpha-rename:333| |$cond-alpha-rename:332| |$cond-alpha-rename:331| |$cond-alpha-rename:364| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$cond-alpha-rename:327|) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$cond-alpha-rename:368| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$cond-alpha-rename:364| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (|toChurch_without_checking_1376$unknown:103| |$cond-alpha-rename:394| |$cond-alpha-rename:395| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:335| |$cond-alpha-rename:368| |$cond-alpha-rename:333| |$cond-alpha-rename:332| |$cond-alpha-rename:331| |$cond-alpha-rename:364| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$cond-alpha-rename:327|) (|toChurch_1038$unknown:87| |$cond-alpha-rename:395| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:368| |$cond-alpha-rename:364| 1 (+ (* 0 |$cond-alpha-rename:368|) (+ (* 0 |$cond-alpha-rename:364|) 0)) |$cond-alpha-rename:368| |$cond-alpha-rename:364| 1 (- |$cond-alpha-rename:364| 1) |$cond-alpha-rename:368| |$cond-alpha-rename:364| 1) )
      (|toChurch_without_checking_1376$unknown:108| |$cond-alpha-rename:394| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$cond-alpha-rename:368| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$cond-alpha-rename:364| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:797| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:801| Int) (|$cond-alpha-rename:802| Int) (|$cond-alpha-rename:803| Int) (|$cond-alpha-rename:804| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) )
    ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:803| |$cond-alpha-rename:802| |$cond-alpha-rename:801| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798| |$cond-alpha-rename:797| |$cond-alpha-rename:796|) (not (= 0 1)) (not (= |$cond-alpha-rename:799| 0)) (not (and (>= (- |$cond-alpha-rename:799| 1) 0) (> |$cond-alpha-rename:799| (- |$cond-alpha-rename:799| 1)))) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| 0 |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) )
      (|toChurch_without_checking_1376$unknown:108| |$V-reftype:71| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| 0 |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$alpha-70:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-70:x_1043|) (>= |$alpha-70:x_1043| 0) )
      (|toChurch_without_checking_1376$unknown:103| (+ |$V-reftype:83| 1) |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |succ_1036| 0 0 0 0 0 0 0 |$alpha-70:x_1043| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (>= |$alpha-70:x_1043| 0) (|main_1041$unknown:39| |$alpha-70:x_1043|) )
      (|main_1041$unknown:40| 1 |$alpha-70:x_1043|)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (>= |$alpha-70:x_1043| 0) (|main_1041$unknown:39| |$alpha-70:x_1043|) )
      (|toChurch_without_checking_1376$unknown:98| 0 0 0 (+ (* 0 |$alpha-70:x_1043|) 0) 0 0 0 |$alpha-70:x_1043| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (not (>= |$alpha-70:x_1043| 0)) (|main_1041$unknown:39| |$alpha-70:x_1043|) )
      (|main_1041$unknown:40| 1 |$alpha-70:x_1043|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-49:n_1039| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|toChurch_without_checking_1376| Int) )
    (=>
      ( and (not (= |$alpha-49:n_1039| 0)) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (|toChurch_1038$unknown:56| |$V-reftype:105| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) )
      (|toChurch_without_checking_1376$unknown:98| |$V-reftype:105| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-49:n_1039| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|toChurch_without_checking_1376| Int) )
    (=>
      ( and (|toChurch_1038$unknown:61| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) (not (= |$alpha-49:n_1039| 0)) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (|toChurch_1038$unknown:56| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) )
      (|toChurch_without_checking_1376$unknown:103| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$alpha-43:f_1040| Int) (|$cond-alpha-rename:1105| Int) (|$cond-alpha-rename:1106| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1108| Int) (|$cond-alpha-rename:1109| Int) (|$cond-alpha-rename:1110| Int) (|$cond-alpha-rename:1111| Int) (|$cond-alpha-rename:1112| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:1114| Int) (|$cond-alpha-rename:1115| Int) (|$cond-alpha-rename:815| Int) (|$cond-alpha-rename:816| Int) (|$cond-alpha-rename:817| Int) (|$cond-alpha-rename:819| Int) (|$cond-alpha-rename:820| Int) (|$cond-alpha-rename:821| Int) (|$cond-alpha-rename:823| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:825| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1108| (- |$cond-alpha-rename:1108| 1)) (>= (- |$cond-alpha-rename:1108| 1) 0) (= (- |$cond-alpha-rename:1108| 1) (- |$cond-alpha-rename:1108| 1)) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:1112|) (+ (* 0 |$cond-alpha-rename:1108|) 0))) (not (= |$cond-alpha-rename:1108| 0)) (not (= |$cond-alpha-rename:1108| 0)) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:825| |$cond-alpha-rename:824| |$cond-alpha-rename:823| |$cond-alpha-rename:1112| |$cond-alpha-rename:821| |$cond-alpha-rename:820| |$cond-alpha-rename:819| |$cond-alpha-rename:1108| |$cond-alpha-rename:817| |$cond-alpha-rename:816| |$cond-alpha-rename:815|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:1115| |$cond-alpha-rename:1114| |$cond-alpha-rename:1113| |$cond-alpha-rename:1112| |$cond-alpha-rename:1111| |$cond-alpha-rename:1110| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107| |$cond-alpha-rename:1106| |$cond-alpha-rename:1105|) (|toChurch_without_checking_1376$unknown:103| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:1115| |$cond-alpha-rename:1114| |$cond-alpha-rename:1113| |$cond-alpha-rename:1112| |$cond-alpha-rename:1111| |$cond-alpha-rename:1110| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107| |$cond-alpha-rename:1106| |$cond-alpha-rename:1105|) )
      (|toChurch_1038$unknown:61| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:1112| |$cond-alpha-rename:1108| 1 0 |$cond-alpha-rename:1112| |$cond-alpha-rename:1108| 1 (- |$cond-alpha-rename:1108| 1) |$cond-alpha-rename:1112| |$cond-alpha-rename:1108| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:649| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:853| Int) (|$cond-alpha-rename:854| Int) (|$cond-alpha-rename:855| Int) (|$cond-alpha-rename:856| Int) (|$cond-alpha-rename:857| Int) (|$cond-alpha-rename:858| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:861| Int) (|$cond-alpha-rename:862| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:856|) 0)) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (- |$cond-alpha-rename:856| 1) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:856|) 0)) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (- |$cond-alpha-rename:856| 1) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:659| |$cond-alpha-rename:658| |$cond-alpha-rename:657| |$cond-alpha-rename:656| |$cond-alpha-rename:655| |$cond-alpha-rename:654| |$cond-alpha-rename:653| |$cond-alpha-rename:652| |$cond-alpha-rename:651| |$cond-alpha-rename:650| |$cond-alpha-rename:649|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:863| |$cond-alpha-rename:862| |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| |$cond-alpha-rename:857| |$cond-alpha-rename:856| |$cond-alpha-rename:855| |$cond-alpha-rename:854| |$cond-alpha-rename:853|) (not (= 0 1)) (not (= |$cond-alpha-rename:856| 0)) (not (= |$cond-alpha-rename:652| 0)) (>= (- |$cond-alpha-rename:856| 1) 0) (> |$cond-alpha-rename:856| (- |$cond-alpha-rename:856| 1)) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:856|) 0)) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1 (- |$cond-alpha-rename:856| 1) |$cond-alpha-rename:860| |$cond-alpha-rename:856| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:674| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:678| Int) (|$cond-alpha-rename:679| Int) (|$cond-alpha-rename:872| Int) (|$cond-alpha-rename:873| Int) (|$cond-alpha-rename:874| Int) (|$cond-alpha-rename:875| Int) (|$cond-alpha-rename:876| Int) (|$cond-alpha-rename:877| Int) (|$cond-alpha-rename:878| Int) (|$cond-alpha-rename:879| Int) (|$cond-alpha-rename:880| Int) (|$cond-alpha-rename:881| Int) (|$cond-alpha-rename:882| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (+ (* 0 |$cond-alpha-rename:879|) (+ (* 0 |$cond-alpha-rename:875|) 0)) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (- |$cond-alpha-rename:875| 1) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (+ (* 0 |$cond-alpha-rename:879|) (+ (* 0 |$cond-alpha-rename:875|) 0)) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (- |$cond-alpha-rename:875| 1) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:674| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$cond-alpha-rename:669|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:882| |$cond-alpha-rename:881| |$cond-alpha-rename:880| |$cond-alpha-rename:879| |$cond-alpha-rename:878| |$cond-alpha-rename:877| |$cond-alpha-rename:876| |$cond-alpha-rename:875| |$cond-alpha-rename:874| |$cond-alpha-rename:873| |$cond-alpha-rename:872|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:875| 0)) (not (= |$cond-alpha-rename:672| 0)) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (+ (* 0 |$cond-alpha-rename:879|) (+ (* 0 |$cond-alpha-rename:875|) 0)) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1 (- |$cond-alpha-rename:875| 1) |$cond-alpha-rename:879| |$cond-alpha-rename:875| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:891| Int) (|$cond-alpha-rename:892| Int) (|$cond-alpha-rename:893| Int) (|$cond-alpha-rename:894| Int) (|$cond-alpha-rename:895| Int) (|$cond-alpha-rename:896| Int) (|$cond-alpha-rename:897| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:899| Int) (|$cond-alpha-rename:900| Int) (|$cond-alpha-rename:901| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:901| |$cond-alpha-rename:900| |$cond-alpha-rename:899| |$cond-alpha-rename:898| |$cond-alpha-rename:897| |$cond-alpha-rename:896| |$cond-alpha-rename:895| |$cond-alpha-rename:894| |$cond-alpha-rename:893| |$cond-alpha-rename:892| |$cond-alpha-rename:891|) (not (= 0 1)) (not (= |$cond-alpha-rename:894| 0)) (>= (- |$cond-alpha-rename:894| 1) 0) (> |$cond-alpha-rename:894| (- |$cond-alpha-rename:894| 1)) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:898| |$cond-alpha-rename:894| 1 (+ (* 0 |$cond-alpha-rename:898|) (+ (* 0 |$cond-alpha-rename:894|) 0)) |$cond-alpha-rename:898| |$cond-alpha-rename:894| 1 (- |$cond-alpha-rename:894| 1) |$cond-alpha-rename:898| |$cond-alpha-rename:894| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:910| Int) (|$cond-alpha-rename:911| Int) (|$cond-alpha-rename:912| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:920| |$cond-alpha-rename:919| |$cond-alpha-rename:918| |$cond-alpha-rename:917| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| |$cond-alpha-rename:911| |$cond-alpha-rename:910|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:913| 0)) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1 (+ (* 0 |$cond-alpha-rename:917|) (+ (* 0 |$cond-alpha-rename:913|) 0)) |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1 (- |$cond-alpha-rename:913| 1) |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1)
    )
  )
)
(check-sat)

(get-model)

