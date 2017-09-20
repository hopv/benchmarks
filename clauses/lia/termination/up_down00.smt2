(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_1030 x_DO_NOT_CARE_1212 x_DO_NOT_CARE_1213 f_EXPARAM_1084 x_DO_NOT_CARE_1210 x_DO_NOT_CARE_1211 f_1033 set_flag_up_1089 s_up_x_1086 x_1034 =
       f_1033 set_flag_up_1089 s_up_x_1086 x_1034
  
     let rec down_1031 set_flag_up_1089 s_up_x_1086 x_1035 =
       if x_1035 = 0 then
         ()
       else
         down_1031 set_flag_up_1089 s_up_x_1086 (x_1035 - 1)
  
     let rec up_without_checking_1115 set_flag_up_1089 s_up_x_1086 x_1036 =
       let set_flag_up_1089 = true
       in
       let s_up_x_1086 = x_1036
       in
         if x_1036 = 0 then
           ()
         else
           up_without_checking_1115 set_flag_up_1089 s_up_x_1086 (x_1036 + 1)
  
     let rec up_1032 prev_set_flag_up_1088 s_prev_up_x_1087 x_1036 =
       let u = if prev_set_flag_up_1088 then
                let u_1402 = fail ()
                in
                  bot()
               else () in
              up_without_checking_1115 prev_set_flag_up_1088 s_prev_up_x_1087
                x_1036
  
     let main_1037 t1_1039 t2_1040 =
        let set_flag_up_1089 = false in
        let s_up_x_1086 = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_up_1089 s_up_x_1086
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_up_1089 s_up_x_1086 down_1031 set_flag_up_1089 s_up_x_1086
             t1_1039
         else
           if t2_1040 < 0 then
             app_1030 set_flag_up_1089 s_up_x_1086
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_up_1089 s_up_x_1086 up_1032 set_flag_up_1089 s_up_x_1086
               t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |fail$unknown:20|
  ( Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:29|
  ( Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:14|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:28|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:16|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:25|
  ( Int ) Bool
)

(declare-fun |main_1037$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |main_1037$unknown:22|
  ( Int ) Bool
)

(declare-fun |app_1030$unknown:13|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:6|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:5|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:11|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:10|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-10:s_up_x_1086| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-9:set_flag_up_1089| Int) )
    (=>
      ( and (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:6| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_up_x_1086| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-9:set_flag_up_1089| Int) )
    (=>
      ( and (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:7| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_up_x_1086| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-9:set_flag_up_1089| Int) )
    (=>
      ( and (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:8| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-10:s_up_x_1086| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-9:set_flag_up_1089| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:61| |$knormal:7|) (|app_1030$unknown:9| |$knormal:7| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:13| |$V-reftype:61| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$V-reftype:95| |$knormal:53|) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:13| |$knormal:53| |$alpha-26:t2_1040| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:95| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:89| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$V-reftype:89| |$knormal:74|) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:13| |$knormal:74| |$alpha-25:t1_1039| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:89| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:6| |$V-reftype:11| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|up_1032$unknown:25| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:6| |$V-reftype:11| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:16| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:7| |$V-reftype:13| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:17| |$V-reftype:13| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:32| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:35| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:8| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:7| |$V-reftype:13| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|up_1032$unknown:26| |$V-reftype:13| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:47| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|up_1032$unknown:27| |$V-reftype:15| |$V-reftype:47| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:50| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|up_1032$unknown:28| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032|) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) (|app_1030$unknown:8| |$V-reftype:49| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:6| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:59| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) (|bot$unknown:14| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:15| |$V-reftype:59| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:73| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$V-reftype:73| |$knormal:26|) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) )
      (|up_1032$unknown:28| |$V-reftype:73| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) )
      (|up_without_checking_1115$unknown:29| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) )
      (|up_without_checking_1115$unknown:30| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) )
      (|up_without_checking_1115$unknown:31| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$V-reftype:65| |$knormal:14|) (not (not (= 0 |$knormal:8|))) (|down_1031$unknown:19| |$knormal:14| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:65| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$V-reftype:63| 1) (not (= 0 |$knormal:8|)) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:63| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not (not (= 0 |$knormal:8|))) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not (not (= 0 |$knormal:8|))) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not (not (= 0 |$knormal:8|))) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:18| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:20| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) )
      (|bot$unknown:14| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:1| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:10| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:11| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:2| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:3| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:4| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:31|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:5| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:1| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:10| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:11| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:2| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:3| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:4| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$knormal:32|)) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|app_1030$unknown:5| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:31| Int) (|$knormal:32| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:32|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:31|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$V-reftype:96| 1) (not (not (= 0 |$knormal:32|))) (not (not (= 0 |$knormal:31|))) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|main_1037$unknown:22| |$alpha-25:t1_1039|) )
      (|main_1037$unknown:24| |$V-reftype:96| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-24:u| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (= |$V-reftype:75| |$knormal:26|) (not (not (= 0 |$alpha-20:prev_set_flag_up_1088|))) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) )
      (|up_1032$unknown:28| |$V-reftype:75| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 1) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) )
      (|fail$unknown:20| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-20:prev_set_flag_up_1088|))) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) )
      (|up_without_checking_1115$unknown:29| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-20:prev_set_flag_up_1088|))) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) )
      (|up_without_checking_1115$unknown:30| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-20:prev_set_flag_up_1088|))) (|up_1032$unknown:27| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-20:prev_set_flag_up_1088|) )
      (|up_without_checking_1115$unknown:31| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (= |$V-reftype:70| |$knormal:21|) (not (not (= 0 |$knormal:15|))) (|up_without_checking_1115$unknown:32| |$knormal:21| |$knormal:19| |$alpha-17:x_1036| |$alpha-18:set_flag_up_1089|) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:30| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:29| |$alpha-15:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:32| |$V-reftype:70| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (= |$V-reftype:68| 1) (not (= 0 |$knormal:15|)) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:30| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:29| |$alpha-15:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:32| |$V-reftype:68| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:15| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (not (not (= 0 |$knormal:15|))) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:30| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:29| |$alpha-15:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:29| |$alpha-18:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:15| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (not (not (= 0 |$knormal:15|))) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:30| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:29| |$alpha-15:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:30| |$alpha-17:x_1036| |$alpha-18:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:15| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= (not (= 0 |$knormal:15|)) (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (not (not (= 0 |$knormal:15|))) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:30| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) (|up_without_checking_1115$unknown:29| |$alpha-15:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:31| |$knormal:19| |$alpha-17:x_1036| |$alpha-18:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

