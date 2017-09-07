(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_1030 x_DO_NOT_CARE_1216 x_DO_NOT_CARE_1217 f_EXPARAM_1084 x_DO_NOT_CARE_1214 x_DO_NOT_CARE_1215 f_1033 set_flag_down_1132 s_down_x_1129 x_1034 =
       f_1033 set_flag_down_1132 s_down_x_1129 x_1034
  
     let rec down_without_checking_1152 set_flag_down_1132 s_down_x_1129 x_1035 =
       let set_flag_down_1132 = true
       in
       let s_down_x_1129 = x_1035
       in
         if x_1035 = 0 then
           ()
         else
           down_without_checking_1152 set_flag_down_1132 s_down_x_1129
             (x_1035 - 1)
  
     let rec down_1031 prev_set_flag_down_1131 s_prev_down_x_1130 x_1035 =
       let u  =if prev_set_flag_down_1131 then
                let u_5840 = fail ()
                in
                  bot()
               else () in
              down_without_checking_1152 prev_set_flag_down_1131
                s_prev_down_x_1130 x_1035
  
     let rec up_1032 set_flag_down_1132 s_down_x_1129 x_1036 =
       if x_1036 = 0 then
         ()
       else
         up_1032 set_flag_down_1132 s_down_x_1129 (x_1036 + 1)
  
     let main_1037 t1_1039 t2_1040 =
       let set_flag_down_1132 = false in
       let s_down_x_1129 = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_down_1132 s_down_x_1129
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_down_1132 s_down_x_1129 down_1031 set_flag_down_1132
             s_down_x_1129 t1_1039
         else
           if t2_1040 < 0 then
             app_1030 set_flag_down_1132 s_down_x_1129
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_down_1132 s_down_x_1129 up_1032 set_flag_down_1132
               s_down_x_1129 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |down_without_checking_1152$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:14|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:29|
  ( Int ) Bool
)

(declare-fun |main_1037$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:27|
  ( Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:53| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$cond-alpha-rename:21| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-26:t2_1040| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:39| Int) (|$knormal:32| Bool) (|$V-reftype:95| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:53| |$cond-alpha-rename:21|) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$V-reftype:95| |$knormal:53|) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-26:t2_1040| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$alpha-26:t2_1040| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|main_1037$unknown:28| |$V-reftype:95| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:74| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$knormal:60| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-25:t1_1039| Int) (|$alpha-33:set_flag_down_1132| Int) (|$cond-alpha-rename:22| Int) (|$V-reftype:89| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:74| |$cond-alpha-rename:22|) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$V-reftype:89| |$knormal:74|) |$knormal:31| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-25:t1_1039| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$alpha-25:t1_1039| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|main_1037$unknown:28| |$V-reftype:89| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$V-reftype:11| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$V-reftype:11| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|up_1032$unknown:29| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$V-reftype:35| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:32| Int) (|$alpha-33:set_flag_down_1132| Int) (|down_1031| Int) (|$V-reftype:34| Int) (|$V-reftype:32| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:60| Int) (|$cond-alpha-rename:31| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$cond-alpha-rename:4| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:3| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:2| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:1| |$alpha-34:s_down_x_1129|) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:12| |$cond-alpha-rename:47| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$knormal:60| |$cond-alpha-rename:3| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:48| Int) (|$alpha-33:set_flag_down_1132| Int) (|up_1032| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:33| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:39| Int) (|$V-reftype:13| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:48| |$V-reftype:13| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|up_1032$unknown:30| |$V-reftype:13| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$cond-alpha-rename:35| Int) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|$V-reftype:54| Int) (|$V-reftype:15| Int) (|up_1032| Int) (|$alpha-33:set_flag_down_1132| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:49| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:49| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|up_1032$unknown:31| |$V-reftype:15| |$V-reftype:54| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$cond-alpha-rename:37| Int) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|up_1032| Int) (|$alpha-33:set_flag_down_1132| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:50| Int) (|$alpha-26:t2_1040| Int) (|$V-reftype:57| Int) (|$knormal:32| Bool) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$cond-alpha-rename:8| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:7| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:6| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:5| |$alpha-34:s_down_x_1129|) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|up_1032$unknown:32| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:50| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:56| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) )
      (|app_1030$unknown:9| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$knormal:39| |$cond-alpha-rename:7| |$cond-alpha-rename:8|)
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
  (forall ( (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:153| Int) (|$V-reftype:69| Int) (|$cond-alpha-rename:266| Bool) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:257| Int) (|$cond-alpha-rename:152| Int) (|$knormal:23| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:261| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$cond-alpha-rename:262| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:263| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:66| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:161| Bool) (|$cond-alpha-rename:62| Bool) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:258| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:65| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$cond-alpha-rename:66| (+ |$cond-alpha-rename:63| |$cond-alpha-rename:65|)) (= |$cond-alpha-rename:65| (+ |$cond-alpha-rename:64| |$cond-alpha-rename:55|)) (= |$cond-alpha-rename:64| (* |$cond-alpha-rename:56| |$cond-alpha-rename:53|)) (= |$cond-alpha-rename:63| (* |$cond-alpha-rename:57| |$cond-alpha-rename:54|)) (= |$cond-alpha-rename:62| (> |$cond-alpha-rename:53| 0)) (= |$cond-alpha-rename:59| 0) (= |$cond-alpha-rename:58| 0) (= |$cond-alpha-rename:57| 0) (= |$cond-alpha-rename:56| 0) (= |$cond-alpha-rename:55| 0) (= |$cond-alpha-rename:270| (+ |$cond-alpha-rename:267| |$cond-alpha-rename:269|)) (= |$cond-alpha-rename:269| (+ |$cond-alpha-rename:268| |$cond-alpha-rename:258|)) (= |$cond-alpha-rename:268| (* |$cond-alpha-rename:259| |$cond-alpha-rename:256|)) (= |$cond-alpha-rename:267| (* |$cond-alpha-rename:260| |$cond-alpha-rename:257|)) (= |$cond-alpha-rename:266| (> |$cond-alpha-rename:256| 0)) (= |$cond-alpha-rename:262| 0) (= |$cond-alpha-rename:261| 0) (= |$cond-alpha-rename:260| 0) (= |$cond-alpha-rename:259| 0) (= |$cond-alpha-rename:258| 0) (= |$cond-alpha-rename:165| (+ |$cond-alpha-rename:162| |$cond-alpha-rename:164|)) (= |$cond-alpha-rename:164| (+ |$cond-alpha-rename:163| |$cond-alpha-rename:153|)) (= |$cond-alpha-rename:163| (* |$cond-alpha-rename:154| |$cond-alpha-rename:151|)) (= |$cond-alpha-rename:162| (* |$cond-alpha-rename:155| |$cond-alpha-rename:152|)) (= |$cond-alpha-rename:161| (> |$cond-alpha-rename:151| 0)) (= |$cond-alpha-rename:157| 0) (= |$cond-alpha-rename:156| 0) (= |$cond-alpha-rename:155| 0) (= |$cond-alpha-rename:154| 0) (= |$cond-alpha-rename:153| 0) (= |$V-reftype:69| |$knormal:19|) |$cond-alpha-rename:62| |$cond-alpha-rename:266| |$cond-alpha-rename:161| (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (|main_1037$unknown:27| |$cond-alpha-rename:54| |$cond-alpha-rename:53|) (|main_1037$unknown:27| |$cond-alpha-rename:257| |$cond-alpha-rename:256|) (|main_1037$unknown:27| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|app_1030$unknown:12| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:66| |$cond-alpha-rename:59| |$cond-alpha-rename:58|) (|app_1030$unknown:12| |$cond-alpha-rename:265| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:262| |$cond-alpha-rename:261| |$cond-alpha-rename:270| |$cond-alpha-rename:262| |$cond-alpha-rename:261|) (|app_1030$unknown:12| |$cond-alpha-rename:264| |$cond-alpha-rename:263| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:262| |$cond-alpha-rename:261| |$cond-alpha-rename:270| |$cond-alpha-rename:262| |$cond-alpha-rename:261|) (|app_1030$unknown:12| |$cond-alpha-rename:160| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:165| |$cond-alpha-rename:157| |$cond-alpha-rename:156|) (|app_1030$unknown:12| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:165| |$cond-alpha-rename:157| |$cond-alpha-rename:156|) (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:262| |$cond-alpha-rename:261| |$cond-alpha-rename:270| |$cond-alpha-rename:262| |$cond-alpha-rename:261|) )
      (|down_1031$unknown:19| |$V-reftype:69| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:76| Bool) (|$cond-alpha-rename:176| Bool) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:271| Int) (|$cond-alpha-rename:166| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:277| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:72| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:281| Bool) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:78| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$cond-alpha-rename:80| (+ |$cond-alpha-rename:77| |$cond-alpha-rename:79|)) (= |$cond-alpha-rename:79| (+ |$cond-alpha-rename:78| |$cond-alpha-rename:69|)) (= |$cond-alpha-rename:78| (* |$cond-alpha-rename:70| |$cond-alpha-rename:67|)) (= |$cond-alpha-rename:77| (* |$cond-alpha-rename:71| |$cond-alpha-rename:68|)) (= |$cond-alpha-rename:76| (> |$cond-alpha-rename:67| 0)) (= |$cond-alpha-rename:73| 0) (= |$cond-alpha-rename:72| 0) (= |$cond-alpha-rename:71| 0) (= |$cond-alpha-rename:70| 0) (= |$cond-alpha-rename:69| 0) (= |$cond-alpha-rename:285| (+ |$cond-alpha-rename:282| |$cond-alpha-rename:284|)) (= |$cond-alpha-rename:284| (+ |$cond-alpha-rename:283| |$cond-alpha-rename:273|)) (= |$cond-alpha-rename:283| (* |$cond-alpha-rename:274| |$cond-alpha-rename:271|)) (= |$cond-alpha-rename:282| (* |$cond-alpha-rename:275| |$cond-alpha-rename:272|)) (= |$cond-alpha-rename:281| (> |$cond-alpha-rename:271| 0)) (= |$cond-alpha-rename:277| 0) (= |$cond-alpha-rename:276| 0) (= |$cond-alpha-rename:275| 0) (= |$cond-alpha-rename:274| 0) (= |$cond-alpha-rename:273| 0) (= |$cond-alpha-rename:180| (+ |$cond-alpha-rename:177| |$cond-alpha-rename:179|)) (= |$cond-alpha-rename:179| (+ |$cond-alpha-rename:178| |$cond-alpha-rename:168|)) (= |$cond-alpha-rename:178| (* |$cond-alpha-rename:169| |$cond-alpha-rename:166|)) (= |$cond-alpha-rename:177| (* |$cond-alpha-rename:170| |$cond-alpha-rename:167|)) (= |$cond-alpha-rename:176| (> |$cond-alpha-rename:166| 0)) (= |$cond-alpha-rename:172| 0) (= |$cond-alpha-rename:171| 0) (= |$cond-alpha-rename:170| 0) (= |$cond-alpha-rename:169| 0) (= |$cond-alpha-rename:168| 0) |$cond-alpha-rename:76| |$cond-alpha-rename:281| |$cond-alpha-rename:176| (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (|main_1037$unknown:27| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|main_1037$unknown:27| |$cond-alpha-rename:272| |$cond-alpha-rename:271|) (|main_1037$unknown:27| |$cond-alpha-rename:167| |$cond-alpha-rename:166|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|app_1030$unknown:12| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$cond-alpha-rename:80| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|app_1030$unknown:12| |$cond-alpha-rename:280| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:277| |$cond-alpha-rename:276| |$cond-alpha-rename:285| |$cond-alpha-rename:277| |$cond-alpha-rename:276|) (|app_1030$unknown:12| |$cond-alpha-rename:279| |$cond-alpha-rename:278| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:277| |$cond-alpha-rename:276| |$cond-alpha-rename:285| |$cond-alpha-rename:277| |$cond-alpha-rename:276|) (|app_1030$unknown:12| |$cond-alpha-rename:175| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:180| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|app_1030$unknown:12| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:180| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:277| |$cond-alpha-rename:276| |$cond-alpha-rename:285| |$cond-alpha-rename:277| |$cond-alpha-rename:276|) )
      (|down_without_checking_1152$unknown:22| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:183| Int) (|$V-reftype:71| Int) (|$cond-alpha-rename:90| Bool) (|$cond-alpha-rename:191| Bool) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:182| Int) (|$knormal:19| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:291| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:296| Bool) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:93| Int) )
    (=>
      ( and (= |$cond-alpha-rename:94| (+ |$cond-alpha-rename:91| |$cond-alpha-rename:93|)) (= |$cond-alpha-rename:93| (+ |$cond-alpha-rename:92| |$cond-alpha-rename:83|)) (= |$cond-alpha-rename:92| (* |$cond-alpha-rename:84| |$cond-alpha-rename:81|)) (= |$cond-alpha-rename:91| (* |$cond-alpha-rename:85| |$cond-alpha-rename:82|)) (= |$cond-alpha-rename:90| (> |$cond-alpha-rename:81| 0)) (= |$cond-alpha-rename:87| 0) (= |$cond-alpha-rename:86| 0) (= |$cond-alpha-rename:85| 0) (= |$cond-alpha-rename:84| 0) (= |$cond-alpha-rename:83| 0) (= |$cond-alpha-rename:300| (+ |$cond-alpha-rename:297| |$cond-alpha-rename:299|)) (= |$cond-alpha-rename:299| (+ |$cond-alpha-rename:298| |$cond-alpha-rename:288|)) (= |$cond-alpha-rename:298| (* |$cond-alpha-rename:289| |$cond-alpha-rename:286|)) (= |$cond-alpha-rename:297| (* |$cond-alpha-rename:290| |$cond-alpha-rename:287|)) (= |$cond-alpha-rename:296| (> |$cond-alpha-rename:286| 0)) (= |$cond-alpha-rename:292| 0) (= |$cond-alpha-rename:291| 0) (= |$cond-alpha-rename:290| 0) (= |$cond-alpha-rename:289| 0) (= |$cond-alpha-rename:288| 0) (= |$cond-alpha-rename:195| (+ |$cond-alpha-rename:192| |$cond-alpha-rename:194|)) (= |$cond-alpha-rename:194| (+ |$cond-alpha-rename:193| |$cond-alpha-rename:183|)) (= |$cond-alpha-rename:193| (* |$cond-alpha-rename:184| |$cond-alpha-rename:181|)) (= |$cond-alpha-rename:192| (* |$cond-alpha-rename:185| |$cond-alpha-rename:182|)) (= |$cond-alpha-rename:191| (> |$cond-alpha-rename:181| 0)) (= |$cond-alpha-rename:187| 0) (= |$cond-alpha-rename:186| 0) (= |$cond-alpha-rename:185| 0) (= |$cond-alpha-rename:184| 0) (= |$cond-alpha-rename:183| 0) (= |$V-reftype:71| |$knormal:19|) (= |$alpha-17:prev_set_flag_down_1131| 0) |$cond-alpha-rename:90| |$cond-alpha-rename:296| |$cond-alpha-rename:191| (|main_1037$unknown:27| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|main_1037$unknown:27| |$cond-alpha-rename:287| |$cond-alpha-rename:286|) (|main_1037$unknown:27| |$cond-alpha-rename:182| |$cond-alpha-rename:181|) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|app_1030$unknown:12| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:94| |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|app_1030$unknown:12| |$cond-alpha-rename:295| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:292| |$cond-alpha-rename:291| |$cond-alpha-rename:300| |$cond-alpha-rename:292| |$cond-alpha-rename:291|) (|app_1030$unknown:12| |$cond-alpha-rename:294| |$cond-alpha-rename:293| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:292| |$cond-alpha-rename:291| |$cond-alpha-rename:300| |$cond-alpha-rename:292| |$cond-alpha-rename:291|) (|app_1030$unknown:12| |$cond-alpha-rename:190| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:195| |$cond-alpha-rename:187| |$cond-alpha-rename:186|) (|app_1030$unknown:12| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:195| |$cond-alpha-rename:187| |$cond-alpha-rename:186|) (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:292| |$cond-alpha-rename:291| |$cond-alpha-rename:300| |$cond-alpha-rename:292| |$cond-alpha-rename:291|) )
      (|down_1031$unknown:19| |$V-reftype:71| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:311| Bool) (|$cond-alpha-rename:104| Bool) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:196| Int) (|$knormal:22| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:307| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$knormal:23| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:206| Bool) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:314| Int) )
    (=>
      ( and (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$cond-alpha-rename:99| 0) (= |$cond-alpha-rename:98| 0) (= |$cond-alpha-rename:97| 0) (= |$cond-alpha-rename:315| (+ |$cond-alpha-rename:312| |$cond-alpha-rename:314|)) (= |$cond-alpha-rename:314| (+ |$cond-alpha-rename:313| |$cond-alpha-rename:303|)) (= |$cond-alpha-rename:313| (* |$cond-alpha-rename:304| |$cond-alpha-rename:301|)) (= |$cond-alpha-rename:312| (* |$cond-alpha-rename:305| |$cond-alpha-rename:302|)) (= |$cond-alpha-rename:311| (> |$cond-alpha-rename:301| 0)) (= |$cond-alpha-rename:307| 0) (= |$cond-alpha-rename:306| 0) (= |$cond-alpha-rename:305| 0) (= |$cond-alpha-rename:304| 0) (= |$cond-alpha-rename:303| 0) (= |$cond-alpha-rename:210| (+ |$cond-alpha-rename:207| |$cond-alpha-rename:209|)) (= |$cond-alpha-rename:209| (+ |$cond-alpha-rename:208| |$cond-alpha-rename:198|)) (= |$cond-alpha-rename:208| (* |$cond-alpha-rename:199| |$cond-alpha-rename:196|)) (= |$cond-alpha-rename:207| (* |$cond-alpha-rename:200| |$cond-alpha-rename:197|)) (= |$cond-alpha-rename:206| (> |$cond-alpha-rename:196| 0)) (= |$cond-alpha-rename:202| 0) (= |$cond-alpha-rename:201| 0) (= |$cond-alpha-rename:200| 0) (= |$cond-alpha-rename:199| 0) (= |$cond-alpha-rename:198| 0) (= |$cond-alpha-rename:108| (+ |$cond-alpha-rename:105| |$cond-alpha-rename:107|)) (= |$cond-alpha-rename:107| (+ |$cond-alpha-rename:106| |$cond-alpha-rename:97|)) (= |$cond-alpha-rename:106| (* |$cond-alpha-rename:98| |$cond-alpha-rename:95|)) (= |$cond-alpha-rename:105| (* |$cond-alpha-rename:99| |$cond-alpha-rename:96|)) (= |$cond-alpha-rename:104| (> |$cond-alpha-rename:95| 0)) (= |$cond-alpha-rename:101| 0) (= |$cond-alpha-rename:100| 0) |$cond-alpha-rename:311| |$cond-alpha-rename:206| |$cond-alpha-rename:104| (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (|main_1037$unknown:27| |$cond-alpha-rename:96| |$cond-alpha-rename:95|) (|main_1037$unknown:27| |$cond-alpha-rename:302| |$cond-alpha-rename:301|) (|main_1037$unknown:27| |$cond-alpha-rename:197| |$cond-alpha-rename:196|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|app_1030$unknown:12| |$cond-alpha-rename:310| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$cond-alpha-rename:315| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|app_1030$unknown:12| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$cond-alpha-rename:315| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|app_1030$unknown:12| |$cond-alpha-rename:205| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:202| |$cond-alpha-rename:201| |$cond-alpha-rename:210| |$cond-alpha-rename:202| |$cond-alpha-rename:201|) (|app_1030$unknown:12| |$cond-alpha-rename:204| |$cond-alpha-rename:203| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:202| |$cond-alpha-rename:201| |$cond-alpha-rename:210| |$cond-alpha-rename:202| |$cond-alpha-rename:201|) (|app_1030$unknown:12| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:108| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$cond-alpha-rename:315| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) )
      (|bot$unknown:14| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:236| Bool) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:337| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:234| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:132| Bool) (|$cond-alpha-rename:341| Bool) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:343| Int) )
    (=>
      ( and (= |$cond-alpha-rename:345| (+ |$cond-alpha-rename:342| |$cond-alpha-rename:344|)) (= |$cond-alpha-rename:344| (+ |$cond-alpha-rename:343| |$cond-alpha-rename:333|)) (= |$cond-alpha-rename:343| (* |$cond-alpha-rename:334| |$cond-alpha-rename:331|)) (= |$cond-alpha-rename:342| (* |$cond-alpha-rename:335| |$cond-alpha-rename:332|)) (= |$cond-alpha-rename:341| (> |$cond-alpha-rename:331| 0)) (= |$cond-alpha-rename:337| 0) (= |$cond-alpha-rename:336| 0) (= |$cond-alpha-rename:335| 0) (= |$cond-alpha-rename:334| 0) (= |$cond-alpha-rename:333| 0) (= |$cond-alpha-rename:240| (+ |$cond-alpha-rename:237| |$cond-alpha-rename:239|)) (= |$cond-alpha-rename:239| (+ |$cond-alpha-rename:238| |$cond-alpha-rename:228|)) (= |$cond-alpha-rename:238| (* |$cond-alpha-rename:229| |$cond-alpha-rename:226|)) (= |$cond-alpha-rename:237| (* |$cond-alpha-rename:230| |$cond-alpha-rename:227|)) (= |$cond-alpha-rename:236| (> |$cond-alpha-rename:226| 0)) (= |$cond-alpha-rename:232| 0) (= |$cond-alpha-rename:231| 0) (= |$cond-alpha-rename:230| 0) (= |$cond-alpha-rename:229| 0) (= |$cond-alpha-rename:228| 0) (= |$cond-alpha-rename:136| (+ |$cond-alpha-rename:133| |$cond-alpha-rename:135|)) (= |$cond-alpha-rename:135| (+ |$cond-alpha-rename:134| |$cond-alpha-rename:125|)) (= |$cond-alpha-rename:134| (* |$cond-alpha-rename:126| |$cond-alpha-rename:123|)) (= |$cond-alpha-rename:133| (* |$cond-alpha-rename:127| |$cond-alpha-rename:124|)) (= |$cond-alpha-rename:132| (> |$cond-alpha-rename:123| 0)) (= |$cond-alpha-rename:129| 0) (= |$cond-alpha-rename:128| 0) (= |$cond-alpha-rename:127| 0) (= |$cond-alpha-rename:126| 0) (= |$cond-alpha-rename:125| 0) (= |$alpha-17:prev_set_flag_down_1131| 0) |$cond-alpha-rename:341| |$cond-alpha-rename:236| |$cond-alpha-rename:132| (|main_1037$unknown:27| |$cond-alpha-rename:332| |$cond-alpha-rename:331|) (|main_1037$unknown:27| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) (|main_1037$unknown:27| |$cond-alpha-rename:124| |$cond-alpha-rename:123|) (|app_1030$unknown:12| |$cond-alpha-rename:340| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:345| |$cond-alpha-rename:337| |$cond-alpha-rename:336|) (|app_1030$unknown:12| |$cond-alpha-rename:339| |$cond-alpha-rename:338| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:345| |$cond-alpha-rename:337| |$cond-alpha-rename:336|) (|app_1030$unknown:12| |$cond-alpha-rename:235| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:240| |$cond-alpha-rename:232| |$cond-alpha-rename:231|) (|app_1030$unknown:12| |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:240| |$cond-alpha-rename:232| |$cond-alpha-rename:231|) (|app_1030$unknown:12| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:129| |$cond-alpha-rename:128| |$cond-alpha-rename:136| |$cond-alpha-rename:129| |$cond-alpha-rename:128|) (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:345| |$cond-alpha-rename:337| |$cond-alpha-rename:336|) )
      (|down_without_checking_1152$unknown:22| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_down_x_1129| Int) (|$knormal:14| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (= |$V-reftype:66| |$knormal:14|) (not |$knormal:8|) (|down_without_checking_1152$unknown:23| |$knormal:14| |$knormal:12| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) true true )
      (|down_without_checking_1152$unknown:23| |$V-reftype:66| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_down_x_1129| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$V-reftype:64| 1) |$knormal:8| (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) true true )
      (|down_without_checking_1152$unknown:23| |$V-reftype:64| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$knormal:8| Bool) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-15:set_flag_down_1132| Int) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (not |$knormal:8|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) true true )
      (|down_without_checking_1152$unknown:22| |$knormal:12| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:391| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:403| Bool) (|$cond-alpha-rename:373| Bool) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:400| Int) (|$cond-alpha-rename:392| Int) (|$cond-alpha-rename:384| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:363| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:398| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:401| Int) (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:388| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:374| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:380| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:406| Int) )
    ( and (= |$cond-alpha-rename:407| (+ |$cond-alpha-rename:404| |$cond-alpha-rename:406|)) (= |$cond-alpha-rename:406| (+ |$cond-alpha-rename:405| |$cond-alpha-rename:395|)) (= |$cond-alpha-rename:405| (* |$cond-alpha-rename:396| |$cond-alpha-rename:393|)) (= |$cond-alpha-rename:404| (* |$cond-alpha-rename:397| |$cond-alpha-rename:394|)) (= |$cond-alpha-rename:403| (> |$cond-alpha-rename:393| 0)) (= |$cond-alpha-rename:399| 0) (= |$cond-alpha-rename:398| 0) (= |$cond-alpha-rename:397| 0) (= |$cond-alpha-rename:396| 0) (= |$cond-alpha-rename:395| 0) (= |$cond-alpha-rename:392| (+ |$cond-alpha-rename:389| |$cond-alpha-rename:391|)) (= |$cond-alpha-rename:391| (+ |$cond-alpha-rename:390| |$cond-alpha-rename:380|)) (= |$cond-alpha-rename:390| (* |$cond-alpha-rename:381| |$cond-alpha-rename:378|)) (= |$cond-alpha-rename:389| (* |$cond-alpha-rename:382| |$cond-alpha-rename:379|)) (= |$cond-alpha-rename:388| (> |$cond-alpha-rename:378| 0)) (= |$cond-alpha-rename:384| 0) (= |$cond-alpha-rename:383| 0) (= |$cond-alpha-rename:382| 0) (= |$cond-alpha-rename:381| 0) (= |$cond-alpha-rename:380| 0) (= |$cond-alpha-rename:377| (+ |$cond-alpha-rename:374| |$cond-alpha-rename:376|)) (= |$cond-alpha-rename:376| (+ |$cond-alpha-rename:375| |$cond-alpha-rename:366|)) (= |$cond-alpha-rename:375| (* |$cond-alpha-rename:367| |$cond-alpha-rename:364|)) (= |$cond-alpha-rename:374| (* |$cond-alpha-rename:368| |$cond-alpha-rename:365|)) (= |$cond-alpha-rename:373| (> |$cond-alpha-rename:364| 0)) (= |$cond-alpha-rename:370| 0) (= |$cond-alpha-rename:369| 0) (= |$cond-alpha-rename:368| 0) (= |$cond-alpha-rename:367| 0) (= |$cond-alpha-rename:366| 0) (= |$alpha-2:$$tmp::2| 1) |$cond-alpha-rename:403| |$cond-alpha-rename:388| |$cond-alpha-rename:373| (not (= |$cond-alpha-rename:361| 0)) (|main_1037$unknown:27| |$cond-alpha-rename:394| |$cond-alpha-rename:393|) (|main_1037$unknown:27| |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|main_1037$unknown:27| |$cond-alpha-rename:365| |$cond-alpha-rename:364|) (|app_1030$unknown:12| |$cond-alpha-rename:402| |$cond-alpha-rename:362| |$cond-alpha-rename:361| |$cond-alpha-rename:399| |$cond-alpha-rename:398| |$cond-alpha-rename:407| |$cond-alpha-rename:399| |$cond-alpha-rename:398|) (|app_1030$unknown:12| |$cond-alpha-rename:401| |$cond-alpha-rename:400| |$cond-alpha-rename:361| |$cond-alpha-rename:399| |$cond-alpha-rename:398| |$cond-alpha-rename:407| |$cond-alpha-rename:399| |$cond-alpha-rename:398|) (|app_1030$unknown:12| |$cond-alpha-rename:387| |$cond-alpha-rename:362| |$cond-alpha-rename:361| |$cond-alpha-rename:384| |$cond-alpha-rename:383| |$cond-alpha-rename:392| |$cond-alpha-rename:384| |$cond-alpha-rename:383|) (|app_1030$unknown:12| |$cond-alpha-rename:386| |$cond-alpha-rename:385| |$cond-alpha-rename:361| |$cond-alpha-rename:384| |$cond-alpha-rename:383| |$cond-alpha-rename:392| |$cond-alpha-rename:384| |$cond-alpha-rename:383|) (|app_1030$unknown:12| |$cond-alpha-rename:372| |$cond-alpha-rename:371| |$cond-alpha-rename:361| |$cond-alpha-rename:370| |$cond-alpha-rename:369| |$cond-alpha-rename:377| |$cond-alpha-rename:370| |$cond-alpha-rename:369|) (|app_1030$unknown:12| |$cond-alpha-rename:363| |$cond-alpha-rename:362| |$cond-alpha-rename:361| |$cond-alpha-rename:399| |$cond-alpha-rename:398| |$cond-alpha-rename:407| |$cond-alpha-rename:399| |$cond-alpha-rename:398|) )
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-33:set_flag_down_1132| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:9| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) |$knormal:31| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true (= |$cond-alpha-rename:9| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:10| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:11| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:12| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:13| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:14| |$alpha-33:set_flag_down_1132|) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| |$cond-alpha-rename:9| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12| |$knormal:60| |$cond-alpha-rename:13| |$cond-alpha-rename:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (not |$knormal:31|) |$knormal:32| (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true (= |$cond-alpha-rename:15| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:16| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:17| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:18| |$alpha-33:set_flag_down_1132|) (= |$cond-alpha-rename:19| |$alpha-34:s_down_x_1129|) (= |$cond-alpha-rename:20| |$alpha-33:set_flag_down_1132|) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| |$cond-alpha-rename:15| |$cond-alpha-rename:16| |$cond-alpha-rename:17| |$cond-alpha-rename:18| |$knormal:39| |$cond-alpha-rename:19| |$cond-alpha-rename:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$V-reftype:96| Int) )
    (=>
      ( and (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$V-reftype:96| 1) (not |$knormal:32|) (not |$knormal:31|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) true )
      (|main_1037$unknown:28| |$V-reftype:96| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:30| Int) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:28| Int) (|$V-reftype:75| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$V-reftype:75| |$knormal:30|) (not |$knormal:24|) (|up_1032$unknown:32| |$knormal:30| |$knormal:28| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) )
      (|up_1032$unknown:32| |$V-reftype:75| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$V-reftype:73| 1) |$knormal:24| (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) )
      (|up_1032$unknown:32| |$V-reftype:73| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (not |$knormal:24|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) )
      (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (not |$knormal:24|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) )
      (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (not |$knormal:24|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) )
      (|up_1032$unknown:31| |$knormal:28| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(check-sat)

(get-model)

