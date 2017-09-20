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

(declare-fun |fail$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:103|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:98|
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
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$alpha-43:f_1040| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:556| Int) (|$cond-alpha-rename:557| Int) (|$cond-alpha-rename:558| Int) (|$cond-alpha-rename:559| Int) (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:561| Int) (|$cond-alpha-rename:562| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:565| Int) (|$cond-alpha-rename:566| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|fail$unknown:33| |$knormal:62| 1) (|toChurch_without_checking_1376$unknown:103| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:566| |$cond-alpha-rename:565| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:560| |$cond-alpha-rename:559| |$cond-alpha-rename:558| |$cond-alpha-rename:557| |$cond-alpha-rename:556|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:357| |$cond-alpha-rename:356| |$cond-alpha-rename:355| |$cond-alpha-rename:563| |$cond-alpha-rename:353| |$cond-alpha-rename:352| |$cond-alpha-rename:351| |$cond-alpha-rename:559| |$cond-alpha-rename:349| |$cond-alpha-rename:348| |$cond-alpha-rename:347|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:566| |$cond-alpha-rename:565| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:560| |$cond-alpha-rename:559| |$cond-alpha-rename:558| |$cond-alpha-rename:557| |$cond-alpha-rename:556|) (not (= 0 1)) (not (= |$cond-alpha-rename:559| 0)) (not (= |$cond-alpha-rename:559| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:559|) 0) (+ (+ 0 (- |$cond-alpha-rename:559| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:559| 1)) 0) 0))) (= (- |$cond-alpha-rename:559| 1) (- |$cond-alpha-rename:559| 1)) (= (+ (* 0 |$cond-alpha-rename:563|) (+ (* 0 |$cond-alpha-rename:559|) 0)) (+ (* 0 |$cond-alpha-rename:563|) (+ (* 0 |$cond-alpha-rename:559|) 0))) (= 1 1) )
      (|toChurch_1038$unknown:61| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:563| |$cond-alpha-rename:559| 1 (+ (* 0 |$cond-alpha-rename:563|) (+ (* 0 |$cond-alpha-rename:559|) 0)) |$cond-alpha-rename:563| |$cond-alpha-rename:559| 1 (- |$cond-alpha-rename:559| 1) |$cond-alpha-rename:563| |$cond-alpha-rename:559| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:374| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:376| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|fail$unknown:33| |$knormal:62| 1) (|toChurch_1038$unknown:56| |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (+ (* 0 |$cond-alpha-rename:373|) (+ (* 0 |$cond-alpha-rename:369|) 0)) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (- |$cond-alpha-rename:369| 1) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (+ (* 0 |$cond-alpha-rename:373|) (+ (* 0 |$cond-alpha-rename:369|) 0)) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (- |$cond-alpha-rename:369| 1) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:297| |$cond-alpha-rename:296| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:293| |$cond-alpha-rename:292| |$cond-alpha-rename:291| |$cond-alpha-rename:290| |$cond-alpha-rename:289| |$cond-alpha-rename:288| |$cond-alpha-rename:287|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:376| |$cond-alpha-rename:375| |$cond-alpha-rename:374| |$cond-alpha-rename:373| |$cond-alpha-rename:372| |$cond-alpha-rename:371| |$cond-alpha-rename:370| |$cond-alpha-rename:369| |$cond-alpha-rename:368| |$cond-alpha-rename:367| |$cond-alpha-rename:366|) (not (= 0 1)) (not (= |$cond-alpha-rename:290| 0)) (not (= |$cond-alpha-rename:369| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:369|) 0) (+ (+ 0 (- |$cond-alpha-rename:369| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:369| 1)) 0) 0))) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (+ (* 0 |$cond-alpha-rename:373|) (+ (* 0 |$cond-alpha-rename:369|) 0)) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1 (- |$cond-alpha-rename:369| 1) |$cond-alpha-rename:373| |$cond-alpha-rename:369| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:388| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:391| Int) (|$cond-alpha-rename:392| Int) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:395| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|fail$unknown:33| |$knormal:62| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:395| |$cond-alpha-rename:394| |$cond-alpha-rename:393| |$cond-alpha-rename:392| |$cond-alpha-rename:391| |$cond-alpha-rename:390| |$cond-alpha-rename:389| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:386| |$cond-alpha-rename:385|) (not (= 0 1)) (not (= |$cond-alpha-rename:388| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:388|) 0) (+ (+ 0 (- |$cond-alpha-rename:388| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:388| 1)) 0) 0))) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:392| |$cond-alpha-rename:388| 1 (+ (* 0 |$cond-alpha-rename:392|) (+ (* 0 |$cond-alpha-rename:388|) 0)) |$cond-alpha-rename:392| |$cond-alpha-rename:388| 1 (- |$cond-alpha-rename:388| 1) |$cond-alpha-rename:392| |$cond-alpha-rename:388| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:257| Int) )
    (=>
      ( and (|toChurch_1038$unknown:87| |$cond-alpha-rename:257| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:252| |$cond-alpha-rename:248| 1 (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0)) |$cond-alpha-rename:252| |$cond-alpha-rename:248| 1 (- |$cond-alpha-rename:248| 1) |$cond-alpha-rename:252| |$cond-alpha-rename:248| 1) (|toChurch_without_checking_1376$unknown:103| |$cond-alpha-rename:256| |$cond-alpha-rename:257| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:255| |$cond-alpha-rename:254| |$cond-alpha-rename:253| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245|) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$cond-alpha-rename:252| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$cond-alpha-rename:248| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:252| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:248| |$cond-alpha-rename:214| |$cond-alpha-rename:213| |$cond-alpha-rename:212|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:255| |$cond-alpha-rename:254| |$cond-alpha-rename:253| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245|) (not (= |$cond-alpha-rename:248| 0)) (not (= |$cond-alpha-rename:248| 0)) (not (= |$cond-alpha-rename:248| 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0)) (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0))) (= (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0)) (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0))) (= (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0)) (+ (* 0 |$cond-alpha-rename:252|) (+ (* 0 |$cond-alpha-rename:248|) 0))) )
      (|toChurch_without_checking_1376$unknown:108| |$cond-alpha-rename:256| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$cond-alpha-rename:252| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$cond-alpha-rename:248| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:406| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) (|$cond-alpha-rename:410| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:414| Int) )
    ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:414| |$cond-alpha-rename:413| |$cond-alpha-rename:412| |$cond-alpha-rename:411| |$cond-alpha-rename:410| |$cond-alpha-rename:409| |$cond-alpha-rename:408| |$cond-alpha-rename:407| |$cond-alpha-rename:406| |$cond-alpha-rename:405| |$cond-alpha-rename:404|) (not (= 0 1)) (not (and (> (+ (+ 0 |$cond-alpha-rename:407|) 0) (+ (+ 0 (- |$cond-alpha-rename:407| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:407| 1)) 0) 0))) (not (= |$cond-alpha-rename:407| 0)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-49:n_1039| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (= |$alpha-49:n_1039| 0) )
      (|toChurch_without_checking_1376$unknown:108| |$V-reftype:71| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$alpha-70:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-70:x_1043|) (>= |$alpha-70:x_1043| 0) )
      (|toChurch_without_checking_1376$unknown:103| (+ |$V-reftype:83| 1) |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |succ_1036| 0 0 0 (+ (* 0 |$alpha-70:x_1043|) 0) 0 0 0 |$alpha-70:x_1043| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-70:x_1043|) (>= |$alpha-70:x_1043| 0) )
      (|main_1041$unknown:40| 1 |$alpha-70:x_1043|)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-70:x_1043|) (>= |$alpha-70:x_1043| 0) )
      (|toChurch_without_checking_1376$unknown:98| 0 0 0 (+ (* 0 |$alpha-70:x_1043|) 0) 0 0 0 |$alpha-70:x_1043| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-70:x_1043| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-70:x_1043|) (not (>= |$alpha-70:x_1043| 0)) )
      (|main_1041$unknown:40| 1 |$alpha-70:x_1043|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-49:n_1039| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|toChurch_without_checking_1376| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$V-reftype:105| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (not (= |$alpha-49:n_1039| 0)) )
      (|toChurch_without_checking_1376$unknown:98| |$V-reftype:105| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$alpha-46:x_DO_NOT_CARE_1450| Int) (|$alpha-47:x_DO_NOT_CARE_1451| Int) (|$alpha-48:x_DO_NOT_CARE_1452| Int) (|$alpha-49:n_1039| Int) (|$alpha-50:x_DO_NOT_CARE_1447| Int) (|$alpha-51:x_DO_NOT_CARE_1448| Int) (|$alpha-52:x_DO_NOT_CARE_1449| Int) (|$alpha-53:f_EXPARAM_1119| Int) (|$alpha-54:set_flag_toChurch_1362| Int) (|$alpha-55:s_toChurch_n_1355| Int) (|$alpha-56:s_toChurch_f_EXPARAM_1356| Int) (|toChurch_without_checking_1376| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) (|toChurch_without_checking_1376$unknown:98| |$alpha-56:s_toChurch_f_EXPARAM_1356| |$alpha-55:s_toChurch_n_1355| |$alpha-54:set_flag_toChurch_1362| |$alpha-53:f_EXPARAM_1119| |$alpha-52:x_DO_NOT_CARE_1449| |$alpha-51:x_DO_NOT_CARE_1448| |$alpha-50:x_DO_NOT_CARE_1447| |$alpha-49:n_1039| |$alpha-48:x_DO_NOT_CARE_1452| |$alpha-47:x_DO_NOT_CARE_1451| |$alpha-46:x_DO_NOT_CARE_1450|) (not (= |$alpha-49:n_1039| 0)) (|toChurch_1038$unknown:61| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|) )
      (|toChurch_without_checking_1376$unknown:103| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |toChurch_without_checking_1376|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$alpha-43:f_1040| Int) (|$cond-alpha-rename:423| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:433| Int) (|$cond-alpha-rename:575| Int) (|$cond-alpha-rename:576| Int) (|$cond-alpha-rename:577| Int) (|$cond-alpha-rename:578| Int) (|$cond-alpha-rename:579| Int) (|$cond-alpha-rename:580| Int) (|$cond-alpha-rename:581| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:585| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:103| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:585| |$cond-alpha-rename:584| |$cond-alpha-rename:583| |$cond-alpha-rename:582| |$cond-alpha-rename:581| |$cond-alpha-rename:580| |$cond-alpha-rename:579| |$cond-alpha-rename:578| |$cond-alpha-rename:577| |$cond-alpha-rename:576| |$cond-alpha-rename:575|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:433| |$cond-alpha-rename:432| |$cond-alpha-rename:431| |$cond-alpha-rename:582| |$cond-alpha-rename:429| |$cond-alpha-rename:428| |$cond-alpha-rename:427| |$cond-alpha-rename:578| |$cond-alpha-rename:425| |$cond-alpha-rename:424| |$cond-alpha-rename:423|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:585| |$cond-alpha-rename:584| |$cond-alpha-rename:583| |$cond-alpha-rename:582| |$cond-alpha-rename:581| |$cond-alpha-rename:580| |$cond-alpha-rename:579| |$cond-alpha-rename:578| |$cond-alpha-rename:577| |$cond-alpha-rename:576| |$cond-alpha-rename:575|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:578| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:578|) 0) (+ (+ 0 (- |$cond-alpha-rename:578| 1)) 0)) (not (= |$cond-alpha-rename:578| 0)) (not (= |$cond-alpha-rename:578| 0)) (= (- |$cond-alpha-rename:578| 1) (- |$cond-alpha-rename:578| 1)) (= (+ (* 0 |$cond-alpha-rename:582|) (+ (* 0 |$cond-alpha-rename:578|) 0)) (+ (* 0 |$cond-alpha-rename:582|) (+ (* 0 |$cond-alpha-rename:578|) 0))) (= 1 1) )
      (|toChurch_1038$unknown:61| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:582| |$cond-alpha-rename:578| 1 (+ (* 0 |$cond-alpha-rename:582|) (+ (* 0 |$cond-alpha-rename:578|) 0)) |$cond-alpha-rename:582| |$cond-alpha-rename:578| 1 (- |$cond-alpha-rename:578| 1) |$cond-alpha-rename:582| |$cond-alpha-rename:578| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:157| Int) (|$alpha-43:f_1040| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:443| Int) (|$cond-alpha-rename:444| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:448| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:595| Int) (|$cond-alpha-rename:596| Int) (|$cond-alpha-rename:597| Int) (|$cond-alpha-rename:598| Int) (|$cond-alpha-rename:599| Int) (|$cond-alpha-rename:600| Int) (|$cond-alpha-rename:601| Int) (|$cond-alpha-rename:602| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:604| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:103| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:604| |$cond-alpha-rename:603| |$cond-alpha-rename:602| |$cond-alpha-rename:601| |$cond-alpha-rename:600| |$cond-alpha-rename:599| |$cond-alpha-rename:598| |$cond-alpha-rename:597| |$cond-alpha-rename:596| |$cond-alpha-rename:595| |$cond-alpha-rename:594|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:452| |$cond-alpha-rename:451| |$cond-alpha-rename:450| |$cond-alpha-rename:601| |$cond-alpha-rename:448| |$cond-alpha-rename:447| |$cond-alpha-rename:446| |$cond-alpha-rename:597| |$cond-alpha-rename:444| |$cond-alpha-rename:443| |$cond-alpha-rename:442|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:604| |$cond-alpha-rename:603| |$cond-alpha-rename:602| |$cond-alpha-rename:601| |$cond-alpha-rename:600| |$cond-alpha-rename:599| |$cond-alpha-rename:598| |$cond-alpha-rename:597| |$cond-alpha-rename:596| |$cond-alpha-rename:595| |$cond-alpha-rename:594|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:597| 0)) (not (= |$cond-alpha-rename:597| 0)) (= (- |$cond-alpha-rename:597| 1) (- |$cond-alpha-rename:597| 1)) (= (+ (* 0 |$cond-alpha-rename:601|) (+ (* 0 |$cond-alpha-rename:597|) 0)) (+ (* 0 |$cond-alpha-rename:601|) (+ (* 0 |$cond-alpha-rename:597|) 0))) (= 1 1) )
      (|toChurch_1038$unknown:61| |$V-reftype:157| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$alpha-43:f_1040| |$cond-alpha-rename:601| |$cond-alpha-rename:597| 1 (+ (* 0 |$cond-alpha-rename:601|) (+ (* 0 |$cond-alpha-rename:597|) 0)) |$cond-alpha-rename:601| |$cond-alpha-rename:597| 1 (- |$cond-alpha-rename:597| 1) |$cond-alpha-rename:601| |$cond-alpha-rename:597| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:461| Int) (|$cond-alpha-rename:462| Int) (|$cond-alpha-rename:463| Int) (|$cond-alpha-rename:464| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:466| Int) (|$cond-alpha-rename:467| Int) (|$cond-alpha-rename:468| Int) (|$cond-alpha-rename:469| Int) (|$cond-alpha-rename:470| Int) (|$cond-alpha-rename:471| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (+ (* 0 |$cond-alpha-rename:468|) (+ (* 0 |$cond-alpha-rename:464|) 0)) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (- |$cond-alpha-rename:464| 1) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (+ (* 0 |$cond-alpha-rename:468|) (+ (* 0 |$cond-alpha-rename:464|) 0)) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (- |$cond-alpha-rename:464| 1) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:317| |$cond-alpha-rename:316| |$cond-alpha-rename:315| |$cond-alpha-rename:314| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:471| |$cond-alpha-rename:470| |$cond-alpha-rename:469| |$cond-alpha-rename:468| |$cond-alpha-rename:467| |$cond-alpha-rename:466| |$cond-alpha-rename:465| |$cond-alpha-rename:464| |$cond-alpha-rename:463| |$cond-alpha-rename:462| |$cond-alpha-rename:461|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:464| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:464|) 0) (+ (+ 0 (- |$cond-alpha-rename:464| 1)) 0)) (not (= |$cond-alpha-rename:310| 0)) (not (= |$cond-alpha-rename:464| 0)) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (+ (* 0 |$cond-alpha-rename:468|) (+ (* 0 |$cond-alpha-rename:464|) 0)) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1 (- |$cond-alpha-rename:464| 1) |$cond-alpha-rename:468| |$cond-alpha-rename:464| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$V-reftype:120| Int) (|$V-reftype:122| Int) (|$V-reftype:124| Int) (|$V-reftype:125| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:330| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:481| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:487| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:490| Int) )
    (=>
      ( and (|toChurch_1038$unknown:56| |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (+ (* 0 |$cond-alpha-rename:487|) (+ (* 0 |$cond-alpha-rename:483|) 0)) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (- |$cond-alpha-rename:483| 1) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1) (|toChurch_without_checking_1376$unknown:108| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (+ (* 0 |$cond-alpha-rename:487|) (+ (* 0 |$cond-alpha-rename:483|) 0)) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (- |$cond-alpha-rename:483| 1) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:335| |$cond-alpha-rename:334| |$cond-alpha-rename:333| |$cond-alpha-rename:332| |$cond-alpha-rename:331| |$cond-alpha-rename:330| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$cond-alpha-rename:327|) (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:490| |$cond-alpha-rename:489| |$cond-alpha-rename:488| |$cond-alpha-rename:487| |$cond-alpha-rename:486| |$cond-alpha-rename:485| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:482| |$cond-alpha-rename:481| |$cond-alpha-rename:480|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:330| 0)) (not (= |$cond-alpha-rename:483| 0)) )
      (|toChurch_1038$unknown:87| |$V-reftype:125| |$V-reftype:124| |$V-reftype:122| |$V-reftype:120| |$V-reftype:118| |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (+ (* 0 |$cond-alpha-rename:487|) (+ (* 0 |$cond-alpha-rename:483|) 0)) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1 (- |$cond-alpha-rename:483| 1) |$cond-alpha-rename:487| |$cond-alpha-rename:483| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:499| Int) (|$cond-alpha-rename:500| Int) (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:502| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:504| Int) (|$cond-alpha-rename:505| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:507| Int) (|$cond-alpha-rename:508| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:509| |$cond-alpha-rename:508| |$cond-alpha-rename:507| |$cond-alpha-rename:506| |$cond-alpha-rename:505| |$cond-alpha-rename:504| |$cond-alpha-rename:503| |$cond-alpha-rename:502| |$cond-alpha-rename:501| |$cond-alpha-rename:500| |$cond-alpha-rename:499|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:502| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:502|) 0) (+ (+ 0 (- |$cond-alpha-rename:502| 1)) 0)) (not (= |$cond-alpha-rename:502| 0)) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:506| |$cond-alpha-rename:502| 1 (+ (* 0 |$cond-alpha-rename:506|) (+ (* 0 |$cond-alpha-rename:502|) 0)) |$cond-alpha-rename:506| |$cond-alpha-rename:502| 1 (- |$cond-alpha-rename:502| 1) |$cond-alpha-rename:506| |$cond-alpha-rename:502| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:527| Int) (|$cond-alpha-rename:528| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:98| |$cond-alpha-rename:528| |$cond-alpha-rename:527| |$cond-alpha-rename:526| |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| |$cond-alpha-rename:522| |$cond-alpha-rename:521| |$cond-alpha-rename:520| |$cond-alpha-rename:519| |$cond-alpha-rename:518|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:521| 0)) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:525| |$cond-alpha-rename:521| 1 (+ (* 0 |$cond-alpha-rename:525|) (+ (* 0 |$cond-alpha-rename:521|) 0)) |$cond-alpha-rename:525| |$cond-alpha-rename:521| 1 (- |$cond-alpha-rename:521| 1) |$cond-alpha-rename:525| |$cond-alpha-rename:521| 1)
    )
  )
)
(check-sat)

(get-model)

