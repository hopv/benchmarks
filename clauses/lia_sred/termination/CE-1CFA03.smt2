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
  
     let rec omega_1032 omega_without_checking_1227 prev_set_flag_omega_1195 s_prev_omega_x_1194 x_1033 =
       let u =if prev_set_flag_omega_1195 then
                let u_5344 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1227 prev_set_flag_omega_1195
                s_prev_omega_x_1194 x_1033
  
     let rec omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033 =
       let set_flag_omega_1196 = true
       in
       let s_omega_x_1193 = x_1033
       in
         omega_1032 omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033
  
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
             (app_1038 false 0 c2_COEFFICIENT_1118 false 0
               omega_without_checking_1227))) false 0 c7_COEFFICIENT_1128 false 0
         (app_1038 false 0 c6_COEFFICIENT_1126 false 0 id_1030) false 0 1
")

(set-logic HORN)

(declare-fun |omega_1032$unknown:46|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:45|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:44|
  ( Int ) Bool
)

(declare-fun |fail$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:14|
  ( Int ) Bool
)

(declare-fun |omega_without_checking_1227$unknown:54|
  ( Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1227$unknown:53|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:51|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:42|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:41|
  ( Int Int ) Bool
)

(declare-fun |omega_without_checking_1227$unknown:52|
  ( Int ) Bool
)

(declare-fun |id_1030$unknown:40|
  ( Int ) Bool
)

(declare-fun |f_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:36|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:35|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:34|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:22|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:21|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:11|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:10|
  ( Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:25| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$cond-alpha-rename:3| Int) (|$V-reftype:24| Int) (|$knormal:92| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:102| Int) (|$knormal:107| Int) (|$knormal:99| Int) (|$knormal:94| Int) (|$V-reftype:22| Int) (|$knormal:130| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:102| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$V-reftype:25| |$cond-alpha-rename:3|) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:22| |$V-reftype:22| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:21| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|app_1038$unknown:9| |$cond-alpha-rename:3| |$V-reftype:24| |$V-reftype:22| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$V-reftype:22| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:10| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) )
      (|f_1034$unknown:24| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$cond-alpha-rename:52| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$knormal:142| Int) (|$knormal:147| Int) (|$V-reftype:22| Int) (|$knormal:110| Int) (|$knormal:115| Int) (|$knormal:122| Int) (|$knormal:118| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:108| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:4| Int) (|$knormal:150| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:139| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:67| Int) )
    (=>
      ( and (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) (= |$V-reftype:25| |$cond-alpha-rename:4|) (|f_1034$unknown:36| |$cond-alpha-rename:67| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:36| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$cond-alpha-rename:51| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:34| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|app_1038$unknown:9| |$cond-alpha-rename:4| |$V-reftype:24| |$V-reftype:22| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$V-reftype:22| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:10| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) )
      (|f_1034$unknown:33| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$cond-alpha-rename:5| Int) (|$V-reftype:24| Int) (|$knormal:29| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:39| Int) (|$knormal:43| Int) (|$knormal:36| Int) (|$knormal:31| Int) (|$V-reftype:22| Int) (|$knormal:66| Int) (|$knormal:61| Int) )
    (=>
      ( and (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$V-reftype:25| |$cond-alpha-rename:5|) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:22| |$V-reftype:22| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:21| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|app_1038$unknown:9| |$cond-alpha-rename:5| |$V-reftype:24| |$V-reftype:22| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$V-reftype:22| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:10| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) )
      (|f_1034$unknown:24| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$cond-alpha-rename:54| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$V-reftype:22| Int) (|$knormal:46| Int) (|$knormal:51| Int) (|$knormal:58| Int) (|$knormal:54| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:6| Int) (|$knormal:86| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:68| Int) )
    (=>
      ( and (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (= |$V-reftype:25| |$cond-alpha-rename:6|) (|f_1034$unknown:36| |$cond-alpha-rename:68| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:36| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$cond-alpha-rename:53| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:34| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|app_1038$unknown:9| |$cond-alpha-rename:6| |$V-reftype:24| |$V-reftype:22| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$V-reftype:22| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:10| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) )
      (|f_1034$unknown:33| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Int) (|$knormal:78| Int) (|$knormal:69| Int) (|$knormal:61| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$cond-alpha-rename:7| Int) (|$knormal:94| Int) (|$knormal:99| Int) (|$V-reftype:11| Int) (|$knormal:102| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:92| Int) (|$cond-alpha-rename:8| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:59| Int) (|$knormal:66| Int) (|$knormal:75| Int) (|$knormal:83| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:102| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (|app_1038$unknown:12| |$cond-alpha-rename:8| |$cond-alpha-rename:7| |$V-reftype:11| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$cond-alpha-rename:7| |$V-reftype:11| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:10| |$V-reftype:11| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) )
      (|f_1034$unknown:34| |$V-reftype:11| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:9| Int) (|$knormal:110| Int) (|$knormal:115| Int) (|$V-reftype:11| Int) (|$knormal:118| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:108| Int) (|$cond-alpha-rename:10| Int) )
    (=>
      ( and (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (|app_1038$unknown:12| |$cond-alpha-rename:10| |$cond-alpha-rename:9| |$V-reftype:11| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$cond-alpha-rename:9| |$V-reftype:11| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:10| |$V-reftype:11| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) )
      (|id_1030$unknown:40| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:11| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$V-reftype:11| Int) (|$knormal:39| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:29| Int) (|$cond-alpha-rename:12| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (|app_1038$unknown:12| |$cond-alpha-rename:12| |$cond-alpha-rename:11| |$V-reftype:11| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$cond-alpha-rename:11| |$V-reftype:11| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:10| |$V-reftype:11| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) )
      (|id_1030$unknown:40| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:13| Int) (|$knormal:46| Int) (|$knormal:51| Int) (|$V-reftype:11| Int) (|$knormal:54| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$cond-alpha-rename:14| Int) )
    (=>
      ( and (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (|app_1038$unknown:12| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |$V-reftype:11| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$cond-alpha-rename:13| |$V-reftype:11| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:10| |$V-reftype:11| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) )
      (|omega_without_checking_1227$unknown:52| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:83| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:16| Int) (|$V-reftype:13| Int) (|$knormal:94| Int) (|$knormal:99| Int) (|$knormal:91| Int) (|$knormal:102| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:92| Int) (|$cond-alpha-rename:15| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:61| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:102| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (|app_1038$unknown:12| |$cond-alpha-rename:39| |$V-reftype:13| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$cond-alpha-rename:15| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$V-reftype:13| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:10| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) )
      (|f_1034$unknown:35| |$V-reftype:13| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Int) (|$knormal:78| Int) (|$knormal:69| Int) (|$knormal:61| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$cond-alpha-rename:17| Int) (|$knormal:92| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:102| Int) (|$knormal:91| Int) (|$knormal:99| Int) (|$knormal:94| Int) (|$V-reftype:68| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:40| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:59| Int) (|$knormal:66| Int) (|$knormal:75| Int) (|$knormal:83| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:102| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (|app_1038$unknown:12| |$cond-alpha-rename:40| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$cond-alpha-rename:17| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:10| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) )
      (|f_1034$unknown:36| |$V-reftype:15| |$V-reftype:68| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|)
    )
  )
)
(assert
  (forall ( (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$cond-alpha-rename:19| Int) (|$knormal:92| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:102| Int) (|$knormal:91| Int) (|$knormal:99| Int) (|$knormal:94| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:73| Int) (|$knormal:86| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$V-reftype:71| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:102| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (= |$V-reftype:71| |$cond-alpha-rename:73|) (|f_1034$unknown:36| |$V-reftype:70| |$V-reftype:68| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$V-reftype:68| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:34| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:33| |$cond-alpha-rename:73| |$V-reftype:70| |$V-reftype:68| |$knormal:91| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|app_1038$unknown:12| |$cond-alpha-rename:41| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$cond-alpha-rename:19| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:11| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) (|app_1038$unknown:10| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|) )
      (|app_1038$unknown:9| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$knormal:91| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:22| Int) (|$V-reftype:13| Int) (|$knormal:110| Int) (|$knormal:115| Int) (|id_1030| Int) (|$knormal:118| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:108| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (|app_1038$unknown:12| |$cond-alpha-rename:42| |$V-reftype:13| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$cond-alpha-rename:21| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$V-reftype:13| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:10| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) )
      (|id_1030$unknown:41| |$V-reftype:13| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:23| Int) (|$knormal:108| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:118| Int) (|id_1030| Int) (|$knormal:115| Int) (|$knormal:110| Int) (|$V-reftype:78| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:43| Int) )
    (=>
      ( and (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (|app_1038$unknown:12| |$cond-alpha-rename:43| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$cond-alpha-rename:23| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:10| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) )
      (|id_1030$unknown:42| |$V-reftype:15| |$V-reftype:78| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:25| Int) (|$knormal:108| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:118| Int) (|id_1030| Int) (|$knormal:115| Int) (|$knormal:110| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:44| Int) (|$V-reftype:81| Int) )
    (=>
      ( and (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (= |$V-reftype:81| |$V-reftype:80|) (|id_1030$unknown:42| |$V-reftype:80| |$V-reftype:78| |id_1030|) (|id_1030$unknown:41| |$V-reftype:78| |id_1030|) (|id_1030$unknown:40| |id_1030|) (|app_1038$unknown:12| |$cond-alpha-rename:44| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$cond-alpha-rename:25| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:11| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) (|app_1038$unknown:10| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|) )
      (|app_1038$unknown:9| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:28| Int) (|$V-reftype:13| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|id_1030| Int) (|$knormal:39| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:29| Int) (|$cond-alpha-rename:27| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (|app_1038$unknown:12| |$cond-alpha-rename:45| |$V-reftype:13| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$cond-alpha-rename:27| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$V-reftype:13| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:10| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) )
      (|id_1030$unknown:41| |$V-reftype:13| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:29| Int) (|$knormal:29| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:39| Int) (|id_1030| Int) (|$knormal:36| Int) (|$knormal:31| Int) (|$V-reftype:78| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:46| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (|app_1038$unknown:12| |$cond-alpha-rename:46| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$cond-alpha-rename:29| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:10| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) )
      (|id_1030$unknown:42| |$V-reftype:15| |$V-reftype:78| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:31| Int) (|$knormal:29| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:39| Int) (|id_1030| Int) (|$knormal:36| Int) (|$knormal:31| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:47| Int) (|$V-reftype:81| Int) )
    (=>
      ( and (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (= |$V-reftype:81| |$V-reftype:80|) (|id_1030$unknown:42| |$V-reftype:80| |$V-reftype:78| |id_1030|) (|id_1030$unknown:41| |$V-reftype:78| |id_1030|) (|id_1030$unknown:40| |id_1030|) (|app_1038$unknown:12| |$cond-alpha-rename:47| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$cond-alpha-rename:31| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:11| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) (|app_1038$unknown:10| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|) )
      (|app_1038$unknown:9| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |id_1030| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:34| Int) (|$V-reftype:105| Int) (|$V-reftype:103| Int) (|$knormal:46| Int) (|$knormal:51| Int) (|omega_without_checking_1227| Int) (|$knormal:54| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:116| Int) )
    (=>
      ( and (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$cond-alpha-rename:116| 1) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (= |$V-reftype:106| |$cond-alpha-rename:117|) (|omega_without_checking_1227$unknown:54| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227|) (|omega_without_checking_1227$unknown:53| |$V-reftype:103| |omega_without_checking_1227|) (|omega_without_checking_1227$unknown:52| |omega_without_checking_1227|) (|omega_1032$unknown:51| |$cond-alpha-rename:117| |$V-reftype:105| |$V-reftype:105| |$cond-alpha-rename:116|) (|app_1038$unknown:12| |$cond-alpha-rename:48| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$cond-alpha-rename:33| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:10| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) )
      (|app_1038$unknown:9| |$V-reftype:106| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:35| Int) (|$knormal:44| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:54| Int) (|omega_without_checking_1227| Int) (|$knormal:51| Int) (|$knormal:46| Int) (|$V-reftype:103| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:49| Int) )
    (=>
      ( and (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (|app_1038$unknown:12| |$cond-alpha-rename:49| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$cond-alpha-rename:35| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$V-reftype:103| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:10| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) )
      (|omega_without_checking_1227$unknown:54| |$V-reftype:15| |$V-reftype:103| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:38| Int) (|$V-reftype:13| Int) (|$knormal:46| Int) (|$knormal:51| Int) (|omega_without_checking_1227| Int) (|$knormal:54| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$cond-alpha-rename:37| Int) )
    (=>
      ( and (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (|app_1038$unknown:12| |$cond-alpha-rename:50| |$V-reftype:13| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:12| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$cond-alpha-rename:37| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:11| |$V-reftype:13| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) (|app_1038$unknown:10| |omega_without_checking_1227| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|) )
      (|omega_without_checking_1227$unknown:53| |$V-reftype:13| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:108| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:108| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) (|bot$unknown:14| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:15| |$V-reftype:108| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:14| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:14| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:119| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-9:x_1033| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$V-reftype:113| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:7| |$cond-alpha-rename:119|) (= |$knormal:10| 1) (= |$cond-alpha-rename:118| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:85|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:85|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (= |$V-reftype:113| |$knormal:7|) (not (= |$alpha-7:prev_set_flag_omega_1195| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77|) (|omega_without_checking_1227$unknown:54| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:78| |$cond-alpha-rename:77|) (|omega_without_checking_1227$unknown:53| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:83|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:77|) (|omega_without_checking_1227$unknown:52| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:51| |$cond-alpha-rename:119| |$alpha-9:x_1033| |$alpha-9:x_1033| |$cond-alpha-rename:118|) (|omega_1032$unknown:46| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:45| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:44| |$alpha-7:prev_set_flag_omega_1195|) (|fail$unknown:39| |$knormal:11| |$knormal:10|) (|bot$unknown:15| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:51| |$V-reftype:113| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$cond-alpha-rename:86| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:88|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:88|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (not (= |$alpha-7:prev_set_flag_omega_1195| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:86|) (|fail$unknown:39| |$knormal:11| |$knormal:10|) (|bot$unknown:15| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:44| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:90| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:11| Int) (|$cond-alpha-rename:89| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:91|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:91|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (not (= |$alpha-7:prev_set_flag_omega_1195| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:90| |$cond-alpha-rename:89|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:89|) (|fail$unknown:39| |$knormal:11| |$knormal:10|) (|bot$unknown:15| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:45| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$cond-alpha-rename:92| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:94|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:94|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (not (= |$alpha-7:prev_set_flag_omega_1195| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$cond-alpha-rename:92|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:93| |$cond-alpha-rename:92|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:92|) (|fail$unknown:39| |$knormal:11| |$knormal:10|) (|bot$unknown:15| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:46| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$knormal:99| Int) (|$knormal:92| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$V-reftype:39| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:102| Int) (|$knormal:94| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:102| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (|f_1034$unknown:21| |$V-reftype:39| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:10| |$V-reftype:39| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:31| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$V-reftype:39| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$knormal:29| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (|f_1034$unknown:21| |$V-reftype:39| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:10| |$V-reftype:39| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$knormal:99| Int) (|$knormal:92| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$V-reftype:22| Int) (|$knormal:125| Int) (|$knormal:130| Int) (|$knormal:107| Int) (|$knormal:133| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:123| Int) (|$V-reftype:43| Int) (|$knormal:102| Int) (|$knormal:94| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:102| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:22| |$V-reftype:22| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:21| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|)
    )
  )
)
(assert
  (forall ( (|$knormal:94| Int) (|$knormal:102| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$knormal:107| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$V-reftype:41| Int) (|$alpha-45:c4_COEFFICIENT_1123| Int) (|$knormal:92| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:94| 0) (= |$knormal:92| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:102| 0) (= |$alpha-45:c4_COEFFICIENT_1123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (|f_1034$unknown:22| |$V-reftype:41| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:21| |$knormal:107| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:11| |$V-reftype:41| |$knormal:107| |$knormal:102| |$knormal:99| |$alpha-45:c4_COEFFICIENT_1123| |$knormal:94| |$knormal:92|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:31| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$V-reftype:22| Int) (|$knormal:61| Int) (|$knormal:66| Int) (|$knormal:43| Int) (|$knormal:69| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:59| Int) (|$V-reftype:43| Int) (|$knormal:29| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:22| |$V-reftype:22| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:21| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$knormal:29| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$V-reftype:41| Int) (|$alpha-49:c0_COEFFICIENT_1115| Int) (|$knormal:31| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:39| 0) (= |$knormal:36| 0) (= |$knormal:31| 0) (= |$knormal:29| 0) (= |$alpha-49:c0_COEFFICIENT_1115| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (|f_1034$unknown:22| |$V-reftype:41| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:21| |$knormal:43| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:11| |$V-reftype:41| |$knormal:43| |$knormal:39| |$knormal:36| |$alpha-49:c0_COEFFICIENT_1115| |$knormal:31| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$knormal:118| Int) (|$knormal:110| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$knormal:142| Int) (|$knormal:147| Int) (|$V-reftype:57| Int) (|$knormal:150| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:139| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:108| Int) (|$knormal:115| Int) )
    (=>
      ( and (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:36| |$cond-alpha-rename:56| |$cond-alpha-rename:55| |$V-reftype:57| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$cond-alpha-rename:55| |$V-reftype:57| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:34| |$V-reftype:57| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:10| |$V-reftype:57| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:46| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$V-reftype:57| Int) (|$knormal:86| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (|f_1034$unknown:36| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$V-reftype:57| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$cond-alpha-rename:57| |$V-reftype:57| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:34| |$V-reftype:57| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:10| |$V-reftype:57| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|)
    )
  )
)
(assert
  (forall ( (|$knormal:118| Int) (|$knormal:110| Int) (|$cond-alpha-rename:60| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$knormal:142| Int) (|$knormal:147| Int) (|$knormal:122| Int) (|$knormal:150| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:139| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$V-reftype:22| Int) (|$cond-alpha-rename:59| Int) (|$V-reftype:61| Int) (|$cond-alpha-rename:69| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$knormal:108| Int) (|$knormal:115| Int) )
    (=>
      ( and (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:36| |$cond-alpha-rename:69| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:36| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$cond-alpha-rename:59| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$V-reftype:22| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:34| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:115| Int) (|$knormal:108| Int) (|$alpha-43:c6_COEFFICIENT_1126| Int) (|$cond-alpha-rename:70| Int) (|$knormal:123| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$knormal:133| Int) (|$knormal:142| Int) (|$knormal:147| Int) (|$knormal:122| Int) (|$knormal:150| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:139| Int) (|$knormal:130| Int) (|$knormal:125| Int) (|$V-reftype:59| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) (|$knormal:110| Int) (|$knormal:118| Int) )
    (=>
      ( and (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$knormal:118| 0) (= |$knormal:115| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-43:c6_COEFFICIENT_1126| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) (|f_1034$unknown:36| |$cond-alpha-rename:70| |$V-reftype:59| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:36| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$cond-alpha-rename:61| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:35| |$V-reftype:59| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) (|f_1034$unknown:34| |$knormal:122| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|) )
      (|app_1038$unknown:11| |$V-reftype:59| |$knormal:122| |$knormal:118| |$knormal:115| |$alpha-43:c6_COEFFICIENT_1126| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:46| Int) (|$cond-alpha-rename:64| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$knormal:58| Int) (|$knormal:86| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$V-reftype:22| Int) (|$cond-alpha-rename:63| Int) (|$V-reftype:61| Int) (|$cond-alpha-rename:71| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$knormal:44| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (|f_1034$unknown:36| |$cond-alpha-rename:71| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:36| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$cond-alpha-rename:63| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$V-reftype:22| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:34| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$knormal:44| Int) (|$alpha-47:c2_COEFFICIENT_1118| Int) (|$cond-alpha-rename:72| Int) (|$knormal:59| Int) (|$alpha-48:c1_COEFFICIENT_1117| Int) (|$knormal:69| Int) (|$knormal:78| Int) (|$knormal:83| Int) (|$knormal:58| Int) (|$knormal:86| Int) (|$alpha-46:c3_COEFFICIENT_1120| Int) (|$knormal:75| Int) (|$knormal:66| Int) (|$knormal:61| Int) (|$V-reftype:59| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$knormal:46| Int) (|$knormal:54| Int) )
    (=>
      ( and (= |$knormal:86| 0) (= |$knormal:83| 0) (= |$knormal:78| 0) (= |$knormal:75| 0) (= |$knormal:69| 0) (= |$knormal:66| 0) (= |$knormal:61| 0) (= |$knormal:59| 0) (= |$knormal:54| 0) (= |$knormal:51| 0) (= |$knormal:46| 0) (= |$knormal:44| 0) (= |$alpha-48:c1_COEFFICIENT_1117| 0) (= |$alpha-47:c2_COEFFICIENT_1118| 0) (= |$alpha-46:c3_COEFFICIENT_1120| 0) (|f_1034$unknown:36| |$cond-alpha-rename:72| |$V-reftype:59| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:36| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$cond-alpha-rename:65| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:35| |$V-reftype:59| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) (|f_1034$unknown:34| |$knormal:58| |$knormal:86| |$knormal:83| |$alpha-46:c3_COEFFICIENT_1120| |$knormal:78| |$knormal:75| |$knormal:69| |$knormal:66| |$alpha-48:c1_COEFFICIENT_1117| |$knormal:61| |$knormal:59|) )
      (|app_1038$unknown:11| |$V-reftype:59| |$knormal:58| |$knormal:54| |$knormal:51| |$alpha-47:c2_COEFFICIENT_1118| |$knormal:46| |$knormal:44|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) )
    ( and (= |$cond-alpha-rename:76| |$cond-alpha-rename:97|) (= |$cond-alpha-rename:75| |$cond-alpha-rename:97|) (= |$cond-alpha-rename:74| 1) (= |$alpha-2:$$tmp::2| 1) (not (= |$cond-alpha-rename:74| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:97| |$cond-alpha-rename:96| |$cond-alpha-rename:95|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:96| |$cond-alpha-rename:95|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:95|) )
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$cond-alpha-rename:98| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:100| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:100|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:100|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (not (= |$alpha-7:prev_set_flag_omega_1195| 0)) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:98|) (|fail$unknown:39| |$knormal:11| |$knormal:10|) )
      (|bot$unknown:14| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1196| Int) (|$V-reftype:85| Int) (|$alpha-13:s_omega_x_1193| Int) (|$alpha-14:x_1033| Int) )
    (=>
      ( and (|omega_without_checking_1227$unknown:54| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:53| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:52| |$alpha-12:set_flag_omega_1196|) (|omega_1032$unknown:44| |$V-reftype:85|) )
      (|omega_without_checking_1227$unknown:52| |$V-reftype:85|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1196| Int) (|omega_without_checking_1227| Int) (|$V-reftype:103| Int) (|$V-reftype:89| Int) (|$alpha-13:s_omega_x_1193| Int) (|$alpha-14:x_1033| Int) )
    (=>
      ( and (|omega_without_checking_1227$unknown:54| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:53| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:52| |$alpha-12:set_flag_omega_1196|) (|omega_1032$unknown:46| |$V-reftype:89| |$V-reftype:103| |omega_without_checking_1227|) (|omega_1032$unknown:45| |$V-reftype:103| |omega_without_checking_1227|) (|omega_1032$unknown:44| |omega_without_checking_1227|) )
      (|omega_without_checking_1227$unknown:54| |$V-reftype:89| |$V-reftype:103| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_1033| Int) (|$alpha-13:s_omega_x_1193| Int) (|omega_without_checking_1227| Int) (|$V-reftype:87| Int) (|$alpha-12:set_flag_omega_1196| Int) )
    (=>
      ( and (|omega_without_checking_1227$unknown:54| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:53| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) (|omega_without_checking_1227$unknown:52| |$alpha-12:set_flag_omega_1196|) (|omega_1032$unknown:45| |$V-reftype:87| |omega_without_checking_1227|) (|omega_1032$unknown:44| |omega_without_checking_1227|) )
      (|omega_without_checking_1227$unknown:53| |$V-reftype:87| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:121| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-9:x_1033| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$V-reftype:115| Int) )
    (=>
      ( and (= |$knormal:7| |$cond-alpha-rename:121|) (= |$cond-alpha-rename:120| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:103|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:103|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (= |$V-reftype:115| |$knormal:7|) (= |$alpha-7:prev_set_flag_omega_1195| 0) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (|omega_without_checking_1227$unknown:54| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (|omega_without_checking_1227$unknown:53| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:80|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:101|) (|omega_without_checking_1227$unknown:52| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:51| |$cond-alpha-rename:121| |$alpha-9:x_1033| |$alpha-9:x_1033| |$cond-alpha-rename:120|) (|omega_1032$unknown:46| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:45| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|) (|omega_1032$unknown:44| |$alpha-7:prev_set_flag_omega_1195|) )
      (|omega_1032$unknown:51| |$V-reftype:115| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:106|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:106|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (= |$alpha-7:prev_set_flag_omega_1195| 0) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:104|) )
      (|omega_1032$unknown:44| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:107| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:109|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:109|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (= |$alpha-7:prev_set_flag_omega_1195| 0) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:107|) )
      (|omega_1032$unknown:45| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1194| Int) (|$alpha-7:prev_set_flag_omega_1195| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:112| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:112|) (= |$alpha-8:s_prev_omega_x_1194| |$cond-alpha-rename:112|) (= |$alpha-7:prev_set_flag_omega_1195| 1) (= |$alpha-7:prev_set_flag_omega_1195| 0) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:112| |$cond-alpha-rename:111| |$cond-alpha-rename:110|) (|omega_without_checking_1227$unknown:53| |$cond-alpha-rename:111| |$cond-alpha-rename:110|) (|omega_without_checking_1227$unknown:52| |$cond-alpha-rename:110|) )
      (|omega_1032$unknown:46| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1194| |$alpha-7:prev_set_flag_omega_1195|)
    )
  )
)
(assert
  (forall ( (|$knormal:150| Int) (|$knormal:142| Int) (|$knormal:133| Int) (|$knormal:125| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:123| Int) (|$knormal:130| Int) (|$knormal:139| Int) (|$knormal:147| Int) (|$knormal:156| Int) )
    (=>
      ( and (= |$knormal:156| 0) (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) )
      (|f_1034$unknown:34| |$knormal:156| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|)
    )
  )
)
(assert
  (forall ( (|$knormal:159| Int) (|$knormal:150| Int) (|$knormal:142| Int) (|$knormal:133| Int) (|$knormal:125| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:123| Int) (|$knormal:130| Int) (|$knormal:139| Int) (|$knormal:147| Int) (|$knormal:156| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$knormal:156| 0) (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) )
      (|f_1034$unknown:35| |$knormal:159| |$knormal:156| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|)
    )
  )
)
(assert
  (forall ( (|$knormal:159| Int) (|$knormal:150| Int) (|$knormal:142| Int) (|$knormal:133| Int) (|$knormal:125| Int) (|$alpha-44:c5_COEFFICIENT_1125| Int) (|$alpha-42:c7_COEFFICIENT_1128| Int) (|$knormal:123| Int) (|$knormal:130| Int) (|$knormal:139| Int) (|$knormal:147| Int) (|$knormal:156| Int) (|$knormal:162| Int) )
    (=>
      ( and (= |$knormal:162| 1) (= |$knormal:159| 0) (= |$knormal:156| 0) (= |$knormal:150| 0) (= |$knormal:147| 0) (= |$knormal:142| 0) (= |$knormal:139| 0) (= |$knormal:133| 0) (= |$knormal:130| 0) (= |$knormal:125| 0) (= |$knormal:123| 0) (= |$alpha-44:c5_COEFFICIENT_1125| 0) (= |$alpha-42:c7_COEFFICIENT_1128| 0) )
      (|f_1034$unknown:36| |$knormal:162| |$knormal:159| |$knormal:156| |$knormal:150| |$knormal:147| |$alpha-42:c7_COEFFICIENT_1128| |$knormal:142| |$knormal:139| |$knormal:133| |$knormal:130| |$alpha-44:c5_COEFFICIENT_1125| |$knormal:125| |$knormal:123|)
    )
  )
)
(check-sat)
