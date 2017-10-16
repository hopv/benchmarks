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

(declare-fun |fail$unknown:38|
  ( Int ) Bool
)

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

(declare-fun |omega_1032$unknown:46|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:43|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:37|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:36|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:32|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:13|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-31:x_DO_NOT_CARE_1389| Int) (|$alpha-32:x_DO_NOT_CARE_1390| Int) (|$alpha-33:h_EXPARAM_1131| Int) (|$alpha-34:x_DO_NOT_CARE_1387| Int) (|$alpha-35:x_DO_NOT_CARE_1388| Int) (|$alpha-37:set_flag_omega_1196| Int) (|$alpha-38:s_omega_x_1193| Int) (|$alpha-39:x_1040| Int) )
    (=>
      ( and true true true true (|app_1038$unknown:12| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:x_DO_NOT_CARE_1389| Int) (|$alpha-32:x_DO_NOT_CARE_1390| Int) (|$alpha-33:h_EXPARAM_1131| Int) (|$alpha-34:x_DO_NOT_CARE_1387| Int) (|$alpha-35:x_DO_NOT_CARE_1388| Int) (|$alpha-37:set_flag_omega_1196| Int) (|$alpha-38:s_omega_x_1193| Int) (|$alpha-39:x_1040| Int) )
    (=>
      ( and true true true true (|app_1038$unknown:12| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:x_DO_NOT_CARE_1389| Int) (|$alpha-32:x_DO_NOT_CARE_1390| Int) (|$alpha-33:h_EXPARAM_1131| Int) (|$alpha-34:x_DO_NOT_CARE_1387| Int) (|$alpha-35:x_DO_NOT_CARE_1388| Int) (|$alpha-37:set_flag_omega_1196| Int) (|$alpha-38:s_omega_x_1193| Int) (|$alpha-39:x_1040| Int) )
    (=>
      ( and true true true true (|app_1038$unknown:12| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|) true true true )
      (|app_1038$unknown:8| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:111| Int) (|$alpha-31:x_DO_NOT_CARE_1389| Int) (|$alpha-32:x_DO_NOT_CARE_1390| Int) (|$alpha-33:h_EXPARAM_1131| Int) (|$alpha-34:x_DO_NOT_CARE_1387| Int) (|$alpha-35:x_DO_NOT_CARE_1388| Int) (|$alpha-37:set_flag_omega_1196| Int) (|$alpha-38:s_omega_x_1193| Int) (|$alpha-39:x_1040| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$V-reftype:111| |$knormal:26|) (|app_1038$unknown:9| |$knormal:26| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|) true true true true (|app_1038$unknown:12| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|) true true true )
      (|app_1038$unknown:13| |$V-reftype:111| |$alpha-39:x_1040| |$alpha-38:s_omega_x_1193| |$alpha-37:set_flag_omega_1196| |$alpha-35:x_DO_NOT_CARE_1388| |$alpha-34:x_DO_NOT_CARE_1387| |$alpha-33:h_EXPARAM_1131| |$alpha-32:x_DO_NOT_CARE_1390| |$alpha-31:x_DO_NOT_CARE_1389|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:105| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:105| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|) true true (|app_1038$unknown:13| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:105| |$knormal:100| |$knormal:97| |$alpha-44:c4_COEFFICIENT_1123| |$knormal:92| |$knormal:90|) )
      (|f_1034$unknown:24| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:105| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:120| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:32| |$V-reftype:24| |$V-reftype:22| |$knormal:120| |$knormal:148| |$knormal:145| |$alpha-41:c7_COEFFICIENT_1128| |$knormal:140| |$knormal:137| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|) true true (|app_1038$unknown:13| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:120| |$knormal:116| |$knormal:113| |$alpha-42:c6_COEFFICIENT_1126| |$knormal:108| |$knormal:106|) )
      (|f_1034$unknown:33| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:120| |$knormal:148| |$knormal:145| |$alpha-41:c7_COEFFICIENT_1128| |$knormal:140| |$knormal:137| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:41| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|) true true (|app_1038$unknown:13| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:41| |$knormal:37| |$knormal:34| |$alpha-48:c0_COEFFICIENT_1115| |$knormal:29| |$knormal:27|) )
      (|f_1034$unknown:24| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:41| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:32| |$V-reftype:24| |$V-reftype:22| |$knormal:56| |$knormal:84| |$knormal:81| |$alpha-45:c3_COEFFICIENT_1120| |$knormal:76| |$knormal:73| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|) true true (|app_1038$unknown:13| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:56| |$knormal:52| |$knormal:49| |$alpha-46:c2_COEFFICIENT_1118| |$knormal:44| |$knormal:42|) )
      (|f_1034$unknown:33| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:56| |$knormal:84| |$knormal:81| |$alpha-45:c3_COEFFICIENT_1120| |$knormal:76| |$knormal:73| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:68| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|app_1038$unknown:8| |$V-reftype:15| |$V-reftype:68| |$knormal:89| |$knormal:100| |$knormal:97| |$alpha-44:c4_COEFFICIENT_1123| |$knormal:92| |$knormal:90|) true true )
      (|f_1034$unknown:36| |$V-reftype:15| |$V-reftype:68| |$knormal:89| |$knormal:84| |$knormal:81| |$alpha-45:c3_COEFFICIENT_1120| |$knormal:76| |$knormal:73| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:71| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:37| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$knormal:89| |$knormal:84| |$knormal:81| |$alpha-45:c3_COEFFICIENT_1120| |$knormal:76| |$knormal:73| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|) (|app_1038$unknown:8| |$V-reftype:70| |$V-reftype:68| |$knormal:89| |$knormal:100| |$knormal:97| |$alpha-44:c4_COEFFICIENT_1123| |$knormal:92| |$knormal:90|) true true )
      (|app_1038$unknown:9| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$knormal:89| |$knormal:100| |$knormal:97| |$alpha-44:c4_COEFFICIENT_1123| |$knormal:92| |$knormal:90|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:78| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|app_1038$unknown:8| |$V-reftype:15| |$V-reftype:78| |id_1030| |$knormal:116| |$knormal:113| |$alpha-42:c6_COEFFICIENT_1126| |$knormal:108| |$knormal:106|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|id_1030$unknown:43| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030|) (|app_1038$unknown:8| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:116| |$knormal:113| |$alpha-42:c6_COEFFICIENT_1126| |$knormal:108| |$knormal:106|) true true )
      (|app_1038$unknown:9| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:116| |$knormal:113| |$alpha-42:c6_COEFFICIENT_1126| |$knormal:108| |$knormal:106|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:78| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|app_1038$unknown:8| |$V-reftype:15| |$V-reftype:78| |id_1030| |$knormal:37| |$knormal:34| |$alpha-48:c0_COEFFICIENT_1115| |$knormal:29| |$knormal:27|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|id_1030$unknown:43| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030|) (|app_1038$unknown:8| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:37| |$knormal:34| |$alpha-48:c0_COEFFICIENT_1115| |$knormal:29| |$knormal:27|) true true )
      (|app_1038$unknown:9| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:37| |$knormal:34| |$alpha-48:c0_COEFFICIENT_1115| |$knormal:29| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:88| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|omega_1032| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|app_1038$unknown:8| |$V-reftype:15| |$V-reftype:88| |omega_1032| |$knormal:52| |$knormal:49| |$alpha-46:c2_COEFFICIENT_1118| |$knormal:44| |$knormal:42|) true true )
      (|omega_1032$unknown:46| |$V-reftype:15| |$V-reftype:88| |omega_1032|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:88| Int) (|$V-reftype:90| Int) (|$V-reftype:91| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|omega_1032| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|omega_1032$unknown:47| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |omega_1032|) (|app_1038$unknown:8| |$V-reftype:90| |$V-reftype:88| |omega_1032| |$knormal:52| |$knormal:49| |$alpha-46:c2_COEFFICIENT_1118| |$knormal:44| |$knormal:42|) true true )
      (|app_1038$unknown:9| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |omega_1032| |$knormal:52| |$knormal:49| |$alpha-46:c2_COEFFICIENT_1118| |$knormal:44| |$knormal:42|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:100| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:15| |$V-reftype:100| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:107| Int) (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (= |$V-reftype:107| |$knormal:12|) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_without_checking_1227$unknown:51| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true (|fail$unknown:39| |$knormal:16| |$knormal:15|) (|bot$unknown:15| |$knormal:14| |$knormal:13|) )
      (|omega_1032$unknown:47| |$V-reftype:107| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true (|fail$unknown:39| |$knormal:16| |$knormal:15|) (|bot$unknown:15| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true (|fail$unknown:39| |$knormal:16| |$knormal:15|) (|bot$unknown:15| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true (|fail$unknown:39| |$knormal:16| |$knormal:15|) (|bot$unknown:15| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:110| Int) (|$alpha-16:x_DO_NOT_CARE_1397| Int) (|$alpha-17:x_DO_NOT_CARE_1398| Int) (|$alpha-18:x_EXPARAM_1133| Int) (|$alpha-19:x_DO_NOT_CARE_1395| Int) (|$alpha-20:x_DO_NOT_CARE_1396| Int) (|$alpha-22:x_DO_NOT_CARE_1393| Int) (|$alpha-23:x_DO_NOT_CARE_1394| Int) (|$alpha-24:y_EXPARAM_1134| Int) (|$alpha-25:x_DO_NOT_CARE_1391| Int) (|$alpha-26:x_DO_NOT_CARE_1392| Int) (|$alpha-28:set_flag_omega_1196| Int) (|$alpha-29:s_omega_x_1193| Int) (|$alpha-30:z_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$V-reftype:110| |$knormal:21|) (|f_1034$unknown:36| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|) true true (|f_1034$unknown:33| |$knormal:21| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|) true true true true true true true true true true )
      (|f_1034$unknown:37| |$V-reftype:110| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1397| Int) (|$alpha-17:x_DO_NOT_CARE_1398| Int) (|$alpha-18:x_EXPARAM_1133| Int) (|$alpha-19:x_DO_NOT_CARE_1395| Int) (|$alpha-20:x_DO_NOT_CARE_1396| Int) (|$alpha-22:x_DO_NOT_CARE_1393| Int) (|$alpha-23:x_DO_NOT_CARE_1394| Int) (|$alpha-24:y_EXPARAM_1134| Int) (|$alpha-25:x_DO_NOT_CARE_1391| Int) (|$alpha-26:x_DO_NOT_CARE_1392| Int) (|$alpha-28:set_flag_omega_1196| Int) (|$alpha-29:s_omega_x_1193| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1397| Int) (|$alpha-17:x_DO_NOT_CARE_1398| Int) (|$alpha-18:x_EXPARAM_1133| Int) (|$alpha-19:x_DO_NOT_CARE_1395| Int) (|$alpha-20:x_DO_NOT_CARE_1396| Int) (|$alpha-22:x_DO_NOT_CARE_1393| Int) (|$alpha-23:x_DO_NOT_CARE_1394| Int) (|$alpha-24:y_EXPARAM_1134| Int) (|$alpha-25:x_DO_NOT_CARE_1391| Int) (|$alpha-26:x_DO_NOT_CARE_1392| Int) (|$alpha-28:set_flag_omega_1196| Int) (|$alpha-29:s_omega_x_1193| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1397| Int) (|$alpha-17:x_DO_NOT_CARE_1398| Int) (|$alpha-18:x_EXPARAM_1133| Int) (|$alpha-19:x_DO_NOT_CARE_1395| Int) (|$alpha-20:x_DO_NOT_CARE_1396| Int) (|$alpha-22:x_DO_NOT_CARE_1393| Int) (|$alpha-23:x_DO_NOT_CARE_1394| Int) (|$alpha-24:y_EXPARAM_1134| Int) (|$alpha-25:x_DO_NOT_CARE_1391| Int) (|$alpha-26:x_DO_NOT_CARE_1392| Int) (|$alpha-28:set_flag_omega_1196| Int) (|$alpha-29:s_omega_x_1193| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|) true true true true true true true true true true true true )
      (|f_1034$unknown:32| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1193| |$alpha-28:set_flag_omega_1196| |$alpha-26:x_DO_NOT_CARE_1392| |$alpha-25:x_DO_NOT_CARE_1391| |$alpha-24:y_EXPARAM_1134| |$alpha-23:x_DO_NOT_CARE_1394| |$alpha-22:x_DO_NOT_CARE_1393| |$alpha-20:x_DO_NOT_CARE_1396| |$alpha-19:x_DO_NOT_CARE_1395| |$alpha-18:x_EXPARAM_1133| |$alpha-17:x_DO_NOT_CARE_1398| |$alpha-16:x_DO_NOT_CARE_1397|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:105| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:105| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|) true true )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:105| |$knormal:100| |$knormal:97| |$alpha-44:c4_COEFFICIENT_1123| |$knormal:92| |$knormal:90|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:41| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|) true true )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:41| |$knormal:37| |$knormal:34| |$alpha-48:c0_COEFFICIENT_1115| |$knormal:29| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:120| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:32| |$V-reftype:61| |$V-reftype:22| |$knormal:120| |$knormal:148| |$knormal:145| |$alpha-41:c7_COEFFICIENT_1128| |$knormal:140| |$knormal:137| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|) true true )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:120| |$knormal:116| |$knormal:113| |$alpha-42:c6_COEFFICIENT_1126| |$knormal:108| |$knormal:106|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:32| |$V-reftype:61| |$V-reftype:22| |$knormal:56| |$knormal:84| |$knormal:81| |$alpha-45:c3_COEFFICIENT_1120| |$knormal:76| |$knormal:73| |$knormal:67| |$knormal:64| |$alpha-47:c1_COEFFICIENT_1117| |$knormal:59| |$knormal:57|) true true )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:56| |$knormal:52| |$knormal:49| |$alpha-46:c2_COEFFICIENT_1118| |$knormal:44| |$knormal:42|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:38| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true (|fail$unknown:39| |$knormal:16| |$knormal:15|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:102| Int) (|$alpha-3:set_flag_omega_1196| Int) (|$alpha-4:s_omega_x_1193| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:102| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:43| |$V-reftype:102| |$alpha-5:x_1031| |$alpha-4:s_omega_x_1193| |$alpha-3:set_flag_omega_1196|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$V-reftype:109| |$knormal:12|) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1195|))) (|omega_without_checking_1227$unknown:51| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true )
      (|omega_1032$unknown:47| |$V-reftype:109| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1195|)) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true )
      (|fail$unknown:38| |$knormal:15|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1195|))) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1195|))) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1195| Int) (|$alpha-12:s_prev_omega_x_1194| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1195|))) (|omega_1032$unknown:46| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1194| |$alpha-11:prev_set_flag_omega_1195|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:104| Int) (|$alpha-6:set_flag_omega_1196| Int) (|$alpha-7:s_omega_x_1193| Int) (|$alpha-8:x_1033| Int) (|$alpha-9:set_flag_omega_1196| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1196| 1) (= |$V-reftype:104| |$knormal:7|) (|omega_without_checking_1227$unknown:51| |$knormal:7| |$alpha-8:x_1033| |$alpha-8:x_1033| |$alpha-9:set_flag_omega_1196|) true true true )
      (|omega_without_checking_1227$unknown:51| |$V-reftype:104| |$alpha-8:x_1033| |$alpha-7:s_omega_x_1193| |$alpha-6:set_flag_omega_1196|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1196| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1196| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1196| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1196| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1196| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1196| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:121| Int) (|$knormal:123| Int) (|$knormal:128| Int) (|$knormal:131| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:131| 0) (= |$knormal:128| 0) (= |$knormal:123| 0) (= |$knormal:121| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      (|f_1034$unknown:36| |$knormal:160| |$knormal:157| |$knormal:154| |$knormal:148| |$knormal:145| |$alpha-41:c7_COEFFICIENT_1128| |$knormal:140| |$knormal:137| |$knormal:131| |$knormal:128| |$alpha-43:c5_COEFFICIENT_1125| |$knormal:123| |$knormal:121|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:100| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) (|$knormal:90| Int) (|$knormal:92| Int) (|$knormal:97| Int) )
    (=>
      ( and (= |$knormal:97| 0) (= |$knormal:92| 0) (= |$knormal:90| 0) (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$knormal:100| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:64| Int) (|$knormal:67| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:67| 0) (= |$knormal:64| 0) (= |$knormal:59| 0) (= |$knormal:57| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:34| Int) (|$knormal:37| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) (|$knormal:73| Int) (|$knormal:76| Int) (|$knormal:81| Int) (|$knormal:84| Int) )
    (=>
      ( and (= |$knormal:84| 0) (= |$knormal:81| 0) (= |$knormal:76| 0) (= |$knormal:73| 0) (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:37| 0) (= |$knormal:34| 0) (= |$knormal:29| 0) (= |$knormal:27| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:137| Int) (|$knormal:140| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 0) (= |$knormal:49| 0) (= |$knormal:44| 0) (= |$knormal:42| 0) (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:140| 0) (= |$knormal:137| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-41:c7_COEFFICIENT_1128| Int) (|$alpha-42:c6_COEFFICIENT_1126| Int) (|$alpha-43:c5_COEFFICIENT_1125| Int) (|$alpha-44:c4_COEFFICIENT_1123| Int) (|$alpha-45:c3_COEFFICIENT_1120| Int) (|$alpha-46:c2_COEFFICIENT_1118| Int) (|$alpha-47:c1_COEFFICIENT_1117| Int) (|$alpha-48:c0_COEFFICIENT_1115| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$knormal:113| Int) (|$knormal:116| Int) (|$knormal:154| Int) (|$knormal:157| Int) (|$knormal:160| Int) )
    (=>
      ( and (= |$knormal:160| 1) (= |$knormal:157| 0) (= |$knormal:154| 0) (= |$knormal:116| 0) (= |$knormal:113| 0) (= |$knormal:108| 0) (= |$knormal:106| 0) (= |$alpha-48:c0_COEFFICIENT_1115| 0) (= |$alpha-47:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c2_COEFFICIENT_1118| 0) (= |$alpha-45:c3_COEFFICIENT_1120| 0) (= |$alpha-44:c4_COEFFICIENT_1123| 0) (= |$alpha-43:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c6_COEFFICIENT_1126| 0) (= |$alpha-41:c7_COEFFICIENT_1128| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

