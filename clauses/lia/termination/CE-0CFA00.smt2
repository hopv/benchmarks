(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
  
     let rec id_without_checking_1126 set_flag_id_1099 s_id_x_1096 x_1031 =
       let set_flag_id_1099 = true
       in
       let s_id_x_1096 = x_1031
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1098 s_prev_id_x_1097 x_1031 =
       let u = if prev_set_flag_id_1098 then
                let u_1278 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1126 prev_set_flag_id_1098 s_prev_id_x_1097
                x_1031
  
     let rec omega_1032 set_flag_id_1099 s_id_x_1096 x_1033 =
       omega_1032 set_flag_id_1099 s_id_x_1096 x_1033
  
     let f_1034 x_DO_NOT_CARE_1237 x_DO_NOT_CARE_1238 x_EXPARAM_1092 x_DO_NOT_CARE_1235 x_DO_NOT_CARE_1236 x_1035 x_DO_NOT_CARE_1233 x_DO_NOT_CARE_1234 y_EXPARAM_1093 x_DO_NOT_CARE_1231 x_DO_NOT_CARE_1232 y_1036 set_flag_id_1099 s_id_x_1096 z_1037 =
       y_1036 set_flag_id_1099 s_id_x_1096 z_1037
  
  let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_1032) false 0 c3_COEFFICIENT_1089
         false 0 id_without_checking_1126 false 0 1
")

(set-logic HORN)

(declare-fun |fail$unknown:25|
  ( Int ) Bool
)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_without_checking_1126$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:29|
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
  (forall ( (|$V-reftype:81| Int) (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$V-reftype:81| |$knormal:7|) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_without_checking_1126$unknown:34| |$knormal:7| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|id_1030$unknown:30| |$V-reftype:81| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:52| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:53| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:53| |id_1030| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|) )
      (|id_1030$unknown:29| |$V-reftype:18| |$V-reftype:53| |id_1030|)
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
  (forall ( (|$V-reftype:85| Int) (|$alpha-16:x_DO_NOT_CARE_1237| Int) (|$alpha-17:x_DO_NOT_CARE_1238| Int) (|$alpha-18:x_EXPARAM_1092| Int) (|$alpha-19:x_DO_NOT_CARE_1235| Int) (|$alpha-20:x_DO_NOT_CARE_1236| Int) (|$alpha-22:x_DO_NOT_CARE_1233| Int) (|$alpha-23:x_DO_NOT_CARE_1234| Int) (|$alpha-24:y_EXPARAM_1093| Int) (|$alpha-25:x_DO_NOT_CARE_1231| Int) (|$alpha-26:x_DO_NOT_CARE_1232| Int) (|$alpha-28:set_flag_id_1099| Int) (|$alpha-29:s_id_x_1096| Int) (|$alpha-30:z_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$V-reftype:85| |$knormal:21|) true true true true true true true true (|f_1034$unknown:20| |$knormal:21| |$alpha-30:z_1037| |$alpha-29:s_id_x_1096| |$alpha-28:set_flag_id_1099| |$alpha-26:x_DO_NOT_CARE_1232| |$alpha-25:x_DO_NOT_CARE_1231| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1234| |$alpha-22:x_DO_NOT_CARE_1233| |$alpha-20:x_DO_NOT_CARE_1236| |$alpha-19:x_DO_NOT_CARE_1235| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1238| |$alpha-16:x_DO_NOT_CARE_1237|) true true true true true )
      (|f_1034$unknown:24| |$V-reftype:85| |$alpha-30:z_1037| |$alpha-29:s_id_x_1096| |$alpha-28:set_flag_id_1099| |$alpha-26:x_DO_NOT_CARE_1232| |$alpha-25:x_DO_NOT_CARE_1231| |$alpha-24:y_EXPARAM_1093| |$alpha-23:x_DO_NOT_CARE_1234| |$alpha-22:x_DO_NOT_CARE_1233| |$alpha-20:x_DO_NOT_CARE_1236| |$alpha-19:x_DO_NOT_CARE_1235| |$alpha-18:x_EXPARAM_1092| |$alpha-17:x_DO_NOT_CARE_1238| |$alpha-16:x_DO_NOT_CARE_1237|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true true true )
      true
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
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$V-reftype:62| Int) (|$V-reftype:63| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:60| Int) (|$knormal:63| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|id_without_checking_1126| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:63| 0) (= |$knormal:60| 0) (= |$knormal:55| 0) (= |$knormal:53| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|id_without_checking_1126$unknown:34| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |id_without_checking_1126|) true true true )
      (|f_1034$unknown:20| |$V-reftype:63| |$V-reftype:62| |$V-reftype:60| |id_without_checking_1126| |$knormal:80| |$knormal:77| |$alpha-32:c3_COEFFICIENT_1089| |$knormal:72| |$knormal:69| |$knormal:63| |$knormal:60| |$alpha-33:c2_COEFFICIENT_1088| |$knormal:55| |$knormal:53|)
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
  (forall ( (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:73| Int) (|$alpha-32:c3_COEFFICIENT_1089| Int) (|$alpha-33:c2_COEFFICIENT_1088| Int) (|$alpha-34:c1_COEFFICIENT_1085| Int) (|$alpha-35:c0_COEFFICIENT_1084| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:37| Int) (|$knormal:40| Int) (|$knormal:45| Int) (|$knormal:48| Int) (|$knormal:69| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:80| Int) (|$knormal:85| Int) (|$knormal:88| Int) (|$knormal:91| Int) (|omega_1032| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:88| 0) (= |$knormal:85| 0) (= |$knormal:80| 0) (= |$knormal:77| 0) (= |$knormal:72| 0) (= |$knormal:69| 0) (= |$knormal:48| 0) (= |$knormal:45| 0) (= |$knormal:40| 0) (= |$knormal:37| 0) (= |$knormal:32| 0) (= |$knormal:29| 0) (= |$knormal:24| 0) (= |$knormal:22| 0) (= |$alpha-35:c0_COEFFICIENT_1084| 0) (= |$alpha-34:c1_COEFFICIENT_1085| 0) (= |$alpha-33:c2_COEFFICIENT_1088| 0) (= |$alpha-32:c3_COEFFICIENT_1089| 0) (|omega_1032$unknown:38| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |omega_1032|) true true true )
      (|f_1034$unknown:20| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |omega_1032| |$knormal:48| |$knormal:45| |$alpha-34:c1_COEFFICIENT_1085| |$knormal:40| |$knormal:37| |$knormal:32| |$knormal:29| |$alpha-35:c0_COEFFICIENT_1084| |$knormal:24| |$knormal:22|)
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
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:83| Int) (|$alpha-10:x_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (= |$V-reftype:83| |$knormal:7|) (not (not (= 0 |$alpha-8:prev_set_flag_id_1098|))) (|id_without_checking_1126$unknown:34| |$knormal:7| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true )
      (|id_1030$unknown:30| |$V-reftype:83| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_id_1098|)) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true )
      (|fail$unknown:25| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_id_1098|))) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_id_1098|))) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_id_1098| Int) (|$alpha-9:s_prev_id_x_1097| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_id_1098|))) (|id_1030$unknown:29| |$alpha-10:x_1031| |$alpha-9:s_prev_id_x_1097| |$alpha-8:prev_set_flag_id_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-3:set_flag_id_1099| Int) (|$alpha-4:s_id_x_1096| Int) (|$alpha-5:x_1031| Int) (|$alpha-6:set_flag_id_1099| Int) )
    (=>
      ( and (= |$alpha-6:set_flag_id_1099| 1) (= |$V-reftype:78| |$alpha-5:x_1031|) true true true )
      (|id_without_checking_1126$unknown:34| |$V-reftype:78| |$alpha-5:x_1031| |$alpha-4:s_id_x_1096| |$alpha-3:set_flag_id_1099|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:84| Int) (|$alpha-13:set_flag_id_1099| Int) (|$alpha-14:s_id_x_1096| Int) (|$alpha-15:x_1033| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$V-reftype:84| |$knormal:16|) (|omega_1032$unknown:38| |$knormal:16| |$alpha-15:x_1033| |$alpha-14:s_id_x_1096| |$alpha-13:set_flag_id_1099|) true true true )
      (|omega_1032$unknown:38| |$V-reftype:84| |$alpha-15:x_1033| |$alpha-14:s_id_x_1096| |$alpha-13:set_flag_id_1099|)
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

