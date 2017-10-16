(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_without_checking_1193 x_DO_NOT_CARE_1221 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 f_EXPARAM_1084 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034 =
       let set_flag_app_1179 = true
       in
       let s_app_x_1174 = x_1034
       in
       let s_app_f_EXPARAM_1172 = f_EXPARAM_1084
       in
         f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034
  
     let rec app_1030 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195 x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033 prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175 s_prev_app_x_1177 x_1034 =
       let u = if prev_set_flag_app_1178 then
                let u_11787 = fail ()
                in
                  bot()
              else
  () in
              app_without_checking_1193 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199
                x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195
                x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033
                prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175
                s_prev_app_x_1177 x_1034
  
  
     let rec down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1035 =
       if x_1035 = 0 then
         ()
       else
         down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
           (x_1035 - 1)
  
     let rec up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1036 =
       if x_1036 = 0 then
         ()
       else
         up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 (x_1036 + 1)
  
     let main t1_1039 t2_1040 =
       let set_flag_app_1179 = false in
       let s_app_f_EXPARAM_1172 = 0 in
       let s_app_x_1174  = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 down_1031
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t1_1039
         else
           if t2_1040 < 0 then
             app_without_checking_1193 set_flag_app_1179 s_app_f_EXPARAM_1172
               s_app_x_1174
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 up_1032
               set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |up_1032$unknown:48|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:41|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:42|
  ( Int ) Bool
)

(declare-fun |app_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1193$unknown:34|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1193$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:43|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |app_1030$unknown:16|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-25:f_1033| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true (|app_1030$unknown:12| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true )
      (|app_without_checking_1193$unknown:29| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-25:f_1033| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true (|app_1030$unknown:12| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true )
      (|app_without_checking_1193$unknown:29| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (= |$V-reftype:103| |$knormal:32|) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) (|app_without_checking_1193$unknown:34| |$knormal:32| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      (|app_1030$unknown:17| |$V-reftype:103| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (= |$V-reftype:105| |$knormal:32|) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) (|app_without_checking_1193$unknown:34| |$knormal:32| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      (|app_1030$unknown:17| |$V-reftype:105| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) (|bot$unknown:36| |$knormal:34| |$knormal:33|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) (|fail$unknown:43| |$knormal:36| |$knormal:35|) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| 1) (not (= 0 |$alpha-26:prev_set_flag_app_1178|)) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      (|fail$unknown:42| |$knormal:35|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_DO_NOT_CARE_1198| Int) (|$alpha-19:x_DO_NOT_CARE_1199| Int) (|$alpha-20:x_DO_NOT_CARE_1200| Int) (|$alpha-21:f_EXPARAM_1084| Int) (|$alpha-22:x_DO_NOT_CARE_1195| Int) (|$alpha-23:x_DO_NOT_CARE_1196| Int) (|$alpha-24:x_DO_NOT_CARE_1197| Int) (|$alpha-26:prev_set_flag_app_1178| Int) (|$alpha-27:s_prev_app_f_EXPARAM_1175| Int) (|$alpha-28:s_prev_app_x_1177| Int) (|$alpha-29:x_1034| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-26:prev_set_flag_app_1178|))) true true true true true true (|app_1030$unknown:16| |$alpha-29:x_1034| |$alpha-28:s_prev_app_x_1177| |$alpha-27:s_prev_app_f_EXPARAM_1175| |$alpha-26:prev_set_flag_app_1178| |$alpha-24:x_DO_NOT_CARE_1197| |$alpha-23:x_DO_NOT_CARE_1196| |$alpha-22:x_DO_NOT_CARE_1195| |$alpha-21:f_EXPARAM_1084| |$alpha-20:x_DO_NOT_CARE_1200| |$alpha-19:x_DO_NOT_CARE_1199| |$alpha-18:x_DO_NOT_CARE_1198|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:78| Int) (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) (|down_1031$unknown:41| |$V-reftype:78| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |down_1031|) true true true true )
      (|app_1030$unknown:12| |$V-reftype:78| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |down_1031| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179| |$knormal:92| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$alpha-11:set_flag_app_1179| Int) (|$alpha-12:s_app_f_EXPARAM_1172| Int) (|$alpha-13:s_app_x_1174| Int) (|$alpha-14:x_1034| Int) (|$alpha-15:set_flag_app_1179| Int) (|$alpha-3:x_DO_NOT_CARE_1221| Int) (|$alpha-4:x_DO_NOT_CARE_1222| Int) (|$alpha-5:x_DO_NOT_CARE_1223| Int) (|$alpha-6:f_EXPARAM_1084| Int) (|$alpha-7:x_DO_NOT_CARE_1218| Int) (|$alpha-8:x_DO_NOT_CARE_1219| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_app_1179| 1) (= |$V-reftype:100| |$knormal:9|) true true true true (|app_without_checking_1193$unknown:29| |$knormal:9| |$alpha-14:x_1034| |$alpha-14:x_1034| |$alpha-6:f_EXPARAM_1084| |$alpha-15:set_flag_app_1179| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:x_DO_NOT_CARE_1219| |$alpha-7:x_DO_NOT_CARE_1218| |$alpha-6:f_EXPARAM_1084| |$alpha-5:x_DO_NOT_CARE_1223| |$alpha-4:x_DO_NOT_CARE_1222| |$alpha-3:x_DO_NOT_CARE_1221|) true true true true true true true )
      (|app_without_checking_1193$unknown:34| |$V-reftype:100| |$alpha-14:x_1034| |$alpha-13:s_app_x_1174| |$alpha-12:s_app_f_EXPARAM_1172| |$alpha-11:set_flag_app_1179| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:x_DO_NOT_CARE_1219| |$alpha-7:x_DO_NOT_CARE_1218| |$alpha-6:f_EXPARAM_1084| |$alpha-5:x_DO_NOT_CARE_1223| |$alpha-4:x_DO_NOT_CARE_1222| |$alpha-3:x_DO_NOT_CARE_1221|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_app_1179| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_app_1179| 1) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_app_1179| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_app_1179| 1) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_app_1179| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_app_1179| 1) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_app_1179| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_app_1179| 1) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:90| Int) (|$V-reftype:92| Int) (|$V-reftype:94| Int) (|$V-reftype:95| Int) (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) (|up_1032$unknown:48| |$V-reftype:95| |$V-reftype:94| |$V-reftype:92| |$V-reftype:90| |up_1032|) true true true true )
      (|app_without_checking_1193$unknown:29| |$V-reftype:95| |$V-reftype:94| |$V-reftype:92| |$V-reftype:90| |up_1032| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179| |$knormal:65| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:97| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:97| |$knormal:2|) (|bot$unknown:36| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:36| |$V-reftype:97| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:109| Int) (|$alpha-32:set_flag_app_1179| Int) (|$alpha-33:s_app_f_EXPARAM_1172| Int) (|$alpha-34:s_app_x_1174| Int) (|$alpha-35:x_1035| Int) (|$knormal:37| Int) (|$knormal:43| Int) (|$knormal:45| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-35:x_1035| 1)) (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (= |$V-reftype:109| |$knormal:45|) (not (not (= 0 |$knormal:37|))) (|down_1031$unknown:41| |$knormal:45| |$knormal:43| |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|) true true true true )
      (|down_1031$unknown:41| |$V-reftype:109| |$alpha-35:x_1035| |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:107| Int) (|$alpha-32:set_flag_app_1179| Int) (|$alpha-33:s_app_f_EXPARAM_1172| Int) (|$alpha-34:s_app_x_1174| Int) (|$alpha-35:x_1035| Int) (|$knormal:37| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (= |$V-reftype:107| 1) (not (= 0 |$knormal:37|)) true true true true )
      (|down_1031$unknown:41| |$V-reftype:107| |$alpha-35:x_1035| |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-35:x_1035| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-35:x_1035| 1)) (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (not (not (= 0 |$knormal:37|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:x_1035| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-35:x_1035| 1)) (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (not (not (= 0 |$knormal:37|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:x_1035| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-35:x_1035| 1)) (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (not (not (= 0 |$knormal:37|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:x_1035| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-35:x_1035| 1)) (= (not (= 0 |$knormal:37|)) (= |$alpha-35:x_1035| 0)) (not (not (= 0 |$knormal:37|))) true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:42| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$alpha-36:set_flag_app_1179| Int) (|$alpha-37:s_app_f_EXPARAM_1172| Int) (|$alpha-38:s_app_x_1174| Int) (|$alpha-39:x_1036| Int) (|$knormal:46| Int) (|$knormal:52| Int) (|$knormal:54| Int) )
    (=>
      ( and (= |$knormal:52| (+ |$alpha-39:x_1036| 1)) (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (= |$V-reftype:113| |$knormal:54|) (not (not (= 0 |$knormal:46|))) (|up_1032$unknown:48| |$knormal:54| |$knormal:52| |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|) true true true true )
      (|up_1032$unknown:48| |$V-reftype:113| |$alpha-39:x_1036| |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:111| Int) (|$alpha-36:set_flag_app_1179| Int) (|$alpha-37:s_app_f_EXPARAM_1172| Int) (|$alpha-38:s_app_x_1174| Int) (|$alpha-39:x_1036| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (= |$V-reftype:111| 1) (not (= 0 |$knormal:46|)) true true true true )
      (|up_1032$unknown:48| |$V-reftype:111| |$alpha-39:x_1036| |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_1036| Int) (|$knormal:46| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| (+ |$alpha-39:x_1036| 1)) (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (not (not (= 0 |$knormal:46|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_1036| Int) (|$knormal:46| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| (+ |$alpha-39:x_1036| 1)) (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (not (not (= 0 |$knormal:46|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_1036| Int) (|$knormal:46| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| (+ |$alpha-39:x_1036| 1)) (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (not (not (= 0 |$knormal:46|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:x_1036| Int) (|$knormal:46| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| (+ |$alpha-39:x_1036| 1)) (= (not (= 0 |$knormal:46|)) (= |$alpha-39:x_1036| 0)) (not (not (= 0 |$knormal:46|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      (|app_1030$unknown:16| |$alpha-40:t1_1039| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179| |$knormal:92| |$alpha-50:s_app_x_1174| |$alpha-49:s_app_f_EXPARAM_1172| |$alpha-48:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:84| |$knormal:86|)) (= |$knormal:86| (+ |$knormal:85| |$alpha-42:c5_COEFFICIENT_1082|)) (= |$knormal:85| (* |$alpha-43:c4_COEFFICIENT_1081| |$alpha-40:t1_1039|)) (= |$knormal:84| (* |$alpha-44:c3_COEFFICIENT_1080| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:55|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$alpha-42:c5_COEFFICIENT_1082| Int) (|$alpha-43:c4_COEFFICIENT_1081| Int) (|$alpha-44:c3_COEFFICIENT_1080| Int) (|$alpha-45:c2_COEFFICIENT_1078| Int) (|$alpha-46:c1_COEFFICIENT_1077| Int) (|$alpha-47:c0_COEFFICIENT_1076| Int) (|$alpha-48:set_flag_app_1179| Int) (|$alpha-49:s_app_f_EXPARAM_1172| Int) (|$alpha-50:s_app_x_1174| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (+ |$knormal:57| |$knormal:59|)) (= |$knormal:59| (+ |$knormal:58| |$alpha-45:c2_COEFFICIENT_1078|)) (= |$knormal:58| (* |$alpha-46:c1_COEFFICIENT_1077| |$alpha-40:t1_1039|)) (= |$knormal:57| (* |$alpha-47:c0_COEFFICIENT_1076| |$alpha-41:t2_1040|)) (= (not (= 0 |$knormal:56|)) (< |$alpha-41:t2_1040| 0)) (= (not (= 0 |$knormal:55|)) (> |$alpha-40:t1_1039| 0)) (= |$alpha-50:s_app_x_1174| 0) (= |$alpha-49:s_app_f_EXPARAM_1172| 0) (= |$alpha-48:set_flag_app_1179| 0) (= |$alpha-47:c0_COEFFICIENT_1076| 0) (= |$alpha-46:c1_COEFFICIENT_1077| 0) (= |$alpha-45:c2_COEFFICIENT_1078| 0) (= |$alpha-44:c3_COEFFICIENT_1080| 0) (= |$alpha-43:c4_COEFFICIENT_1081| 0) (= |$alpha-42:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:55|))) (not (= 0 |$knormal:56|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

