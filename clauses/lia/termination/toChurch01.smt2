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
  
     let compose_1030 x_DO_NOT_CARE_1433 x_DO_NOT_CARE_1434 f_EXPARAM_1133 x_DO_NOT_CARE_1431 x_DO_NOT_CARE_1432 f_1031 x_DO_NOT_CARE_1429 x_DO_NOT_CARE_1430 g_EXPARAM_1134 x_DO_NOT_CARE_1427 x_DO_NOT_CARE_1428 g_1032 set_flag_id_1234 s_id_x_1231 x_1033 =
       f_1031 set_flag_id_1234 s_id_x_1231
         (g_1032 set_flag_id_1234 s_id_x_1231 x_1033)
  
     let id_without_checking_1260 set_flag_id_1234 s_id_x_1231 x_1035 =
       let set_flag_id_1234 = true
       in
       let s_id_x_1231 = x_1035
       in
         x_1035
  
     let rec id_1034 prev_set_flag_id_1233 s_prev_id_x_1232 x_1035 =
       let u = if prev_set_flag_id_1233 then
                let u_6367 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1260 prev_set_flag_id_1233 s_prev_id_x_1232
                x_1035
  
     let succ_1036 set_flag_id_1234 s_id_x_1231 x_1037 = x_1037 + 1
  
     let rec toChurch_1038 x_DO_NOT_CARE_1425 x_DO_NOT_CARE_1426 n_1039 x_DO_NOT_CARE_1423 x_DO_NOT_CARE_1424 f_EXPARAM_1119 set_flag_id_1234 s_id_x_1231 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_id_1234 s_id_x_1231
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_id_1234 s_id_x_1231 f_1040 set_flag_id_1234 s_id_x_1231
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_id_1234 s_id_x_1231
           (toChurch_1038 set_flag_id_1234 s_id_x_1231 (n_1039 - 1)
             set_flag_id_1234 s_id_x_1231
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_id_1234 s_id_x_1231 f_1040)
  
     let main x_1043 =
       let set_flag_id_1234 = false in
       let s_id_x_1231 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_id_1234 s_id_x_1231 x_1043 set_flag_id_1234
               s_id_x_1231 ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_id_1234 s_id_x_1231 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |succ_1036$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int ) Bool
)

(declare-fun |toChurch_1038$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:54|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:19|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:50|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_without_checking_1260$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:106| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:106| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:113| Int) (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (= |$V-reftype:113| |$knormal:18|) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_without_checking_1260$unknown:34| |$knormal:18| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true (|fail$unknown:26| |$knormal:22| |$knormal:21|) (|bot$unknown:2| |$knormal:20| |$knormal:19|) )
      (|id_1034$unknown:30| |$V-reftype:113| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true (|fail$unknown:26| |$knormal:22| |$knormal:21|) (|bot$unknown:2| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true (|fail$unknown:26| |$knormal:22| |$knormal:21|) (|bot$unknown:2| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true (|fail$unknown:26| |$knormal:22| |$knormal:21|) (|bot$unknown:2| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-39:f_1040| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true true )
      (|compose_1030$unknown:11| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:108| Int) (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) (|$knormal:13| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:108| |$knormal:13|) true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true (|compose_1030$unknown:20| |$knormal:7| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true (|compose_1030$unknown:11| |$knormal:13| |$knormal:7| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) )
      (|compose_1030$unknown:24| |$V-reftype:108| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true (|compose_1030$unknown:20| |$knormal:7| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true (|compose_1030$unknown:20| |$knormal:7| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true (|compose_1030$unknown:20| |$knormal:7| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1430| Int) (|$alpha-11:g_EXPARAM_1134| Int) (|$alpha-12:x_DO_NOT_CARE_1427| Int) (|$alpha-13:x_DO_NOT_CARE_1428| Int) (|$alpha-15:set_flag_id_1234| Int) (|$alpha-16:s_id_x_1231| Int) (|$alpha-17:x_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1433| Int) (|$alpha-4:x_DO_NOT_CARE_1434| Int) (|$alpha-5:f_EXPARAM_1133| Int) (|$alpha-6:x_DO_NOT_CARE_1431| Int) (|$alpha-7:x_DO_NOT_CARE_1432| Int) (|$alpha-9:x_DO_NOT_CARE_1429| Int) )
    (=>
      ( and true true true true true (|compose_1030$unknown:23| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|) true true true true true true true )
      (|compose_1030$unknown:19| |$alpha-17:x_1033| |$alpha-16:s_id_x_1231| |$alpha-15:set_flag_id_1234| |$alpha-13:x_DO_NOT_CARE_1428| |$alpha-12:x_DO_NOT_CARE_1427| |$alpha-11:g_EXPARAM_1134| |$alpha-10:x_DO_NOT_CARE_1430| |$alpha-9:x_DO_NOT_CARE_1429| |$alpha-7:x_DO_NOT_CARE_1432| |$alpha-6:x_DO_NOT_CARE_1431| |$alpha-5:f_EXPARAM_1133| |$alpha-4:x_DO_NOT_CARE_1434| |$alpha-3:x_DO_NOT_CARE_1433|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:103| Int) (|$V-reftype:104| Int) (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:51| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) (|toChurch_1038$unknown:54| |$V-reftype:104| |$V-reftype:103| |$V-reftype:101| |$knormal:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:43| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:36| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|) true true true true true true true true (|compose_1030$unknown:19| |$V-reftype:103| |$V-reftype:101| |$knormal:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:68| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|) true true )
      (|compose_1030$unknown:20| |$V-reftype:104| |$V-reftype:103| |$V-reftype:101| |$knormal:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:68| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:36| Int) (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:51| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true (|compose_1030$unknown:19| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:68| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|) true true )
      (|toChurch_1038$unknown:53| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:43| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:36| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true (|compose_1030$unknown:24| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:68| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|) )
      (|toChurch_1038$unknown:54| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true )
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
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true (|fail$unknown:26| |$knormal:22| |$knormal:21|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:115| Int) (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$alpha-27:u| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (= |$V-reftype:115| |$knormal:18|) (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (|id_without_checking_1260$unknown:34| |$knormal:18| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true )
      (|id_1034$unknown:30| |$V-reftype:115| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 1) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true )
      (|fail$unknown:25| |$knormal:21|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (|id_1034$unknown:29| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:23|)) (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true (|id_1034$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51|) )
      (|toChurch_1038$unknown:54| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:110| Int) (|$alpha-18:set_flag_id_1234| Int) (|$alpha-19:s_id_x_1231| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_id_1234| Int) )
    (=>
      ( and (= |$alpha-21:set_flag_id_1234| 1) (= |$V-reftype:110| |$alpha-20:x_1035|) true true true )
      (|id_without_checking_1260$unknown:34| |$V-reftype:110| |$alpha-20:x_1035| |$alpha-19:s_id_x_1231| |$alpha-18:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:116| Int) (|$alpha-28:set_flag_id_1234| Int) (|$alpha-29:s_id_x_1231| Int) (|$alpha-30:x_1037| Int) )
    (=>
      ( and (= |$V-reftype:116| (+ |$alpha-30:x_1037| 1)) true true true )
      (|succ_1036$unknown:38| |$V-reftype:116| |$alpha-30:x_1037| |$alpha-29:s_id_x_1231| |$alpha-28:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:73| Int) (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) (|succ_1036| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) true true true (|succ_1036$unknown:38| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |succ_1036|) )
      (|toChurch_1038$unknown:50| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |succ_1036| |$alpha-53:s_id_x_1231| |$alpha-52:set_flag_id_1234| |$knormal:89| |$alpha-53:s_id_x_1231| |$alpha-52:set_flag_id_1234| |$alpha-49:x_1043| |$alpha-53:s_id_x_1231| |$alpha-52:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-39:f_1040| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true true )
      (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:43| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:36| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:102| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) (|toChurch_1038$unknown:53| |$V-reftype:102| |$V-reftype:43| |$V-reftype:41| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true )
      (|compose_1030$unknown:23| |$V-reftype:102| |$V-reftype:43| |$V-reftype:41| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:68| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$knormal:55| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:23|)) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:102| Int) (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:23|)) (|toChurch_1038$unknown:53| |$V-reftype:102| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) true true true true true true true true true true )
      (|id_1034$unknown:29| |$V-reftype:102| |$V-reftype:53| |$V-reftype:51|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (= 0 |$knormal:23|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) (|$knormal:55| Int) (|$knormal:68| Int) )
    (=>
      ( and (= |$knormal:68| (+ |$knormal:27| |$knormal:29|)) (= |$knormal:55| (+ |$knormal:24| |$knormal:26|)) (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:29| (+ |$knormal:28| |$alpha-48:c10_COEFFICIENT_1129|)) (= |$knormal:28| (* |$alpha-40:c9_COEFFICIENT_1128| |$alpha-33:n_1039|)) (= |$knormal:27| (* |$alpha-41:c8_COEFFICIENT_1127| |$alpha-36:f_EXPARAM_1119|)) (= |$knormal:26| (+ |$knormal:25| |$alpha-45:c4_COEFFICIENT_1122|)) (= |$knormal:25| (* |$alpha-46:c3_COEFFICIENT_1121| |$alpha-33:n_1039|)) (= |$knormal:24| (* |$alpha-47:c2_COEFFICIENT_1120| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:n_1039| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-40:c9_COEFFICIENT_1128| Int) (|$alpha-41:c8_COEFFICIENT_1127| Int) (|$alpha-42:c7_COEFFICIENT_1125| Int) (|$alpha-43:c6_COEFFICIENT_1124| Int) (|$alpha-44:c5_COEFFICIENT_1123| Int) (|$alpha-45:c4_COEFFICIENT_1122| Int) (|$alpha-46:c3_COEFFICIENT_1121| Int) (|$alpha-47:c2_COEFFICIENT_1120| Int) (|$alpha-48:c10_COEFFICIENT_1129| Int) (|$knormal:23| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:36| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:30| |$knormal:32|)) (= |$knormal:36| (- |$alpha-33:n_1039| 1)) (= |$knormal:32| (+ |$knormal:31| |$alpha-42:c7_COEFFICIENT_1125|)) (= |$knormal:31| (* |$alpha-43:c6_COEFFICIENT_1124| |$alpha-33:n_1039|)) (= |$knormal:30| (* |$alpha-44:c5_COEFFICIENT_1123| |$alpha-36:f_EXPARAM_1119|)) (= (not (= 0 |$knormal:23|)) (= |$alpha-33:n_1039| 0)) (= |$alpha-48:c10_COEFFICIENT_1129| 0) (= |$alpha-47:c2_COEFFICIENT_1120| 0) (= |$alpha-46:c3_COEFFICIENT_1121| 0) (= |$alpha-45:c4_COEFFICIENT_1122| 0) (= |$alpha-44:c5_COEFFICIENT_1123| 0) (= |$alpha-43:c6_COEFFICIENT_1124| 0) (= |$alpha-42:c7_COEFFICIENT_1125| 0) (= |$alpha-41:c8_COEFFICIENT_1127| 0) (= |$alpha-40:c9_COEFFICIENT_1128| 0) (not (not (= 0 |$knormal:23|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-49:x_1043| Int) (|$alpha-50:c1_COEFFICIENT_1117| Int) (|$alpha-51:c0_COEFFICIENT_1116| Int) (|$alpha-52:set_flag_id_1234| Int) (|$alpha-53:s_id_x_1231| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:89| Int) )
    (=>
      ( and (= |$knormal:89| (+ |$knormal:79| |$alpha-50:c1_COEFFICIENT_1117|)) (= |$knormal:79| (* |$alpha-51:c0_COEFFICIENT_1116| |$alpha-49:x_1043|)) (= (not (= 0 |$knormal:78|)) (>= |$alpha-49:x_1043| 0)) (= |$alpha-53:s_id_x_1231| 0) (= |$alpha-52:set_flag_id_1234| 0) (= |$alpha-51:c0_COEFFICIENT_1116| 0) (= |$alpha-50:c1_COEFFICIENT_1117| 0) (not (= 0 |$knormal:78|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

