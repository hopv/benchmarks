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
  
     let rec id_without_checking_1177 set_flag_id_1140 s_id_x_1137 x_1031 =
       let set_flag_id_1140 = true
       in
       let s_id_x_1137 = x_1031
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1139 s_prev_id_x_1138 x_1031 =
       let u = if prev_set_flag_id_1139 then
                let u_1456 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1177 prev_set_flag_id_1139 s_prev_id_x_1138
                x_1031
  
     let rec omega_1032 set_flag_id_1140 s_id_x_1137 x_1033 =
       omega_1032 set_flag_id_1140 s_id_x_1137 x_1033
  
     let f_1034 x_DO_NOT_CARE_1385 x_DO_NOT_CARE_1386 x_EXPARAM_1133 x_DO_NOT_CARE_1383 x_DO_NOT_CARE_1384 x_1035 x_DO_NOT_CARE_1381 x_DO_NOT_CARE_1382 y_EXPARAM_1134 x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 y_1036 set_flag_id_1140 s_id_x_1137 z_1037 =
       y_1036 set_flag_id_1140 s_id_x_1137 z_1037
  
     let rec app_1038 x_DO_NOT_CARE_1377 x_DO_NOT_CARE_1378 h_EXPARAM_1131 x_DO_NOT_CARE_1375 x_DO_NOT_CARE_1376 h_1039 set_flag_id_1140 s_id_x_1137 x_1040 =
       h_1039 set_flag_id_1140 s_id_x_1137 x_1040
  
     let main =
       f_1034 false 0 c5_COEFFICIENT_1125 false 0
         (app_1038 false 0 c4_COEFFICIENT_1123 false 0
           (f_1034 false 0 c1_COEFFICIENT_1117 false 0
             (app_1038 false 0 c0_COEFFICIENT_1115 false 0 id_1030) false 0
             c3_COEFFICIENT_1120 false 0
             (app_1038 false 0 c2_COEFFICIENT_1118 false 0 omega_1032))) false 0
         c7_COEFFICIENT_1128 false 0
         (app_1038 false 0 c6_COEFFICIENT_1126 false 0 id_without_checking_1177)
         false 0 1
")

(set-logic HORN)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:51|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |app_1038$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:807| Int) (|$knormal:89| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:807| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:807| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:807| Int) )
    (=>
      ( and (|app_1038$unknown:12| 1 0 0 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:807| 1 0 0 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:807| 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:813| Int) (|$knormal:89| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:813| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:813| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:813| Int) )
    (=>
      ( and (|app_1038$unknown:12| 1 0 0 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:813| 1 0 0 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:813| 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1093| Int) (|id_1030| Int) )
    (=>
      ( and (not (= 0 |id_1030|)) (|fail$unknown:39| |$cond-alpha-rename:1090| 1) (|bot$unknown:15| |$cond-alpha-rename:1093| 1) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|id_1030| Int) )
    (=>
      ( and (not (not (= 0 |id_1030|))) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|id_without_checking_1177| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:87| |$V-reftype:85| |id_without_checking_1177| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:87| |$V-reftype:87| |$V-reftype:85| |id_without_checking_1177| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$V-reftype:97| Int) (|$V-reftype:98| Int) (|omega_1032| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:97| |$V-reftype:95| |omega_1032| 0 0 0 0 0) (|omega_1032$unknown:51| |$V-reftype:98| |$V-reftype:97| |$V-reftype:95| |omega_1032|) )
      (|app_1038$unknown:9| |$V-reftype:98| |$V-reftype:97| |$V-reftype:95| |omega_1032| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:2| 1) )
      (|bot$unknown:15| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$knormal:105| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:105| 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:105| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$knormal:41| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:41| 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:41| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$knormal:120| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:120| 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:120| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (= 0 0) )
      (|app_1038$unknown:12| 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$knormal:56| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:56| 0 0 0 0 0) (= 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:56| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (= 0 0) )
      (|app_1038$unknown:12| 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:397| Int) )
    ( and (|app_1038$unknown:12| |$cond-alpha-rename:395| |$cond-alpha-rename:397| |$cond-alpha-rename:396| 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:396|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-13:set_flag_id_1140| Int) (|$alpha-14:s_id_x_1137| Int) (|$alpha-15:x_1033| Int) (|$knormal:16| Int) )
    (=>
      ( and (|omega_1032$unknown:51| |$knormal:16| |$alpha-15:x_1033| |$alpha-14:s_id_x_1137| |$alpha-13:set_flag_id_1140|) )
      (|omega_1032$unknown:51| |$knormal:16| |$alpha-15:x_1033| |$alpha-14:s_id_x_1137| |$alpha-13:set_flag_id_1140|)
    )
  )
)
(check-sat)

(get-model)

(exit)

