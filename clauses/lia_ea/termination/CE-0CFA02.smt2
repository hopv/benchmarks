(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_omega_1141 s_omega_x_1138 x_1031 = x_1031
  
     let rec omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033 =
       let set_flag_omega_1141 = true
       in
       let s_omega_x_1138 = x_1033
       in
         omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033
  
     let rec omega_1032 prev_set_flag_omega_1140 s_prev_omega_x_1139 x_1033 =
       let u = if prev_set_flag_omega_1140 then
                let u_3120 = fail ()
                in
                  bot()
               else () in
              omega_without_checking_1162 prev_set_flag_omega_1140
                s_prev_omega_x_1139 x_1033
  
     let f_1034 x_DO_NOT_CARE_1245 x_DO_NOT_CARE_1246 x_EXPARAM_1092 x_DO_NOT_CARE_1243 x_DO_NOT_CARE_1244 x_1035 x_DO_NOT_CARE_1241 x_DO_NOT_CARE_1242 y_EXPARAM_1093 x_DO_NOT_CARE_1239 x_DO_NOT_CARE_1240 y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037 =
       y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037
  
     let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_1032) false 0 c3_COEFFICIENT_1089
         false 0 id_1030 false 0 1
")

(set-logic HORN)

(declare-fun |fail$unknown:25|
  ( Int ) Bool
)

(declare-fun |f_1034$unknown:19|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:75| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:75| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:82| Int) (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (= |$V-reftype:82| |$knormal:12|) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_without_checking_1162$unknown:38| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:16| |$knormal:15|) (|bot$unknown:2| |$knormal:14| |$knormal:13|) )
      (|omega_1032$unknown:34| |$V-reftype:82| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:16| |$knormal:15|) (|bot$unknown:2| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:16| |$knormal:15|) (|bot$unknown:2| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:16| |$knormal:15|) (|bot$unknown:2| |$knormal:14| |$knormal:13|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:52| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|) )
      (|f_1034$unknown:23| |$V-reftype:18| |$V-reftype:43| |$knormal:52| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:53| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:53| |id_1030| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:24| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$knormal:52| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) (|f_1034$unknown:10| |$V-reftype:45| |$V-reftype:43| |$knormal:52| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|) )
      (|f_1034$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$knormal:52| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|id_1030$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030|) true true (|f_1034$unknown:10| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) )
      (|f_1034$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$alpha-16:x_DO_NOT_CARE_1245| Int) (|$alpha-17:x_DO_NOT_CARE_1246| Int) (|$alpha-18:x_EXPARAM_1092| Int) (|$alpha-19:x_DO_NOT_CARE_1243| Int) (|$alpha-20:x_DO_NOT_CARE_1244| Int) (|$alpha-22:x_DO_NOT_CARE_1241| Int) (|$alpha-23:x_DO_NOT_CARE_1242| Int) (|$alpha-24:y_EXPARAM_1093| Int) (|$alpha-25:x_DO_NOT_CARE_1239| Int) (|$alpha-26:x_DO_NOT_CARE_1240| Int) (|$alpha-28:set_flag_omega_1141| Int) (|$alpha-29:s_omega_x_1138| Int) (|$alpha-30:z_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$V-reftype:85| |$knormal:21|) true true true true true (|f_1034$unknown:23| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|) true true (|f_1034$unknown:20| |$knormal:21| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|) true true true true true )
      (|f_1034$unknown:24| |$V-reftype:85| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1245| Int) (|$alpha-17:x_DO_NOT_CARE_1246| Int) (|$alpha-18:x_EXPARAM_1092| Int) (|$alpha-19:x_DO_NOT_CARE_1243| Int) (|$alpha-20:x_DO_NOT_CARE_1244| Int) (|$alpha-22:x_DO_NOT_CARE_1241| Int) (|$alpha-23:x_DO_NOT_CARE_1242| Int) (|$alpha-24:y_EXPARAM_1093| Int) (|$alpha-25:x_DO_NOT_CARE_1239| Int) (|$alpha-26:x_DO_NOT_CARE_1240| Int) (|$alpha-28:set_flag_omega_1141| Int) (|$alpha-29:s_omega_x_1138| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1245| Int) (|$alpha-17:x_DO_NOT_CARE_1246| Int) (|$alpha-18:x_EXPARAM_1092| Int) (|$alpha-19:x_DO_NOT_CARE_1243| Int) (|$alpha-20:x_DO_NOT_CARE_1244| Int) (|$alpha-22:x_DO_NOT_CARE_1241| Int) (|$alpha-23:x_DO_NOT_CARE_1242| Int) (|$alpha-24:y_EXPARAM_1093| Int) (|$alpha-25:x_DO_NOT_CARE_1239| Int) (|$alpha-26:x_DO_NOT_CARE_1240| Int) (|$alpha-28:set_flag_omega_1141| Int) (|$alpha-29:s_omega_x_1138| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1245| Int) (|$alpha-17:x_DO_NOT_CARE_1246| Int) (|$alpha-18:x_EXPARAM_1092| Int) (|$alpha-19:x_DO_NOT_CARE_1243| Int) (|$alpha-20:x_DO_NOT_CARE_1244| Int) (|$alpha-22:x_DO_NOT_CARE_1241| Int) (|$alpha-23:x_DO_NOT_CARE_1242| Int) (|$alpha-24:y_EXPARAM_1093| Int) (|$alpha-25:x_DO_NOT_CARE_1239| Int) (|$alpha-26:x_DO_NOT_CARE_1240| Int) (|$alpha-28:set_flag_omega_1141| Int) (|$alpha-29:s_omega_x_1138| Int) (|$alpha-30:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|) true true true true true true true )
      (|f_1034$unknown:19| |$alpha-30:z_1037| |$alpha-29:s_omega_x_1138| |$alpha-28:set_flag_omega_1141| |$alpha-26:x_DO_NOT_CARE_1240| |$alpha-25:x_DO_NOT_CARE_1239| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1242| |$alpha-22:x_DO_NOT_CARE_1241| |$alpha-20:x_DO_NOT_CARE_1244| |$alpha-19:x_DO_NOT_CARE_1243| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1246| |$alpha-16:x_DO_NOT_CARE_1245|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:53| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:19| |$V-reftype:36| |$V-reftype:53| |id_1030| |$knormal:80| |$knormal:77| |$alpha-32:c3_COEFFICIENT_1089| |$knormal:72| |$knormal:69| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|id_1030$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030|) (|f_1034$unknown:19| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:80| |$knormal:77| |$alpha-32:c3_COEFFICIENT_1089| |$knormal:72| |$knormal:69| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|) true true )
      (|f_1034$unknown:20| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:80| |$knormal:77| |$alpha-32:c3_COEFFICIENT_1089| |$knormal:72| |$knormal:69| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:63| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|omega_1032| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:19| |$V-reftype:36| |$V-reftype:63| |omega_1032| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) true true )
      (|omega_1032$unknown:33| |$V-reftype:36| |$V-reftype:63| |omega_1032|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|omega_1032| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|omega_1032$unknown:34| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |omega_1032|) (|f_1034$unknown:19| |$V-reftype:65| |$V-reftype:63| |omega_1032| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) true true )
      (|f_1034$unknown:20| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |omega_1032| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:25| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:15| 1) (= |$knormal:13| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:16| |$knormal:15|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:77| Int) (|$alpha-3:set_flag_omega_1141| Int) (|$alpha-4:s_omega_x_1138| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:77| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:30| |$V-reftype:77| |$alpha-5:x_1031| |$alpha-4:s_omega_x_1138| |$alpha-3:set_flag_omega_1141|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:84| Int) (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$V-reftype:84| |$knormal:12|) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1140|))) (|omega_without_checking_1162$unknown:38| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true )
      (|omega_1032$unknown:34| |$V-reftype:84| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true )
      (|fail$unknown:25| |$knormal:15|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1140|))) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1140|))) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_omega_1140|))) (|omega_1032$unknown:33| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:79| Int) (|$alpha-6:set_flag_omega_1141| Int) (|$alpha-7:s_omega_x_1138| Int) (|$alpha-8:x_1033| Int) (|$alpha-9:set_flag_omega_1141| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1141| 1) (= |$V-reftype:79| |$knormal:7|) (|omega_without_checking_1162$unknown:38| |$knormal:7| |$alpha-8:x_1033| |$alpha-8:x_1033| |$alpha-9:set_flag_omega_1141|) true true true )
      (|omega_without_checking_1162$unknown:38| |$V-reftype:79| |$alpha-8:x_1033| |$alpha-7:s_omega_x_1138| |$alpha-6:set_flag_omega_1141|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1141| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1141| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-9:set_flag_omega_1141| 1) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      (|f_1034$unknown:23| |$knormal:91| |$knormal:88| |$knormal:85| |$knormal:80| |$knormal:77| |$alpha-32:c3_COEFFICIENT_1089| |$knormal:72| |$knormal:69| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

