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
  
     let id_1030 set_flag_omega_1196 s_omega_x_1193 x_1031 = x_1031
  
     let rec omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033 =
       let set_flag_omega_1196 = true
       in
       let s_omega_x_1193 = x_1033
       in
         omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033
  
     let rec omega_1032 prev_set_flag_omega_1195 s_prev_omega_x_1194 x_1033 =
       let u =if prev_set_flag_omega_1195 then
                let u_4056 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1227 prev_set_flag_omega_1195
                s_prev_omega_x_1194 x_1033
  
     let f_1034 x_DO_NOT_CARE_1397 x_DO_NOT_CARE_1398 x_EXPARAM_1133 x_DO_NOT_CARE_1395 x_DO_NOT_CARE_1396 x_1035 x_DO_NOT_CARE_1393 x_DO_NOT_CARE_1394 y_EXPARAM_1134 x_DO_NOT_CARE_1391 x_DO_NOT_CARE_1392 y_1036 set_flag_omega_1196 s_omega_x_1193 z_1037 =
       y_1036 set_flag_omega_1196 s_omega_x_1193 z_1037
  
     let rec app_1038 x_DO_NOT_CARE_1389 x_DO_NOT_CARE_1390 h_EXPARAM_1131 x_DO_NOT_CARE_1387 x_DO_NOT_CARE_1388 h_1039 set_flag_omega_1196 s_omega_x_1193 x_1040 =
       h_1039 set_flag_omega_1196 s_omega_x_1193 x_1040
  
     let main =
       f_1034 false 0 c5_COEFFICIENT_1125 false 0
         (app_1038 false 0 c4_COEFFICIENT_1123 false 0
           (f_1034 false 0 c1_COEFFICIENT_1117 false 0
             (app_1038 false 0 c0_COEFFICIENT_1115 false 0 id_1030) false 0
             c3_COEFFICIENT_1120 false 0
             (app_1038 false 0 c2_COEFFICIENT_1118 false 0 omega_1032))) false 0
         c7_COEFFICIENT_1128 false 0
         (app_1038 false 0 c6_COEFFICIENT_1126 false 0 id_1030) false 0 1
")

(set-logic HORN)

(declare-fun |omega_without_checking_1227$unknown:51|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:47|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:36|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:1| Int) (|$knormal:105| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:105| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:1| |$V-reftype:24| |$V-reftype:22| |$knormal:105| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:105| 0 0 0 0 0) )
      (|f_1034$unknown:24| |$cond-alpha-rename:1| |$V-reftype:24| |$V-reftype:22| |$knormal:105| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:2| Int) (|$knormal:120| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:120| 0 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:2| |$V-reftype:24| |$V-reftype:22| |$knormal:120| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:120| 0 0 0 0 0) )
      (|f_1034$unknown:33| |$cond-alpha-rename:2| |$V-reftype:24| |$V-reftype:22| |$knormal:120| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:3| Int) (|$knormal:41| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:41| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:3| |$V-reftype:24| |$V-reftype:22| |$knormal:41| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:41| 0 0 0 0 0) )
      (|f_1034$unknown:24| |$cond-alpha-rename:3| |$V-reftype:24| |$V-reftype:22| |$knormal:41| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:4| Int) (|$knormal:56| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:56| 0 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:4| |$V-reftype:24| |$V-reftype:22| |$knormal:56| 0 0 0 0 0) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:56| 0 0 0 0 0) )
      (|f_1034$unknown:33| |$cond-alpha-rename:4| |$V-reftype:24| |$V-reftype:22| |$knormal:56| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:68| Int) (|$knormal:89| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) )
      (|f_1034$unknown:36| |$V-reftype:15| |$V-reftype:68| |$knormal:89| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:293| Int) (|$knormal:89| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0) (|f_1034$unknown:33| |$cond-alpha-rename:293| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:36| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:293| |$V-reftype:70| |$V-reftype:68| |$knormal:89| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:88| Int) (|$V-reftype:90| Int) (|$V-reftype:91| Int) (|omega_1032| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:90| |$V-reftype:88| |omega_1032| 0 0 0 0 0) (|omega_1032$unknown:47| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |omega_1032|) )
      (|app_1038$unknown:9| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |omega_1032| 0 0 0 0 0)
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
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:16| Int) )
    (=>
      ( and (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_without_checking_1227$unknown:51| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) (|fail$unknown:39| |$knormal:16| 1) (|bot$unknown:15| |$knormal:14| 1) (|app_1038$unknown:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195| 0 0 0 0 0) )
      (|omega_1032$unknown:47| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|)
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
      ( and (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:120| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:120| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$knormal:56| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:56| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:56| 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:391| Int) (|$cond-alpha-rename:392| Int) )
    ( and (not (= 0 |$cond-alpha-rename:390|)) (|app_1038$unknown:12| |$cond-alpha-rename:392| |$cond-alpha-rename:391| |$cond-alpha-rename:390| 0 0 0 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-11:prev_set_flag_omega_1195|))) (|omega_without_checking_1227$unknown:51| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) (|app_1038$unknown:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195| 0 0 0 0 0) )
      (|omega_1032$unknown:47| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_omega_1196| Int) (|$alpha-7:s_omega_x_1193| Int) (|$alpha-8:x_1033| Int) (|$knormal:7| Int) )
    (=>
      ( and (|omega_without_checking_1227$unknown:51| |$knormal:7| |$alpha-8:x_1033| |$alpha-8:x_1033| 1) )
      (|omega_without_checking_1227$unknown:51| |$knormal:7| |$alpha-8:x_1033| |$alpha-7:s_omega_x_1193| |$alpha-6:set_flag_omega_1196|)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_1034$unknown:36| 1 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

