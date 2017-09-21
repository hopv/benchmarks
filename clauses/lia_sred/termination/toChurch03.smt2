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
  
     let main_1041 x_1043 =
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

(declare-fun |main_1041$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:82|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:66|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |main_1041$unknown:39|
  ( Int ) Bool
)

(declare-fun |toChurch_without_checking_1376$unknown:87|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:166| Int) (|$alpha-58:n_1039| Int) (|$knormal:111| Int) (|$knormal:113| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:111| 1) (|fail$unknown:33| |$knormal:113| 1) (|main_1041$unknown:39| |$alpha-58:n_1039|) (|toChurch_without_checking_1376$unknown:87| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| 0 0 0 (+ (* 0 |$alpha-58:n_1039|) 0) 0 0 0 |$alpha-58:n_1039| 0 0 0) (not (= 0 0)) (>= |$alpha-58:n_1039| 0) )
      (|toChurch_1038$unknown:66| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| 0 0 0 (+ (* 0 |$alpha-58:n_1039|) 0) 0 0 0 |$alpha-58:n_1039| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:82| |$cond-alpha-rename:336| |$cond-alpha-rename:337| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:288| |$cond-alpha-rename:287| |$cond-alpha-rename:286| |$cond-alpha-rename:313| |$cond-alpha-rename:284| |$cond-alpha-rename:283| |$cond-alpha-rename:282| |$cond-alpha-rename:312| |$cond-alpha-rename:280| |$cond-alpha-rename:279| |$cond-alpha-rename:278|) (|toChurch_without_checking_1376$unknown:87| |$cond-alpha-rename:337| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$cond-alpha-rename:313| |$cond-alpha-rename:312| 1 (+ (* 0 |$cond-alpha-rename:313|) (+ (* 0 |$cond-alpha-rename:312|) 0)) |$cond-alpha-rename:313| |$cond-alpha-rename:312| 1 (- |$cond-alpha-rename:312| 1) |$cond-alpha-rename:313| |$cond-alpha-rename:312| 1) (not (= |$cond-alpha-rename:312| 0)) (not (= |$cond-alpha-rename:312| 0)) (not (= |$cond-alpha-rename:312| 0)) (= 0 (+ (* 0 |$cond-alpha-rename:313|) (+ (* 0 |$cond-alpha-rename:312|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:313|) (+ (* 0 |$cond-alpha-rename:312|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:313|) (+ (* 0 |$cond-alpha-rename:312|) 0))) (= 1 1) (= 1 1) )
      (|toChurch_without_checking_1376$unknown:87| |$cond-alpha-rename:336| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$V-reftype:53| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$cond-alpha-rename:313| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$cond-alpha-rename:312| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:382| Int) )
    ( and (|main_1041$unknown:39| |$cond-alpha-rename:382|) (not (= 0 0)) (>= |$cond-alpha-rename:382| 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) )
    (=>
      ( and true )
      (|toChurch_without_checking_1376$unknown:87| |$V-reftype:71| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| 0 |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|)
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-69:x_1043|) (>= |$alpha-69:x_1043| 0) )
      (|main_1041$unknown:40| 1 |$alpha-69:x_1043|)
    )
  )
)
(assert
  (forall ( (|$alpha-69:x_1043| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-69:x_1043|) (not (>= |$alpha-69:x_1043| 0)) )
      (|main_1041$unknown:40| 1 |$alpha-69:x_1043|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$alpha-58:n_1039| Int) (|$alpha-66:f_1040| Int) )
    (=>
      ( and (>= |$alpha-58:n_1039| 0) (= 0 (+ (* 0 |$alpha-58:n_1039|) 0)) (= 0 0) (= 0 0) (= 0 0) (>= |$alpha-58:n_1039| 0) (|main_1041$unknown:39| |$alpha-58:n_1039|) )
      (|toChurch_without_checking_1376$unknown:82| (+ |$V-reftype:114| 1) |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$alpha-66:f_1040| 0 0 0 0 0 0 0 |$alpha-58:n_1039| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:166| Int) (|$alpha-58:n_1039| Int) )
    (=>
      ( and (|main_1041$unknown:39| |$alpha-58:n_1039|) (|toChurch_without_checking_1376$unknown:87| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| 0 0 0 (+ (* 0 |$alpha-58:n_1039|) 0) 0 0 0 |$alpha-58:n_1039| 0 0 0) (>= |$alpha-58:n_1039| 0) (not (not (= 0 0))) )
      (|toChurch_1038$unknown:66| |$V-reftype:166| |$V-reftype:165| |$V-reftype:163| |$V-reftype:161| |$V-reftype:159| 0 0 0 (+ (* 0 |$alpha-58:n_1039|) 0) 0 0 0 |$alpha-58:n_1039| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:156| Int) (|$alpha-31:x_DO_NOT_CARE_1450| Int) (|$alpha-32:x_DO_NOT_CARE_1451| Int) (|$alpha-33:x_DO_NOT_CARE_1452| Int) (|$alpha-34:n_1039| Int) (|$alpha-35:x_DO_NOT_CARE_1447| Int) (|$alpha-36:x_DO_NOT_CARE_1448| Int) (|$alpha-37:x_DO_NOT_CARE_1449| Int) (|$alpha-38:f_EXPARAM_1119| Int) (|$alpha-39:set_flag_toChurch_1362| Int) (|$alpha-40:s_toChurch_n_1355| Int) (|$alpha-41:s_toChurch_f_EXPARAM_1356| Int) (|$alpha-42:f_1040| Int) )
    (=>
      ( and (|toChurch_without_checking_1376$unknown:82| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-41:s_toChurch_f_EXPARAM_1356| |$alpha-40:s_toChurch_n_1355| |$alpha-39:set_flag_toChurch_1362| |$alpha-38:f_EXPARAM_1119| |$alpha-37:x_DO_NOT_CARE_1449| |$alpha-36:x_DO_NOT_CARE_1448| |$alpha-35:x_DO_NOT_CARE_1447| |$alpha-34:n_1039| |$alpha-33:x_DO_NOT_CARE_1452| |$alpha-32:x_DO_NOT_CARE_1451| |$alpha-31:x_DO_NOT_CARE_1450|) (not (= |$alpha-34:n_1039| 0)) )
      (|toChurch_without_checking_1376$unknown:82| |$V-reftype:156| |$V-reftype:155| |$V-reftype:153| |$V-reftype:151| |$alpha-42:f_1040| |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| 1 (+ (* 0 |$alpha-38:f_EXPARAM_1119|) (+ (* 0 |$alpha-34:n_1039|) 0)) |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| 1 (- |$alpha-34:n_1039| 1) |$alpha-38:f_EXPARAM_1119| |$alpha-34:n_1039| 1)
    )
  )
)
(check-sat)

(get-model)

