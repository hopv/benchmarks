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
  
     let rec down_1031 down_without_checking_1152 prev_set_flag_down_1131 s_prev_down_x_1130 x_1035 =
       let u =  if prev_set_flag_down_1131 then
                if (0 * 1) + (1 * s_prev_down_x_1130) > (0 * 1) + (1 * x_1035) &&
                   (0 * 1) + (1 * x_1035) >= 0 then
                  ()
                else
                  let u_8406 = fail ()
                  in
                    bot()
                else () in
              down_without_checking_1152 prev_set_flag_down_1131
                s_prev_down_x_1130 x_1035
  
     let rec down_without_checking_1152 set_flag_down_1132 s_down_x_1129 x_1035 =
       let set_flag_down_1132 = true
       in
       let s_down_x_1129 = x_1035
       in
         if x_1035 = 0 then
           ()
         else
           down_1031 down_without_checking_1152 set_flag_down_1132 s_down_x_1129 (x_1035 - 1)
  
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
             set_flag_down_1132 s_down_x_1129 down_without_checking_1152
             set_flag_down_1132 s_down_x_1129 t1_1039
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

(declare-fun |down_1031$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
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

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:14|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:35|
  ( Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:34|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:27|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:24|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:33|
  ( Int ) Bool
)

(declare-fun |main_1037$unknown:32|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:67| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:21| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-27:t2_1040| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:53| Int) (|$knormal:46| Bool) (|$V-reftype:117| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:67| |$cond-alpha-rename:21|) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$V-reftype:117| |$knormal:67|) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-27:t2_1040| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$alpha-27:t2_1040| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|main_1037$unknown:32| |$V-reftype:117| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:88| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$knormal:74| Int) (|$alpha-35:s_down_x_1129| Int) (|$alpha-26:t1_1039| Int) (|$alpha-34:set_flag_down_1132| Int) (|$cond-alpha-rename:22| Int) (|$V-reftype:111| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:88| |$cond-alpha-rename:22|) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$V-reftype:111| |$knormal:88|) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-26:t1_1039| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$alpha-26:t1_1039| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|main_1037$unknown:32| |$V-reftype:111| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$knormal:53| Int) (|$alpha-35:s_down_x_1129| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$V-reftype:11| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$V-reftype:11| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|up_1032$unknown:33| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-34:set_flag_down_1132| Int) (|$V-reftype:11| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:25| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:74| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$V-reftype:11| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:24| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:69| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$V-reftype:13| Int) (|$knormal:74| Int) (|$alpha-35:s_down_x_1129| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|down_without_checking_1152| Int) (|$alpha-34:set_flag_down_1132| Int) (|$cond-alpha-rename:39| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:39| |$V-reftype:13| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:25| |$V-reftype:13| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:30| Int) (|$alpha-34:set_flag_down_1132| Int) (|down_without_checking_1152| Int) (|$V-reftype:15| Int) (|$V-reftype:47| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:74| Int) (|$cond-alpha-rename:29| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:40| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$V-reftype:50| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:32| Int) (|$alpha-34:set_flag_down_1132| Int) (|down_without_checking_1152| Int) (|$V-reftype:49| Int) (|$V-reftype:47| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:74| Int) (|$cond-alpha-rename:31| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$cond-alpha-rename:4| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:3| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:2| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:1| |$alpha-35:s_down_x_1129|) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|down_without_checking_1152$unknown:27| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|) (|app_1030$unknown:12| |$cond-alpha-rename:41| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$knormal:74| |$cond-alpha-rename:3| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:42| Int) (|$alpha-34:set_flag_down_1132| Int) (|up_1032| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:33| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:53| Int) (|$V-reftype:13| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:42| |$V-reftype:13| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|up_1032$unknown:34| |$V-reftype:13| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:35| Int) (|$knormal:53| Int) (|$alpha-35:s_down_x_1129| Int) (|$V-reftype:62| Int) (|$V-reftype:15| Int) (|up_1032| Int) (|$alpha-34:set_flag_down_1132| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:43| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:43| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|up_1032$unknown:35| |$V-reftype:15| |$V-reftype:62| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:37| Int) (|$knormal:53| Int) (|$alpha-35:s_down_x_1129| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|up_1032| Int) (|$alpha-34:set_flag_down_1132| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:44| Int) (|$alpha-27:t2_1040| Int) (|$V-reftype:65| Int) (|$knormal:46| Bool) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$cond-alpha-rename:8| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:7| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:6| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:5| |$alpha-35:s_down_x_1129|) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|up_1032$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032|) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:12| |$cond-alpha-rename:44| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) (|app_1030$unknown:12| |$V-reftype:64| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$knormal:53| |$cond-alpha-rename:7| |$cond-alpha-rename:8|)
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
  (forall ( (|$knormal:23| Bool) (|$knormal:20| Int) (|$knormal:18| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:14| Int) (|$V-reftype:86| Int) (|$cond-alpha-rename:62| Bool) (|$knormal:28| Int) (|$knormal:12| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:45| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:47| Int) (|$knormal:27| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:24| Bool) (|$cond-alpha-rename:49| Int) (|$knormal:13| Int) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:62| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$cond-alpha-rename:49| (- |$cond-alpha-rename:47| 1)) (= |$cond-alpha-rename:48| (= |$cond-alpha-rename:47| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (= |$V-reftype:86| |$knormal:12|) (not |$knormal:24|) (not |$cond-alpha-rename:62|) (not |$cond-alpha-rename:48|) (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_without_checking_1152$unknown:27| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:47| |$cond-alpha-rename:46| |$cond-alpha-rename:45|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:46| |$cond-alpha-rename:45|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:60|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:45|) (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|) (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:23| |$V-reftype:86| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:13| Int) (|$alpha-15:x_1035| Int) (|$knormal:24| Bool) (|$alpha-13:prev_set_flag_down_1131| Int) (|$knormal:28| Int) (|$cond-alpha-rename:63| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$cond-alpha-rename:64| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$knormal:27| Int) (|$cond-alpha-rename:65| Bool) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:23| Bool) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:65| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$knormal:24|) (not |$cond-alpha-rename:65|) (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:63|) (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$knormal:20| Int) (|$knormal:18| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:14| Int) (|$cond-alpha-rename:68| Bool) (|$knormal:27| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:67| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$cond-alpha-rename:66| Int) (|$knormal:28| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$knormal:24| Bool) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:68| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$knormal:24|) (not |$cond-alpha-rename:68|) (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:67| |$cond-alpha-rename:66|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:67| |$cond-alpha-rename:66|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:66|) (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:13| Int) (|$alpha-15:x_1035| Int) (|$knormal:24| Bool) (|$alpha-13:prev_set_flag_down_1131| Int) (|$knormal:28| Int) (|$cond-alpha-rename:69| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$cond-alpha-rename:70| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$knormal:27| Int) (|$cond-alpha-rename:71| Bool) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:23| Bool) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:71| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$knormal:24|) (not |$cond-alpha-rename:71|) (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:70| |$cond-alpha-rename:69|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:70| |$cond-alpha-rename:69|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:69|) (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-20:x_1035| Int) (|$alpha-19:s_down_x_1129| Int) (|$V-reftype:29| Int) (|$alpha-18:set_flag_down_1132| Int) (|$knormal:29| Bool) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= |$knormal:29| (= |$alpha-20:x_1035| 0)) (not |$knormal:29|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:25| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:24| |$alpha-18:set_flag_down_1132|) (|down_1031$unknown:16| |$V-reftype:29|) )
      (|down_without_checking_1152$unknown:24| |$V-reftype:29|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Bool) (|$alpha-18:set_flag_down_1132| Int) (|$V-reftype:31| Int) (|down_without_checking_1152| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= |$knormal:29| (= |$alpha-20:x_1035| 0)) (not |$knormal:29|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:25| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:24| |$alpha-18:set_flag_down_1132|) (|down_1031$unknown:17| |$V-reftype:31| |down_without_checking_1152|) (|down_1031$unknown:16| |down_without_checking_1152|) )
      (|down_without_checking_1152$unknown:25| |$V-reftype:31| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-20:x_1035| Int) (|$alpha-19:s_down_x_1129| Int) (|$V-reftype:33| Int) (|$V-reftype:47| Int) (|down_without_checking_1152| Int) (|$alpha-18:set_flag_down_1132| Int) (|$knormal:29| Bool) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= |$knormal:29| (= |$alpha-20:x_1035| 0)) (not |$knormal:29|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:25| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:24| |$alpha-18:set_flag_down_1132|) (|down_1031$unknown:18| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|) (|down_1031$unknown:17| |$V-reftype:47| |down_without_checking_1152|) (|down_1031$unknown:16| |down_without_checking_1152|) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$knormal:20| Int) (|$knormal:18| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:14| Int) (|$V-reftype:83| Int) (|$cond-alpha-rename:53| Bool) (|$knormal:12| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:50| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:52| Int) (|$knormal:24| Bool) (|$cond-alpha-rename:74| Bool) (|$cond-alpha-rename:54| Int) (|$knormal:13| Int) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:74| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$cond-alpha-rename:54| (- |$cond-alpha-rename:52| 1)) (= |$cond-alpha-rename:53| (= |$cond-alpha-rename:52| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (= |$V-reftype:83| |$knormal:12|) (not |$cond-alpha-rename:74|) (not |$cond-alpha-rename:53|) |$knormal:24| (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|down_without_checking_1152$unknown:27| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$cond-alpha-rename:50|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:51| |$cond-alpha-rename:50|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:72|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:50|) (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|) )
      (|down_1031$unknown:23| |$V-reftype:83| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:88| Int) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:75| Int) (|$alpha-15:x_1035| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:76| Int) (|$knormal:12| Int) (|$cond-alpha-rename:77| Bool) (|$cond-alpha-rename:59| Int) )
    (=>
      ( and (= |$cond-alpha-rename:77| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$cond-alpha-rename:59| (- |$cond-alpha-rename:57| 1)) (= |$cond-alpha-rename:58| (= |$cond-alpha-rename:57| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (= |$V-reftype:88| |$knormal:12|) (not |$cond-alpha-rename:77|) (not |$cond-alpha-rename:58|) (= |$alpha-13:prev_set_flag_down_1131| 0) (|down_without_checking_1152$unknown:27| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:55|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:56| |$cond-alpha-rename:55|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:75|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:55|) (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|) )
      (|down_1031$unknown:23| |$V-reftype:88| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:13| Int) (|$alpha-15:x_1035| Int) (|$knormal:24| Bool) (|$alpha-13:prev_set_flag_down_1131| Int) (|$knormal:28| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$knormal:27| Int) (|$cond-alpha-rename:80| Bool) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:23| Bool) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:80| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$knormal:24|) (not |$cond-alpha-rename:80|) (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:79| |$cond-alpha-rename:78|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:79| |$cond-alpha-rename:78|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:78|) )
      (|bot$unknown:14| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:13| Int) (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:83| Bool) (|$alpha-13:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$knormal:24| Bool) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:23| Bool) )
    (=>
      ( and (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:83| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:83|) |$knormal:24| (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:81|) )
      (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$knormal:20| Int) (|$knormal:18| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:14| Int) (|$knormal:24| Bool) (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:84| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:86| Bool) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:86| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:86|) |$knormal:24| (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:84|) )
      (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:13| Int) (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:89| Bool) (|$alpha-13:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$knormal:24| Bool) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:23| Bool) )
    (=>
      ( and (= |$knormal:24| (and |$knormal:19| |$knormal:23|)) (= |$knormal:23| (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= |$knormal:19| (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$cond-alpha-rename:89| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:89|) |$knormal:24| (not (= |$alpha-13:prev_set_flag_down_1131| 0)) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:88| |$cond-alpha-rename:87|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:88| |$cond-alpha-rename:87|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:87|) )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:95| Bool) (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:93| Int) (|$alpha-13:prev_set_flag_down_1131| Int) )
    (=>
      ( and (= |$cond-alpha-rename:95| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:95|) (= |$alpha-13:prev_set_flag_down_1131| 0) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:93|) )
      (|down_1031$unknown:16| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:98| Bool) (|$alpha-15:x_1035| Int) )
    (=>
      ( and (= |$cond-alpha-rename:98| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:98|) (= |$alpha-13:prev_set_flag_down_1131| 0) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:96|) )
      (|down_1031$unknown:17| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1035| Int) (|$cond-alpha-rename:101| Bool) (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:99| Int) (|$alpha-13:prev_set_flag_down_1131| Int) )
    (=>
      ( and (= |$cond-alpha-rename:101| (= |$alpha-14:s_prev_down_x_1130| 0)) (= |$alpha-15:x_1035| (- |$alpha-14:s_prev_down_x_1130| 1)) (= |$alpha-13:prev_set_flag_down_1131| 1) (not |$cond-alpha-rename:101|) (= |$alpha-13:prev_set_flag_down_1131| 0) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:99|) )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:35| Int) (|$knormal:37| Int) (|$alpha-20:x_1035| Int) (|$alpha-18:set_flag_down_1132| Int) (|$knormal:29| Bool) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= |$knormal:29| (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (= |$V-reftype:93| |$knormal:37|) (not |$knormal:29|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:25| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:24| |$alpha-18:set_flag_down_1132|) (|down_1031$unknown:23| |$knormal:37| |$knormal:35| |$alpha-20:x_1035| |$alpha-21:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:27| |$V-reftype:93| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:91| Int) (|$alpha-20:x_1035| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-18:set_flag_down_1132| Int) (|$knormal:29| Bool) )
    (=>
      ( and (= |$knormal:29| (= |$alpha-20:x_1035| 0)) (= |$V-reftype:91| 1) |$knormal:29| (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:25| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:24| |$alpha-18:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:27| |$V-reftype:91| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:121| Bool) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:122| Bool) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:110| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:117| Bool) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) )
    ( and (= |$cond-alpha-rename:122| (and |$cond-alpha-rename:117| |$cond-alpha-rename:121|)) (= |$cond-alpha-rename:121| (>= |$cond-alpha-rename:120| 0)) (= |$cond-alpha-rename:120| (+ |$cond-alpha-rename:118| |$cond-alpha-rename:119|)) (= |$cond-alpha-rename:119| |$cond-alpha-rename:107|) (= |$cond-alpha-rename:118| 0) (= |$cond-alpha-rename:117| (> |$cond-alpha-rename:113| |$cond-alpha-rename:116|)) (= |$cond-alpha-rename:116| (+ |$cond-alpha-rename:114| |$cond-alpha-rename:115|)) (= |$cond-alpha-rename:115| |$cond-alpha-rename:107|) (= |$cond-alpha-rename:114| 0) (= |$cond-alpha-rename:113| (+ |$cond-alpha-rename:111| |$cond-alpha-rename:112|)) (= |$cond-alpha-rename:112| |$cond-alpha-rename:106|) (= |$cond-alpha-rename:111| 0) (= |$cond-alpha-rename:110| (= |$cond-alpha-rename:106| 0)) (= |$cond-alpha-rename:107| (- |$cond-alpha-rename:106| 1)) (= |$cond-alpha-rename:105| 1) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:122|) (not |$cond-alpha-rename:110|) (not (= |$cond-alpha-rename:105| 0)) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:106| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|down_without_checking_1152$unknown:25| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|down_without_checking_1152$unknown:24| |$cond-alpha-rename:108|) )
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-35:s_down_x_1129| Int) (|$alpha-34:set_flag_down_1132| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:9| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) |$knormal:45| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true (= |$cond-alpha-rename:9| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:10| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:11| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:12| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:13| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:14| |$alpha-34:set_flag_down_1132|) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| |$cond-alpha-rename:9| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12| |$knormal:74| |$cond-alpha-rename:13| |$cond-alpha-rename:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (not |$knormal:45|) |$knormal:46| (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true (= |$cond-alpha-rename:15| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:16| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:17| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:18| |$alpha-34:set_flag_down_1132|) (= |$cond-alpha-rename:19| |$alpha-35:s_down_x_1129|) (= |$cond-alpha-rename:20| |$alpha-34:set_flag_down_1132|) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| |$cond-alpha-rename:15| |$cond-alpha-rename:16| |$cond-alpha-rename:17| |$cond-alpha-rename:18| |$knormal:53| |$cond-alpha-rename:19| |$cond-alpha-rename:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:46| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$V-reftype:118| Int) )
    (=>
      ( and (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$V-reftype:118| 1) (not |$knormal:46|) (not |$knormal:45|) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) true )
      (|main_1037$unknown:32| |$V-reftype:118| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Bool) (|$knormal:44| Int) (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:42| Int) (|$V-reftype:97| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= |$knormal:38| (= |$alpha-25:x_1036| 0)) (= |$V-reftype:97| |$knormal:44|) (not |$knormal:38|) (|up_1032$unknown:36| |$knormal:44| |$knormal:42| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:35| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:36| |$V-reftype:97| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$alpha-25:x_1036| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-23:set_flag_down_1132| Int) (|$knormal:38| Bool) )
    (=>
      ( and (= |$knormal:38| (= |$alpha-25:x_1036| 0)) (= |$V-reftype:95| 1) |$knormal:38| (|up_1032$unknown:35| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:36| |$V-reftype:95| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-25:x_1036| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-23:set_flag_down_1132| Int) (|$knormal:38| Bool) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= |$knormal:38| (= |$alpha-25:x_1036| 0)) (not |$knormal:38|) (|up_1032$unknown:35| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Bool) (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= |$knormal:38| (= |$alpha-25:x_1036| 0)) (not |$knormal:38|) (|up_1032$unknown:35| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-25:x_1036| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-23:set_flag_down_1132| Int) (|$knormal:38| Bool) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= |$knormal:38| (= |$alpha-25:x_1036| 0)) (not |$knormal:38|) (|up_1032$unknown:35| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:34| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (|up_1032$unknown:33| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:35| |$knormal:42| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(check-sat)

(get-model)

