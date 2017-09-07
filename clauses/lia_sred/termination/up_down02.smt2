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
  
     let rec up_1032 up_without_checking_1115 prev_set_flag_up_1088 s_prev_up_x_1087 x_1036 =
       let u = if prev_set_flag_up_1088 then
                if (0 * 1) + (-s_prev_up_x_1087) > (0 * 1) + (-x_1036) &&
                   (0 * 1) + (-x_1036) >= 0 then
                  ()
                else
                  let u_3968 = fail ()
                  in
                    bot()
               else () in
              up_without_checking_1115 prev_set_flag_up_1088 s_prev_up_x_1087
                x_1036
  
     let rec up_without_checking_1115 set_flag_up_1089 s_up_x_1086 x_1036 =
       let set_flag_up_1089 = true
       in
       let s_up_x_1086 = x_1036
       in
         if x_1036 = 0 then
           ()
         else
           up_1032 up_without_checking_1115 set_flag_up_1089 s_up_x_1086 (x_1036 + 1)
  
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
               set_flag_up_1089 s_up_x_1086 up_without_checking_1115
               set_flag_up_1089 s_up_x_1086 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:25|
  ( Int ) Bool
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

(declare-fun |up_without_checking_1115$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:35|
  ( Int Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:34|
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

(declare-fun |up_without_checking_1115$unknown:33|
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
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:67| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:21| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-27:t2_1040| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:53| Int) (|$knormal:46| Bool) (|$V-reftype:117| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:67| |$cond-alpha-rename:21|) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$V-reftype:117| |$knormal:67|) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-27:t2_1040| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$alpha-27:t2_1040| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:117| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:88| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$knormal:74| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-26:t1_1039| Int) (|$alpha-34:set_flag_up_1089| Int) (|$cond-alpha-rename:22| Int) (|$V-reftype:111| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:88| |$cond-alpha-rename:22|) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$V-reftype:111| |$knormal:88|) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-26:t1_1039| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$alpha-26:t1_1039| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|main_1037$unknown:24| |$V-reftype:111| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$V-reftype:11| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$V-reftype:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:33| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-34:set_flag_up_1089| Int) (|$V-reftype:11| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:25| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$V-reftype:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|down_1031$unknown:16| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:69| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$V-reftype:13| Int) (|$knormal:74| Int) (|$alpha-35:s_up_x_1086| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|down_1031| Int) (|$alpha-34:set_flag_up_1089| Int) (|$cond-alpha-rename:39| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:39| |$V-reftype:13| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|down_1031$unknown:17| |$V-reftype:13| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:30| Int) (|$alpha-34:set_flag_up_1089| Int) (|down_1031| Int) (|$V-reftype:15| Int) (|$V-reftype:32| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$cond-alpha-rename:29| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:40| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$V-reftype:35| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:32| Int) (|$alpha-34:set_flag_up_1089| Int) (|down_1031| Int) (|$V-reftype:34| Int) (|$V-reftype:32| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$cond-alpha-rename:31| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$cond-alpha-rename:4| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:3| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:2| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:1| |$alpha-35:s_up_x_1086|) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:12| |$cond-alpha-rename:41| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$knormal:74| |$cond-alpha-rename:3| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:42| Int) (|$alpha-34:set_flag_up_1089| Int) (|up_without_checking_1115| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:33| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:53| Int) (|$V-reftype:13| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:42| |$V-reftype:13| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:34| |$V-reftype:13| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:35| Int) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|$V-reftype:62| Int) (|$V-reftype:15| Int) (|up_without_checking_1115| Int) (|$alpha-34:set_flag_up_1089| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:43| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:43| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:37| Int) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|up_without_checking_1115| Int) (|$alpha-34:set_flag_up_1089| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:44| Int) (|$alpha-27:t2_1040| Int) (|$V-reftype:65| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$cond-alpha-rename:8| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:7| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:6| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:5| |$alpha-35:s_up_x_1086|) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|up_without_checking_1115$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:44| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:12| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$knormal:53| |$cond-alpha-rename:7| |$cond-alpha-rename:8|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:67| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) (|bot$unknown:14| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:15| |$V-reftype:67| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$V-reftype:90| Int) (|$cond-alpha-rename:77| Bool) (|$knormal:19| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:60| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Bool) (|$knormal:31| Bool) (|$cond-alpha-rename:64| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:77| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$cond-alpha-rename:64| (+ |$cond-alpha-rename:62| 1)) (= |$cond-alpha-rename:63| (= |$cond-alpha-rename:62| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (= |$V-reftype:90| |$knormal:19|) (not |$knormal:31|) (not |$cond-alpha-rename:77|) (not |$cond-alpha-rename:63|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:36| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:75|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:60|) (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      (|up_1032$unknown:32| |$V-reftype:90| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:78| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$cond-alpha-rename:79| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:80| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:80| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$knormal:31|) (not |$cond-alpha-rename:80|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:79| |$cond-alpha-rename:78|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:79| |$cond-alpha-rename:78|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:78|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$cond-alpha-rename:83| Bool) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:82| Int) (|$knormal:34| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$cond-alpha-rename:81| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:31| Bool) (|$alpha-18:x_1036| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:83| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$knormal:31|) (not |$cond-alpha-rename:83|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:81|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:84| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$cond-alpha-rename:85| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:86| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:86| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$knormal:31|) (not |$cond-alpha-rename:86|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:84|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$knormal:14| Int) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$V-reftype:73| Int) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$V-reftype:73| |$knormal:14|) (not |$knormal:8|) (|down_1031$unknown:19| |$knormal:14| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:73| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (= |$alpha-14:x_1035| 0)) (= |$V-reftype:71| 1) |$knormal:8| (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$V-reftype:71| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
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
  (not (exists ( (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:89| Bool) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:59| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) )
    ( and (= |$cond-alpha-rename:89| (= |$cond-alpha-rename:46| 0)) (= |$cond-alpha-rename:59| (and |$cond-alpha-rename:54| |$cond-alpha-rename:58|)) (= |$cond-alpha-rename:58| (>= |$cond-alpha-rename:57| 0)) (= |$cond-alpha-rename:57| (+ |$cond-alpha-rename:55| |$cond-alpha-rename:56|)) (= |$cond-alpha-rename:56| (- |$cond-alpha-rename:47|)) (= |$cond-alpha-rename:55| 0) (= |$cond-alpha-rename:54| (> |$cond-alpha-rename:50| |$cond-alpha-rename:53|)) (= |$cond-alpha-rename:53| (+ |$cond-alpha-rename:51| |$cond-alpha-rename:52|)) (= |$cond-alpha-rename:52| (- |$cond-alpha-rename:47|)) (= |$cond-alpha-rename:51| 0) (= |$cond-alpha-rename:50| (+ |$cond-alpha-rename:48| |$cond-alpha-rename:49|)) (= |$cond-alpha-rename:49| (- |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:48| 0) (= |$cond-alpha-rename:47| (+ |$cond-alpha-rename:46| 1)) (= |$cond-alpha-rename:45| 1) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:89|) (not |$cond-alpha-rename:59|) (not (= |$cond-alpha-rename:45| 0)) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:46| |$cond-alpha-rename:88| |$cond-alpha-rename:87|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:88| |$cond-alpha-rename:87|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:87|) )
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:90| Int) (|$knormal:35| Int) (|$knormal:34| Int) (|$cond-alpha-rename:91| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:92| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:92| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$knormal:31|) (not |$cond-alpha-rename:92|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:91| |$cond-alpha-rename:90|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:91| |$cond-alpha-rename:90|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:90|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) )
      (|bot$unknown:14| |$knormal:32|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-34:set_flag_up_1089| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:9| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true (= |$cond-alpha-rename:9| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:10| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:11| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:12| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:13| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:14| |$alpha-34:set_flag_up_1089|) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| |$cond-alpha-rename:9| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12| |$knormal:74| |$cond-alpha-rename:13| |$cond-alpha-rename:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_up_x_1086| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true (= |$cond-alpha-rename:15| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:16| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:17| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:18| |$alpha-34:set_flag_up_1089|) (= |$cond-alpha-rename:19| |$alpha-35:s_up_x_1086|) (= |$cond-alpha-rename:20| |$alpha-34:set_flag_up_1089|) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| |$cond-alpha-rename:15| |$cond-alpha-rename:16| |$cond-alpha-rename:17| |$cond-alpha-rename:18| |$knormal:53| |$cond-alpha-rename:19| |$cond-alpha-rename:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:46| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$V-reftype:118| Int) )
    (=>
      ( and (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$V-reftype:118| 1) (not |$knormal:46|) (not |$knormal:45|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true )
      (|main_1037$unknown:24| |$V-reftype:118| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|$V-reftype:44| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (not |$knormal:36|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:25| |$V-reftype:44|) )
      (|up_without_checking_1115$unknown:33| |$V-reftype:44|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|$V-reftype:46| Int) (|up_without_checking_1115| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (not |$knormal:36|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:26| |$V-reftype:46| |up_without_checking_1115|) (|up_1032$unknown:25| |up_without_checking_1115|) )
      (|up_without_checking_1115$unknown:34| |$V-reftype:46| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|$V-reftype:48| Int) (|$V-reftype:62| Int) (|up_without_checking_1115| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (not |$knormal:36|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:27| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|) (|up_1032$unknown:26| |$V-reftype:62| |up_without_checking_1115|) (|up_1032$unknown:25| |up_without_checking_1115|) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$V-reftype:87| Int) (|$cond-alpha-rename:68| Bool) (|$knormal:19| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:65| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:67| Int) (|$knormal:31| Bool) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:69| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:95| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$cond-alpha-rename:69| (+ |$cond-alpha-rename:67| 1)) (= |$cond-alpha-rename:68| (= |$cond-alpha-rename:67| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (= |$V-reftype:87| |$knormal:19|) (not |$cond-alpha-rename:95|) (not |$cond-alpha-rename:68|) |$knormal:31| (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:36| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:93|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:65|) (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|) )
      (|up_1032$unknown:32| |$V-reftype:87| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:92| Int) (|$cond-alpha-rename:73| Bool) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:96| Int) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:97| Int) (|$knormal:19| Int) (|$cond-alpha-rename:98| Bool) (|$cond-alpha-rename:74| Int) )
    (=>
      ( and (= |$cond-alpha-rename:98| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$cond-alpha-rename:74| (+ |$cond-alpha-rename:72| 1)) (= |$cond-alpha-rename:73| (= |$cond-alpha-rename:72| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (= |$V-reftype:92| |$knormal:19|) (not |$cond-alpha-rename:98|) (not |$cond-alpha-rename:73|) (= |$alpha-16:prev_set_flag_up_1088| 0) (|up_without_checking_1115$unknown:36| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:96|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:70|) (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|) )
      (|up_1032$unknown:32| |$V-reftype:92| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:101| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:100| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$knormal:31| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:101| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:101|) |$knormal:31| (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:99|) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:31| Bool) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:102| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:104| Bool) (|$alpha-18:x_1036| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:104| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:104|) |$knormal:31| (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:103| |$cond-alpha-rename:102|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:103| |$cond-alpha-rename:102|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:102|) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:107| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$knormal:31| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:27| 0) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:20| 0) (= |$cond-alpha-rename:107| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:107|) |$knormal:31| (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:105|) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:110| Bool) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:108| Int) (|$alpha-16:prev_set_flag_up_1088| Int) )
    (=>
      ( and (= |$cond-alpha-rename:110| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:110|) (= |$alpha-16:prev_set_flag_up_1088| 0) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:108|) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_up_1088| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:112| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:113| Bool) (|$alpha-18:x_1036| Int) )
    (=>
      ( and (= |$cond-alpha-rename:113| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:113|) (= |$alpha-16:prev_set_flag_up_1088| 0) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:112| |$cond-alpha-rename:111|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:112| |$cond-alpha-rename:111|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:111|) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:x_1036| Int) (|$cond-alpha-rename:116| Bool) (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:114| Int) (|$alpha-16:prev_set_flag_up_1088| Int) )
    (=>
      ( and (= |$cond-alpha-rename:116| (= |$alpha-17:s_prev_up_x_1087| 0)) (= |$alpha-18:x_1036| (+ |$alpha-17:s_prev_up_x_1087| 1)) (= |$alpha-16:prev_set_flag_up_1088| 1) (not |$cond-alpha-rename:116|) (= |$alpha-16:prev_set_flag_up_1088| 0) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|up_without_checking_1115$unknown:34| |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|up_without_checking_1115$unknown:33| |$cond-alpha-rename:114|) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:97| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-24:set_flag_up_1089| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$alpha-23:x_1036| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$alpha-24:set_flag_up_1089| 1) (= |$V-reftype:97| |$knormal:44|) (not |$knormal:36|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:32| |$knormal:44| |$knormal:42| |$alpha-23:x_1036| |$alpha-24:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:36| |$V-reftype:97| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) )
    (=>
      ( and (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$V-reftype:95| 1) |$knormal:36| (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:36| |$V-reftype:95| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

