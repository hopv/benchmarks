(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_omega_1141 s_omega_x_1138 x_1031 = x_1031
  
     let rec omega_1032 omega_without_checking_1162 prev_set_flag_omega_1140 s_prev_omega_x_1139 x_1033 =
       let u =if prev_set_flag_omega_1140 then
                let u_4029 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1162 prev_set_flag_omega_1140
                s_prev_omega_x_1139 x_1033
  
     let rec omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033 =
       let set_flag_omega_1141 = true
       in
       let s_omega_x_1138 = x_1033
       in
         omega_1032 omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033
  
     let f_1034 x_DO_NOT_CARE_1245 x_DO_NOT_CARE_1246 x_EXPARAM_1092 x_DO_NOT_CARE_1243 x_DO_NOT_CARE_1244 x_1035 x_DO_NOT_CARE_1241 x_DO_NOT_CARE_1242 y_EXPARAM_1093 x_DO_NOT_CARE_1239 x_DO_NOT_CARE_1240 y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037 =
       y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037
  
     let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_without_checking_1162) false 0
         c3_COEFFICIENT_1089 false 0 id_1030 false 0 1
")

(set-logic HORN)

(declare-fun |fail$unknown:25|
  ( Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:42|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:41|
  ( Int Int Int ) Bool
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

(declare-fun |omega_1032$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:37|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:83| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:83| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:83| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:88| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$V-reftype:88| |$knormal:7|) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|omega_1032$unknown:34| |$knormal:7| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:38| |$V-reftype:88| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:23| |$V-reftype:18| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:53| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true (|f_1034$unknown:24| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:10| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|id_1030$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030|) true true (|f_1034$unknown:10| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|f_1034$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-17:x_DO_NOT_CARE_1245| Int) (|$alpha-18:x_DO_NOT_CARE_1246| Int) (|$alpha-19:x_EXPARAM_1092| Int) (|$alpha-20:x_DO_NOT_CARE_1243| Int) (|$alpha-21:x_DO_NOT_CARE_1244| Int) (|$alpha-23:x_DO_NOT_CARE_1241| Int) (|$alpha-24:x_DO_NOT_CARE_1242| Int) (|$alpha-25:y_EXPARAM_1093| Int) (|$alpha-26:x_DO_NOT_CARE_1239| Int) (|$alpha-27:x_DO_NOT_CARE_1240| Int) (|$alpha-29:set_flag_omega_1141| Int) (|$alpha-30:s_omega_x_1138| Int) (|$alpha-31:z_1037| Int) (|$knormal:23| Int) )
    (=>
      ( and (= |$V-reftype:93| |$knormal:23|) true true true true true (|f_1034$unknown:23| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|) true true (|f_1034$unknown:20| |$knormal:23| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|) true true true true true )
      (|f_1034$unknown:24| |$V-reftype:93| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1245| Int) (|$alpha-18:x_DO_NOT_CARE_1246| Int) (|$alpha-19:x_EXPARAM_1092| Int) (|$alpha-20:x_DO_NOT_CARE_1243| Int) (|$alpha-21:x_DO_NOT_CARE_1244| Int) (|$alpha-23:x_DO_NOT_CARE_1241| Int) (|$alpha-24:x_DO_NOT_CARE_1242| Int) (|$alpha-25:y_EXPARAM_1093| Int) (|$alpha-26:x_DO_NOT_CARE_1239| Int) (|$alpha-27:x_DO_NOT_CARE_1240| Int) (|$alpha-29:set_flag_omega_1141| Int) (|$alpha-30:s_omega_x_1138| Int) (|$alpha-31:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1245| Int) (|$alpha-18:x_DO_NOT_CARE_1246| Int) (|$alpha-19:x_EXPARAM_1092| Int) (|$alpha-20:x_DO_NOT_CARE_1243| Int) (|$alpha-21:x_DO_NOT_CARE_1244| Int) (|$alpha-23:x_DO_NOT_CARE_1241| Int) (|$alpha-24:x_DO_NOT_CARE_1242| Int) (|$alpha-25:y_EXPARAM_1093| Int) (|$alpha-26:x_DO_NOT_CARE_1239| Int) (|$alpha-27:x_DO_NOT_CARE_1240| Int) (|$alpha-29:set_flag_omega_1141| Int) (|$alpha-30:s_omega_x_1138| Int) (|$alpha-31:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1245| Int) (|$alpha-18:x_DO_NOT_CARE_1246| Int) (|$alpha-19:x_EXPARAM_1092| Int) (|$alpha-20:x_DO_NOT_CARE_1243| Int) (|$alpha-21:x_DO_NOT_CARE_1244| Int) (|$alpha-23:x_DO_NOT_CARE_1241| Int) (|$alpha-24:x_DO_NOT_CARE_1242| Int) (|$alpha-25:y_EXPARAM_1093| Int) (|$alpha-26:x_DO_NOT_CARE_1239| Int) (|$alpha-27:x_DO_NOT_CARE_1240| Int) (|$alpha-29:set_flag_omega_1141| Int) (|$alpha-30:s_omega_x_1138| Int) (|$alpha-31:z_1037| Int) )
    (=>
      ( and true true true true true (|f_1034$unknown:23| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|) true true true true true true true )
      (|f_1034$unknown:19| |$alpha-31:z_1037| |$alpha-30:s_omega_x_1138| |$alpha-29:set_flag_omega_1141| |$alpha-27:x_DO_NOT_CARE_1240| |$alpha-26:x_DO_NOT_CARE_1239| |$alpha-25:y_EXPARAM_1093| |$alpha-24:x_DO_NOT_CARE_1242| |$alpha-23:x_DO_NOT_CARE_1241| |$alpha-21:x_DO_NOT_CARE_1244| |$alpha-20:x_DO_NOT_CARE_1243| |$alpha-19:x_EXPARAM_1092| |$alpha-18:x_DO_NOT_CARE_1246| |$alpha-17:x_DO_NOT_CARE_1245|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:53| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:19| |$V-reftype:36| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|id_1030| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|id_1030$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030|) (|f_1034$unknown:19| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) true true )
      (|f_1034$unknown:20| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:78| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:19| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) true true )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|omega_without_checking_1162$unknown:42| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|) (|f_1034$unknown:19| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) true true )
      (|f_1034$unknown:20| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) true true )
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
  (forall ( (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|fail$unknown:26| |$knormal:11| |$knormal:10|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$alpha-3:set_flag_omega_1141| Int) (|$alpha-4:s_omega_x_1138| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:85| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:30| |$V-reftype:85| |$alpha-5:x_1031| |$alpha-4:s_omega_x_1138| |$alpha-3:set_flag_omega_1141|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:78| Int) (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true (|omega_1032$unknown:33| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|) true true )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:81| Int) (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:42| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true (|omega_1032$unknown:33| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|) true true )
      (|omega_1032$unknown:34| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:90| Int) (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (= |$V-reftype:90| |$knormal:7|) (not (not (= 0 |$alpha-7:prev_set_flag_omega_1140|))) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true (|omega_1032$unknown:34| |$knormal:7| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) )
      (|omega_1032$unknown:38| |$V-reftype:90| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 1) (not (= 0 |$alpha-7:prev_set_flag_omega_1140|)) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true )
      (|fail$unknown:25| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_omega_1140|))) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_omega_1140|))) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_omega_1140|))) (|omega_1032$unknown:37| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) true true )
      (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:92| Int) (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (= |$V-reftype:92| |$knormal:18|) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true (|omega_1032$unknown:38| |$knormal:18| |$alpha-14:x_1033| |$alpha-14:x_1033| |$alpha-15:set_flag_omega_1141|) )
      (|omega_without_checking_1162$unknown:42| |$V-reftype:92| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$alpha-15:set_flag_omega_1141| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_omega_1141| 1) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) true true )
      (|omega_1032$unknown:37| |$alpha-14:x_1033| |$alpha-14:x_1033| |$alpha-15:set_flag_omega_1141|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      (|f_1034$unknown:23| |$knormal:93| |$knormal:90| |$knormal:87| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:34| Int) (|$knormal:39| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$knormal:50| Int) (|$knormal:71| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$knormal:82| Int) (|$knormal:87| Int) (|$knormal:90| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      true
    )
  )
)
(check-sat)

(exit)

