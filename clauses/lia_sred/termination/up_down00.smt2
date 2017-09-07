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

(declare-fun |up_without_checking_1115$unknown:31|
  ( Int Int Int ) Bool
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

(declare-fun |main_1037$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:53| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$cond-alpha-rename:21| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-26:t2_1040| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:39| Int) (|$knormal:32| Bool) (|$V-reftype:95| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:53| |$cond-alpha-rename:21|) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$V-reftype:95| |$knormal:53|) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-26:t2_1040| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$alpha-26:t2_1040| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:95| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:74| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$knormal:60| Int) (|$alpha-34:s_up_x_1086| Int) (|$alpha-25:t1_1039| Int) (|$alpha-33:set_flag_up_1089| Int) (|$cond-alpha-rename:22| Int) (|$V-reftype:89| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:74| |$cond-alpha-rename:22|) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$V-reftype:89| |$knormal:74|) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-25:t1_1039| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$alpha-25:t1_1039| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:89| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-33:set_flag_up_1089| Int) (|$V-reftype:11| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:25| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:60| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$V-reftype:11| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:16| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$V-reftype:13| Int) (|$knormal:60| Int) (|$alpha-34:s_up_x_1086| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|down_1031| Int) (|$alpha-33:set_flag_up_1089| Int) (|$cond-alpha-rename:45| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:45| |$V-reftype:13| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:17| |$V-reftype:13| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:30| Int) (|$alpha-33:set_flag_up_1089| Int) (|down_1031| Int) (|$V-reftype:15| Int) (|$V-reftype:32| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:60| Int) (|$cond-alpha-rename:29| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:46| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$V-reftype:35| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:32| Int) (|$alpha-33:set_flag_up_1089| Int) (|down_1031| Int) (|$V-reftype:34| Int) (|$V-reftype:32| Int) (|$alpha-34:s_up_x_1086| Int) (|$knormal:60| Int) (|$cond-alpha-rename:31| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$cond-alpha-rename:4| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:3| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:2| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:1| |$alpha-34:s_up_x_1086|) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:12| |$cond-alpha-rename:47| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:60| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$knormal:60| |$cond-alpha-rename:3| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$cond-alpha-rename:37| Int) (|$knormal:39| Int) (|$alpha-34:s_up_x_1086| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|up_1032| Int) (|$alpha-33:set_flag_up_1089| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:50| Int) (|$alpha-26:t2_1040| Int) (|$V-reftype:50| Int) (|$knormal:32| Bool) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$cond-alpha-rename:8| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:7| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:6| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:5| |$alpha-34:s_up_x_1086|) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|up_1032$unknown:28| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032|) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:50| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:49| |$V-reftype:47| |up_1032| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089| |$knormal:39| |$alpha-34:s_up_x_1086| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$knormal:39| |$cond-alpha-rename:7| |$cond-alpha-rename:8|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
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
  (forall ( (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:163| Int) (|$V-reftype:73| Int) (|$cond-alpha-rename:283| Bool) (|$cond-alpha-rename:66| Bool) (|$cond-alpha-rename:172| Bool) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:161| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:279| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:61| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:57| Int) (|$knormal:26| Int) (|$cond-alpha-rename:284| Bool) (|$cond-alpha-rename:171| Bool) (|$cond-alpha-rename:65| Bool) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:277| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:69| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$cond-alpha-rename:70| (+ |$cond-alpha-rename:67| |$cond-alpha-rename:69|)) (= |$cond-alpha-rename:69| (+ |$cond-alpha-rename:68| |$cond-alpha-rename:58|)) (= |$cond-alpha-rename:68| (* |$cond-alpha-rename:59| |$cond-alpha-rename:56|)) (= |$cond-alpha-rename:67| (* |$cond-alpha-rename:60| |$cond-alpha-rename:57|)) (= |$cond-alpha-rename:66| (< |$cond-alpha-rename:57| 0)) (= |$cond-alpha-rename:65| (> |$cond-alpha-rename:56| 0)) (= |$cond-alpha-rename:62| 0) (= |$cond-alpha-rename:61| 0) (= |$cond-alpha-rename:60| 0) (= |$cond-alpha-rename:59| 0) (= |$cond-alpha-rename:58| 0) (= |$cond-alpha-rename:288| (+ |$cond-alpha-rename:285| |$cond-alpha-rename:287|)) (= |$cond-alpha-rename:287| (+ |$cond-alpha-rename:286| |$cond-alpha-rename:275|)) (= |$cond-alpha-rename:286| (* |$cond-alpha-rename:276| |$cond-alpha-rename:273|)) (= |$cond-alpha-rename:285| (* |$cond-alpha-rename:277| |$cond-alpha-rename:274|)) (= |$cond-alpha-rename:284| (< |$cond-alpha-rename:274| 0)) (= |$cond-alpha-rename:283| (> |$cond-alpha-rename:273| 0)) (= |$cond-alpha-rename:279| 0) (= |$cond-alpha-rename:278| 0) (= |$cond-alpha-rename:277| 0) (= |$cond-alpha-rename:276| 0) (= |$cond-alpha-rename:275| 0) (= |$cond-alpha-rename:176| (+ |$cond-alpha-rename:173| |$cond-alpha-rename:175|)) (= |$cond-alpha-rename:175| (+ |$cond-alpha-rename:174| |$cond-alpha-rename:163|)) (= |$cond-alpha-rename:174| (* |$cond-alpha-rename:164| |$cond-alpha-rename:161|)) (= |$cond-alpha-rename:173| (* |$cond-alpha-rename:165| |$cond-alpha-rename:162|)) (= |$cond-alpha-rename:172| (< |$cond-alpha-rename:162| 0)) (= |$cond-alpha-rename:171| (> |$cond-alpha-rename:161| 0)) (= |$cond-alpha-rename:167| 0) (= |$cond-alpha-rename:166| 0) (= |$cond-alpha-rename:165| 0) (= |$cond-alpha-rename:164| 0) (= |$cond-alpha-rename:163| 0) (= |$V-reftype:73| |$knormal:26|) (not |$cond-alpha-rename:65|) (not |$cond-alpha-rename:283|) (not |$cond-alpha-rename:171|) |$cond-alpha-rename:66| |$cond-alpha-rename:284| |$cond-alpha-rename:172| (not (= |$alpha-20:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|main_1037$unknown:23| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|main_1037$unknown:23| |$cond-alpha-rename:274| |$cond-alpha-rename:273|) (|main_1037$unknown:23| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) (|app_1030$unknown:12| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:70| |$cond-alpha-rename:62| |$cond-alpha-rename:61|) (|app_1030$unknown:12| |$cond-alpha-rename:282| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:279| |$cond-alpha-rename:278| |$cond-alpha-rename:288| |$cond-alpha-rename:279| |$cond-alpha-rename:278|) (|app_1030$unknown:12| |$cond-alpha-rename:281| |$cond-alpha-rename:280| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:279| |$cond-alpha-rename:278| |$cond-alpha-rename:288| |$cond-alpha-rename:279| |$cond-alpha-rename:278|) (|app_1030$unknown:12| |$cond-alpha-rename:170| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:167| |$cond-alpha-rename:166| |$cond-alpha-rename:176| |$cond-alpha-rename:167| |$cond-alpha-rename:166|) (|app_1030$unknown:12| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:167| |$cond-alpha-rename:166| |$cond-alpha-rename:176| |$cond-alpha-rename:167| |$cond-alpha-rename:166|) (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:279| |$cond-alpha-rename:278| |$cond-alpha-rename:288| |$cond-alpha-rename:279| |$cond-alpha-rename:278|) )
      (|up_1032$unknown:28| |$V-reftype:73| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:187| Bool) (|$cond-alpha-rename:300| Bool) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:178| Int) (|$knormal:30| Int) (|$knormal:28| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:294| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-22:x_1036| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:85| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:188| Bool) (|$cond-alpha-rename:81| Bool) (|$cond-alpha-rename:299| Bool) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:83| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$cond-alpha-rename:85| (+ |$cond-alpha-rename:82| |$cond-alpha-rename:84|)) (= |$cond-alpha-rename:84| (+ |$cond-alpha-rename:83| |$cond-alpha-rename:73|)) (= |$cond-alpha-rename:83| (* |$cond-alpha-rename:74| |$cond-alpha-rename:71|)) (= |$cond-alpha-rename:82| (* |$cond-alpha-rename:75| |$cond-alpha-rename:72|)) (= |$cond-alpha-rename:81| (< |$cond-alpha-rename:72| 0)) (= |$cond-alpha-rename:80| (> |$cond-alpha-rename:71| 0)) (= |$cond-alpha-rename:77| 0) (= |$cond-alpha-rename:76| 0) (= |$cond-alpha-rename:75| 0) (= |$cond-alpha-rename:74| 0) (= |$cond-alpha-rename:73| 0) (= |$cond-alpha-rename:304| (+ |$cond-alpha-rename:301| |$cond-alpha-rename:303|)) (= |$cond-alpha-rename:303| (+ |$cond-alpha-rename:302| |$cond-alpha-rename:291|)) (= |$cond-alpha-rename:302| (* |$cond-alpha-rename:292| |$cond-alpha-rename:289|)) (= |$cond-alpha-rename:301| (* |$cond-alpha-rename:293| |$cond-alpha-rename:290|)) (= |$cond-alpha-rename:300| (< |$cond-alpha-rename:290| 0)) (= |$cond-alpha-rename:299| (> |$cond-alpha-rename:289| 0)) (= |$cond-alpha-rename:295| 0) (= |$cond-alpha-rename:294| 0) (= |$cond-alpha-rename:293| 0) (= |$cond-alpha-rename:292| 0) (= |$cond-alpha-rename:291| 0) (= |$cond-alpha-rename:192| (+ |$cond-alpha-rename:189| |$cond-alpha-rename:191|)) (= |$cond-alpha-rename:191| (+ |$cond-alpha-rename:190| |$cond-alpha-rename:179|)) (= |$cond-alpha-rename:190| (* |$cond-alpha-rename:180| |$cond-alpha-rename:177|)) (= |$cond-alpha-rename:189| (* |$cond-alpha-rename:181| |$cond-alpha-rename:178|)) (= |$cond-alpha-rename:188| (< |$cond-alpha-rename:178| 0)) (= |$cond-alpha-rename:187| (> |$cond-alpha-rename:177| 0)) (= |$cond-alpha-rename:183| 0) (= |$cond-alpha-rename:182| 0) (= |$cond-alpha-rename:181| 0) (= |$cond-alpha-rename:180| 0) (= |$cond-alpha-rename:179| 0) (not |$cond-alpha-rename:80|) (not |$cond-alpha-rename:299|) (not |$cond-alpha-rename:187|) |$cond-alpha-rename:81| |$cond-alpha-rename:300| |$cond-alpha-rename:188| (not (= |$alpha-20:prev_set_flag_up_1088| 0)) (|main_1037$unknown:23| |$cond-alpha-rename:72| |$cond-alpha-rename:71|) (|main_1037$unknown:23| |$cond-alpha-rename:290| |$cond-alpha-rename:289|) (|main_1037$unknown:23| |$cond-alpha-rename:178| |$cond-alpha-rename:177|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|bot$unknown:15| |$knormal:28| |$knormal:27|) (|app_1030$unknown:12| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:85| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|app_1030$unknown:12| |$cond-alpha-rename:298| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:304| |$cond-alpha-rename:295| |$cond-alpha-rename:294|) (|app_1030$unknown:12| |$cond-alpha-rename:297| |$cond-alpha-rename:296| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:304| |$cond-alpha-rename:295| |$cond-alpha-rename:294|) (|app_1030$unknown:12| |$cond-alpha-rename:186| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:192| |$cond-alpha-rename:183| |$cond-alpha-rename:182|) (|app_1030$unknown:12| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:192| |$cond-alpha-rename:183| |$cond-alpha-rename:182|) (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:304| |$cond-alpha-rename:295| |$cond-alpha-rename:294|) )
      (|up_without_checking_1115$unknown:31| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$knormal:14| Int) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$V-reftype:65| Int) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$V-reftype:65| |$knormal:14|) (not |$knormal:8|) (|down_1031$unknown:19| |$knormal:14| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:65| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$V-reftype:63| 1) |$knormal:8| (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:63| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not |$knormal:8|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not |$knormal:8|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (not |$knormal:8|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:18| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:203| Bool) (|$cond-alpha-rename:204| Bool) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:316| Bool) (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:315| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:98| Int) )
    ( and (= |$cond-alpha-rename:99| (+ |$cond-alpha-rename:98| |$cond-alpha-rename:88|)) (= |$cond-alpha-rename:98| (* |$cond-alpha-rename:89| |$cond-alpha-rename:86|)) (= |$cond-alpha-rename:97| (* |$cond-alpha-rename:90| |$cond-alpha-rename:87|)) (= |$cond-alpha-rename:96| (< |$cond-alpha-rename:87| 0)) (= |$cond-alpha-rename:95| (> |$cond-alpha-rename:86| 0)) (= |$cond-alpha-rename:92| 0) (= |$cond-alpha-rename:91| 0) (= |$cond-alpha-rename:90| 0) (= |$cond-alpha-rename:89| 0) (= |$cond-alpha-rename:88| 0) (= |$cond-alpha-rename:320| (+ |$cond-alpha-rename:317| |$cond-alpha-rename:319|)) (= |$cond-alpha-rename:319| (+ |$cond-alpha-rename:318| |$cond-alpha-rename:307|)) (= |$cond-alpha-rename:318| (* |$cond-alpha-rename:308| |$cond-alpha-rename:305|)) (= |$cond-alpha-rename:317| (* |$cond-alpha-rename:309| |$cond-alpha-rename:306|)) (= |$cond-alpha-rename:316| (< |$cond-alpha-rename:306| 0)) (= |$cond-alpha-rename:315| (> |$cond-alpha-rename:305| 0)) (= |$cond-alpha-rename:311| 0) (= |$cond-alpha-rename:310| 0) (= |$cond-alpha-rename:309| 0) (= |$cond-alpha-rename:308| 0) (= |$cond-alpha-rename:307| 0) (= |$cond-alpha-rename:208| (+ |$cond-alpha-rename:205| |$cond-alpha-rename:207|)) (= |$cond-alpha-rename:207| (+ |$cond-alpha-rename:206| |$cond-alpha-rename:195|)) (= |$cond-alpha-rename:206| (* |$cond-alpha-rename:196| |$cond-alpha-rename:193|)) (= |$cond-alpha-rename:205| (* |$cond-alpha-rename:197| |$cond-alpha-rename:194|)) (= |$cond-alpha-rename:204| (< |$cond-alpha-rename:194| 0)) (= |$cond-alpha-rename:203| (> |$cond-alpha-rename:193| 0)) (= |$cond-alpha-rename:199| 0) (= |$cond-alpha-rename:198| 0) (= |$cond-alpha-rename:197| 0) (= |$cond-alpha-rename:196| 0) (= |$cond-alpha-rename:195| 0) (= |$cond-alpha-rename:100| (+ |$cond-alpha-rename:97| |$cond-alpha-rename:99|)) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:95|) (not |$cond-alpha-rename:315|) (not |$cond-alpha-rename:203|) |$cond-alpha-rename:96| (not (= |$cond-alpha-rename:53| 0)) |$cond-alpha-rename:316| |$cond-alpha-rename:204| (|main_1037$unknown:23| |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|main_1037$unknown:23| |$cond-alpha-rename:306| |$cond-alpha-rename:305|) (|main_1037$unknown:23| |$cond-alpha-rename:194| |$cond-alpha-rename:193|) (|app_1030$unknown:12| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$cond-alpha-rename:53| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:100| |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|app_1030$unknown:12| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:320| |$cond-alpha-rename:311| |$cond-alpha-rename:310|) (|app_1030$unknown:12| |$cond-alpha-rename:314| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:320| |$cond-alpha-rename:311| |$cond-alpha-rename:310|) (|app_1030$unknown:12| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:53| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:320| |$cond-alpha-rename:311| |$cond-alpha-rename:310|) (|app_1030$unknown:12| |$cond-alpha-rename:202| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:208| |$cond-alpha-rename:199| |$cond-alpha-rename:198|) (|app_1030$unknown:12| |$cond-alpha-rename:201| |$cond-alpha-rename:200| |$cond-alpha-rename:53| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:208| |$cond-alpha-rename:199| |$cond-alpha-rename:198|) )
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:331| Bool) (|$cond-alpha-rename:110| Bool) (|$cond-alpha-rename:220| Bool) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:102| Int) (|$knormal:30| Int) (|$cond-alpha-rename:330| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:326| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-22:x_1036| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:328| Int) (|$knormal:29| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:111| Bool) (|$cond-alpha-rename:332| Bool) (|$cond-alpha-rename:219| Bool) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$cond-alpha-rename:336| (+ |$cond-alpha-rename:333| |$cond-alpha-rename:335|)) (= |$cond-alpha-rename:335| (+ |$cond-alpha-rename:334| |$cond-alpha-rename:323|)) (= |$cond-alpha-rename:334| (* |$cond-alpha-rename:324| |$cond-alpha-rename:321|)) (= |$cond-alpha-rename:333| (* |$cond-alpha-rename:325| |$cond-alpha-rename:322|)) (= |$cond-alpha-rename:332| (< |$cond-alpha-rename:322| 0)) (= |$cond-alpha-rename:331| (> |$cond-alpha-rename:321| 0)) (= |$cond-alpha-rename:327| 0) (= |$cond-alpha-rename:326| 0) (= |$cond-alpha-rename:325| 0) (= |$cond-alpha-rename:324| 0) (= |$cond-alpha-rename:323| 0) (= |$cond-alpha-rename:224| (+ |$cond-alpha-rename:221| |$cond-alpha-rename:223|)) (= |$cond-alpha-rename:223| (+ |$cond-alpha-rename:222| |$cond-alpha-rename:211|)) (= |$cond-alpha-rename:222| (* |$cond-alpha-rename:212| |$cond-alpha-rename:209|)) (= |$cond-alpha-rename:221| (* |$cond-alpha-rename:213| |$cond-alpha-rename:210|)) (= |$cond-alpha-rename:220| (< |$cond-alpha-rename:210| 0)) (= |$cond-alpha-rename:219| (> |$cond-alpha-rename:209| 0)) (= |$cond-alpha-rename:215| 0) (= |$cond-alpha-rename:214| 0) (= |$cond-alpha-rename:213| 0) (= |$cond-alpha-rename:212| 0) (= |$cond-alpha-rename:211| 0) (= |$cond-alpha-rename:115| (+ |$cond-alpha-rename:112| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:114| (+ |$cond-alpha-rename:113| |$cond-alpha-rename:103|)) (= |$cond-alpha-rename:113| (* |$cond-alpha-rename:104| |$cond-alpha-rename:101|)) (= |$cond-alpha-rename:112| (* |$cond-alpha-rename:105| |$cond-alpha-rename:102|)) (= |$cond-alpha-rename:111| (< |$cond-alpha-rename:102| 0)) (= |$cond-alpha-rename:110| (> |$cond-alpha-rename:101| 0)) (= |$cond-alpha-rename:107| 0) (= |$cond-alpha-rename:106| 0) (= |$cond-alpha-rename:105| 0) (= |$cond-alpha-rename:104| 0) (= |$cond-alpha-rename:103| 0) (not |$cond-alpha-rename:331|) (not |$cond-alpha-rename:219|) (not |$cond-alpha-rename:110|) |$cond-alpha-rename:332| |$cond-alpha-rename:220| |$cond-alpha-rename:111| (not (= |$alpha-20:prev_set_flag_up_1088| 0)) (|main_1037$unknown:23| |$cond-alpha-rename:322| |$cond-alpha-rename:321|) (|main_1037$unknown:23| |$cond-alpha-rename:210| |$cond-alpha-rename:209|) (|main_1037$unknown:23| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (|fail$unknown:21| |$knormal:30| |$knormal:29|) (|app_1030$unknown:12| |$cond-alpha-rename:330| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:327| |$cond-alpha-rename:326| |$cond-alpha-rename:336| |$cond-alpha-rename:327| |$cond-alpha-rename:326|) (|app_1030$unknown:12| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:327| |$cond-alpha-rename:326| |$cond-alpha-rename:336| |$cond-alpha-rename:327| |$cond-alpha-rename:326|) (|app_1030$unknown:12| |$cond-alpha-rename:218| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:224| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (|app_1030$unknown:12| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:224| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (|app_1030$unknown:12| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:115| |$cond-alpha-rename:107| |$cond-alpha-rename:106|) (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:327| |$cond-alpha-rename:326| |$cond-alpha-rename:336| |$cond-alpha-rename:327| |$cond-alpha-rename:326|) )
      (|bot$unknown:14| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-34:s_up_x_1086| Int) (|$alpha-33:set_flag_up_1089| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:9| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true (= |$cond-alpha-rename:9| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:10| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:11| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:12| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:13| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:14| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| |$cond-alpha-rename:9| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12| |$knormal:60| |$cond-alpha-rename:13| |$cond-alpha-rename:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$alpha-33:set_flag_up_1089| Int) (|$alpha-34:s_up_x_1086| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_up_x_1086| 0) (= |$alpha-33:set_flag_up_1089| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true (= |$cond-alpha-rename:15| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:16| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:17| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:18| |$alpha-33:set_flag_up_1089|) (= |$cond-alpha-rename:19| |$alpha-34:s_up_x_1086|) (= |$cond-alpha-rename:20| |$alpha-33:set_flag_up_1089|) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| |$cond-alpha-rename:15| |$cond-alpha-rename:16| |$cond-alpha-rename:17| |$cond-alpha-rename:18| |$knormal:39| |$cond-alpha-rename:19| |$cond-alpha-rename:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$V-reftype:96| Int) )
    (=>
      ( and (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$V-reftype:96| 1) (not |$knormal:32|) (not |$knormal:31|) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true )
      (|main_1037$unknown:24| |$V-reftype:96| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:118| Int) (|$V-reftype:75| Int) (|$cond-alpha-rename:235| Bool) (|$cond-alpha-rename:236| Bool) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:343| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:234| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:338| Int) (|$knormal:26| Int) (|$cond-alpha-rename:126| Bool) (|$cond-alpha-rename:348| Bool) (|$cond-alpha-rename:125| Bool) (|$cond-alpha-rename:347| Bool) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) )
    (=>
      ( and (= |$cond-alpha-rename:352| (+ |$cond-alpha-rename:349| |$cond-alpha-rename:351|)) (= |$cond-alpha-rename:351| (+ |$cond-alpha-rename:350| |$cond-alpha-rename:339|)) (= |$cond-alpha-rename:350| (* |$cond-alpha-rename:340| |$cond-alpha-rename:337|)) (= |$cond-alpha-rename:349| (* |$cond-alpha-rename:341| |$cond-alpha-rename:338|)) (= |$cond-alpha-rename:348| (< |$cond-alpha-rename:338| 0)) (= |$cond-alpha-rename:347| (> |$cond-alpha-rename:337| 0)) (= |$cond-alpha-rename:343| 0) (= |$cond-alpha-rename:342| 0) (= |$cond-alpha-rename:341| 0) (= |$cond-alpha-rename:340| 0) (= |$cond-alpha-rename:339| 0) (= |$cond-alpha-rename:240| (+ |$cond-alpha-rename:237| |$cond-alpha-rename:239|)) (= |$cond-alpha-rename:239| (+ |$cond-alpha-rename:238| |$cond-alpha-rename:227|)) (= |$cond-alpha-rename:238| (* |$cond-alpha-rename:228| |$cond-alpha-rename:225|)) (= |$cond-alpha-rename:237| (* |$cond-alpha-rename:229| |$cond-alpha-rename:226|)) (= |$cond-alpha-rename:236| (< |$cond-alpha-rename:226| 0)) (= |$cond-alpha-rename:235| (> |$cond-alpha-rename:225| 0)) (= |$cond-alpha-rename:231| 0) (= |$cond-alpha-rename:230| 0) (= |$cond-alpha-rename:229| 0) (= |$cond-alpha-rename:228| 0) (= |$cond-alpha-rename:227| 0) (= |$cond-alpha-rename:130| (+ |$cond-alpha-rename:127| |$cond-alpha-rename:129|)) (= |$cond-alpha-rename:129| (+ |$cond-alpha-rename:128| |$cond-alpha-rename:118|)) (= |$cond-alpha-rename:128| (* |$cond-alpha-rename:119| |$cond-alpha-rename:116|)) (= |$cond-alpha-rename:127| (* |$cond-alpha-rename:120| |$cond-alpha-rename:117|)) (= |$cond-alpha-rename:126| (< |$cond-alpha-rename:117| 0)) (= |$cond-alpha-rename:125| (> |$cond-alpha-rename:116| 0)) (= |$cond-alpha-rename:122| 0) (= |$cond-alpha-rename:121| 0) (= |$cond-alpha-rename:120| 0) (= |$cond-alpha-rename:119| 0) (= |$cond-alpha-rename:118| 0) (= |$V-reftype:75| |$knormal:26|) (not |$cond-alpha-rename:347|) (not |$cond-alpha-rename:235|) (not |$cond-alpha-rename:125|) (= |$alpha-20:prev_set_flag_up_1088| 0) |$cond-alpha-rename:348| |$cond-alpha-rename:236| |$cond-alpha-rename:126| (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (|main_1037$unknown:23| |$cond-alpha-rename:338| |$cond-alpha-rename:337|) (|main_1037$unknown:23| |$cond-alpha-rename:226| |$cond-alpha-rename:225|) (|main_1037$unknown:23| |$cond-alpha-rename:117| |$cond-alpha-rename:116|) (|app_1030$unknown:12| |$cond-alpha-rename:346| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:343| |$cond-alpha-rename:342| |$cond-alpha-rename:352| |$cond-alpha-rename:343| |$cond-alpha-rename:342|) (|app_1030$unknown:12| |$cond-alpha-rename:345| |$cond-alpha-rename:344| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:343| |$cond-alpha-rename:342| |$cond-alpha-rename:352| |$cond-alpha-rename:343| |$cond-alpha-rename:342|) (|app_1030$unknown:12| |$cond-alpha-rename:234| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:240| |$cond-alpha-rename:231| |$cond-alpha-rename:230|) (|app_1030$unknown:12| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:240| |$cond-alpha-rename:231| |$cond-alpha-rename:230|) (|app_1030$unknown:12| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:130| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:343| |$cond-alpha-rename:342| |$cond-alpha-rename:352| |$cond-alpha-rename:343| |$cond-alpha-rename:342|) )
      (|up_1032$unknown:28| |$V-reftype:75| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:363| Bool) (|$cond-alpha-rename:140| Bool) (|$cond-alpha-rename:364| Bool) (|$cond-alpha-rename:141| Bool) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:358| Int) (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-22:x_1036| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:252| Bool) (|$cond-alpha-rename:251| Bool) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:366| Int) )
    (=>
      ( and (= |$cond-alpha-rename:368| (+ |$cond-alpha-rename:365| |$cond-alpha-rename:367|)) (= |$cond-alpha-rename:367| (+ |$cond-alpha-rename:366| |$cond-alpha-rename:355|)) (= |$cond-alpha-rename:366| (* |$cond-alpha-rename:356| |$cond-alpha-rename:353|)) (= |$cond-alpha-rename:365| (* |$cond-alpha-rename:357| |$cond-alpha-rename:354|)) (= |$cond-alpha-rename:364| (< |$cond-alpha-rename:354| 0)) (= |$cond-alpha-rename:363| (> |$cond-alpha-rename:353| 0)) (= |$cond-alpha-rename:359| 0) (= |$cond-alpha-rename:358| 0) (= |$cond-alpha-rename:357| 0) (= |$cond-alpha-rename:356| 0) (= |$cond-alpha-rename:355| 0) (= |$cond-alpha-rename:256| (+ |$cond-alpha-rename:253| |$cond-alpha-rename:255|)) (= |$cond-alpha-rename:255| (+ |$cond-alpha-rename:254| |$cond-alpha-rename:243|)) (= |$cond-alpha-rename:254| (* |$cond-alpha-rename:244| |$cond-alpha-rename:241|)) (= |$cond-alpha-rename:253| (* |$cond-alpha-rename:245| |$cond-alpha-rename:242|)) (= |$cond-alpha-rename:252| (< |$cond-alpha-rename:242| 0)) (= |$cond-alpha-rename:251| (> |$cond-alpha-rename:241| 0)) (= |$cond-alpha-rename:247| 0) (= |$cond-alpha-rename:246| 0) (= |$cond-alpha-rename:245| 0) (= |$cond-alpha-rename:244| 0) (= |$cond-alpha-rename:243| 0) (= |$cond-alpha-rename:145| (+ |$cond-alpha-rename:142| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:144| (+ |$cond-alpha-rename:143| |$cond-alpha-rename:133|)) (= |$cond-alpha-rename:143| (* |$cond-alpha-rename:134| |$cond-alpha-rename:131|)) (= |$cond-alpha-rename:142| (* |$cond-alpha-rename:135| |$cond-alpha-rename:132|)) (= |$cond-alpha-rename:141| (< |$cond-alpha-rename:132| 0)) (= |$cond-alpha-rename:140| (> |$cond-alpha-rename:131| 0)) (= |$cond-alpha-rename:137| 0) (= |$cond-alpha-rename:136| 0) (= |$cond-alpha-rename:135| 0) (= |$cond-alpha-rename:134| 0) (= |$cond-alpha-rename:133| 0) (not |$cond-alpha-rename:363|) (not |$cond-alpha-rename:251|) (not |$cond-alpha-rename:140|) (= |$alpha-20:prev_set_flag_up_1088| 0) |$cond-alpha-rename:364| |$cond-alpha-rename:252| |$cond-alpha-rename:141| (|main_1037$unknown:23| |$cond-alpha-rename:354| |$cond-alpha-rename:353|) (|main_1037$unknown:23| |$cond-alpha-rename:242| |$cond-alpha-rename:241|) (|main_1037$unknown:23| |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|app_1030$unknown:12| |$cond-alpha-rename:362| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:368| |$cond-alpha-rename:359| |$cond-alpha-rename:358|) (|app_1030$unknown:12| |$cond-alpha-rename:361| |$cond-alpha-rename:360| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:368| |$cond-alpha-rename:359| |$cond-alpha-rename:358|) (|app_1030$unknown:12| |$cond-alpha-rename:250| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:256| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (|app_1030$unknown:12| |$cond-alpha-rename:249| |$cond-alpha-rename:248| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:256| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (|app_1030$unknown:12| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:137| |$cond-alpha-rename:136| |$cond-alpha-rename:145| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:368| |$cond-alpha-rename:359| |$cond-alpha-rename:358|) )
      (|up_without_checking_1115$unknown:31| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-18:set_flag_up_1089| Int) (|$knormal:19| Int) (|$alpha-15:set_flag_up_1089| Int) (|$alpha-17:x_1036| Int) (|$alpha-16:s_up_x_1086| Int) (|$knormal:21| Int) (|$knormal:15| Bool) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= |$knormal:15| (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (= |$V-reftype:70| |$knormal:21|) (not |$knormal:15|) (|up_without_checking_1115$unknown:32| |$knormal:21| |$knormal:19| |$alpha-17:x_1036| |$alpha-18:set_flag_up_1089|) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) true true )
      (|up_without_checking_1115$unknown:32| |$V-reftype:70| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$alpha-15:set_flag_up_1089| Int) (|$alpha-17:x_1036| Int) (|$alpha-16:s_up_x_1086| Int) (|$knormal:15| Bool) )
    (=>
      ( and (= |$knormal:15| (= |$alpha-17:x_1036| 0)) (= |$V-reftype:68| 1) |$knormal:15| (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) true true )
      (|up_without_checking_1115$unknown:32| |$V-reftype:68| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$knormal:15| Bool) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$alpha-15:set_flag_up_1089| Int) (|$alpha-18:set_flag_up_1089| Int) )
    (=>
      ( and (= |$knormal:19| (+ |$alpha-17:x_1036| 1)) (= |$knormal:15| (= |$alpha-17:x_1036| 0)) (= |$alpha-18:set_flag_up_1089| 1) (not |$knormal:15|) (|up_without_checking_1115$unknown:31| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|) true true )
      (|up_without_checking_1115$unknown:31| |$knormal:19| |$alpha-17:x_1036| |$alpha-18:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

