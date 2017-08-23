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

(declare-fun |fail$unknown:20|
  ( Int ) Bool
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

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:29|
  ( Int ) Bool
)

(declare-fun |up_1032$unknown:28|
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
  (forall ( (|$alpha-10:s_up_x_1086| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-9:set_flag_up_1089| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:6| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_1034| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-9:set_flag_up_1089| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-10:s_up_x_1086| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:7| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_up_x_1086| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-9:set_flag_up_1089| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) )
      (|app_1030$unknown:8| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:69| Int) (|$alpha-10:s_up_x_1086| Int) (|$alpha-4:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1210| Int) (|$alpha-9:set_flag_up_1089| Int) (|$alpha-3:x_DO_NOT_CARE_1212| Int) (|$alpha-7:x_DO_NOT_CARE_1211| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) (|$knormal:7| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:10| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:11| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (|app_1030$unknown:9| |$knormal:7| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|) (= |$V-reftype:69| |$knormal:7|) )
      (|app_1030$unknown:13| |$V-reftype:69| |$alpha-11:x_1034| |$alpha-10:s_up_x_1086| |$alpha-9:set_flag_up_1089| |$alpha-7:x_DO_NOT_CARE_1211| |$alpha-6:x_DO_NOT_CARE_1210| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1213| |$alpha-3:x_DO_NOT_CARE_1212|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$V-reftype:117| Int) (|$knormal:46| Bool) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:67| Int) (|$alpha-27:t2_1040| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (|app_1030$unknown:13| |$knormal:67| |$alpha-27:t2_1040| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$V-reftype:117| |$knormal:67|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|main_1037$unknown:24| |$V-reftype:117| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$V-reftype:111| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-26:t1_1039| Int) (|$knormal:88| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:69| Int) )
    (=>
      ( and (|app_1030$unknown:13| |$knormal:88| |$alpha-26:t1_1039| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$V-reftype:111| |$knormal:88|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|main_1037$unknown:24| |$V-reftype:111| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|$V-reftype:11| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (|app_1030$unknown:6| |$V-reftype:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|up_without_checking_1115$unknown:33| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-34:set_flag_up_1089| Int) (|$V-reftype:11| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:69| Int) )
    (=>
      ( and (|app_1030$unknown:6| |$V-reftype:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|down_1031$unknown:16| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:69| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$V-reftype:13| Int) (|$alpha-34:set_flag_up_1089| Int) (|down_1031| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:74| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:13| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|down_1031$unknown:17| |$V-reftype:13| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$V-reftype:15| Int) (|$knormal:74| Int) (|$alpha-35:s_up_x_1086| Int) (|down_1031| Int) (|$alpha-34:set_flag_up_1089| Int) (|$V-reftype:32| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:69| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$V-reftype:35| Int) (|$V-reftype:34| Int) (|$knormal:74| Int) (|$alpha-35:s_up_x_1086| Int) (|down_1031| Int) (|$alpha-34:set_flag_up_1089| Int) (|$V-reftype:32| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:69| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:8| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$knormal:53| Int) (|$alpha-35:s_up_x_1086| Int) (|up_without_checking_1115| Int) (|$alpha-34:set_flag_up_1089| Int) (|$V-reftype:13| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:13| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|up_without_checking_1115$unknown:34| |$V-reftype:13| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$V-reftype:62| Int) (|$alpha-34:set_flag_up_1089| Int) (|up_without_checking_1115| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:53| Int) (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$V-reftype:65| Int) (|$alpha-27:t2_1040| Int) (|$V-reftype:62| Int) (|$alpha-34:set_flag_up_1089| Int) (|up_without_checking_1115| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:53| Int) (|$V-reftype:64| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$knormal:48| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:7| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|app_1030$unknown:8| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|) (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|up_without_checking_1115$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:14| |$alpha-1:$$tmp::1|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) (= |$V-reftype:67| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:15| |$V-reftype:67| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:14| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:14| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:31| Bool) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-18:x_1036| Int) (|$knormal:34| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:19| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$V-reftype:90| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:33| |$knormal:32|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|up_1032$unknown:28| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$V-reftype:90| |$knormal:19|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:32| 1) (= |$knormal:34| 1) )
      (|up_1032$unknown:32| |$V-reftype:90| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (|bot$unknown:15| |$knormal:33| |$knormal:32|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:32| 1) (= |$knormal:34| 1) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:31| Bool) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$knormal:34| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:33| |$knormal:32|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:32| 1) (= |$knormal:34| 1) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (|bot$unknown:15| |$knormal:33| |$knormal:32|) (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:32| 1) (= |$knormal:34| 1) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$knormal:14| Int) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) (|$V-reftype:73| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:19| |$knormal:14| |$knormal:12| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not |$knormal:8|) (= |$V-reftype:73| |$knormal:14|) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:19| |$V-reftype:73| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) |$knormal:8| (= |$V-reftype:71| 1) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:19| |$V-reftype:71| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not |$knormal:8|) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:12| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not |$knormal:8|) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-12:set_flag_up_1089| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:17| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (|down_1031$unknown:18| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not |$knormal:8|) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
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
  (forall ( (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:35| Int) (|$knormal:34| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (|fail$unknown:21| |$knormal:35| |$knormal:34|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:32| 1) (= |$knormal:34| 1) )
      (|bot$unknown:14| |$knormal:32|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:69| Int) (|$knormal:74| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:1| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:10| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:69| Int) (|$knormal:74| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:2| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:69| Int) (|$knormal:74| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:3| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Int) (|$knormal:69| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:4| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$knormal:68| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:69| Int) (|$knormal:74| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:45| (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) )
      (|app_1030$unknown:5| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:74| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:1| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:10| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:11| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:2| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:3| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:48| Int) (|$alpha-35:s_up_x_1086| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$knormal:45| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:46| Bool) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-34:set_flag_up_1089| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:4| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:47| Int) (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-27:t2_1040| Int) (|$alpha-26:t1_1039| Int) (|$knormal:45| Bool) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) |$knormal:46| (not |$knormal:45|) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) )
      (|app_1030$unknown:5| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089| |$knormal:53| |$alpha-35:s_up_x_1086| |$alpha-34:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_up_1089| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$knormal:46| Bool) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$knormal:45| Bool) (|$V-reftype:118| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-35:s_up_x_1086| Int) )
    (=>
      ( and (|main_1037$unknown:22| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (not |$knormal:45|) (not |$knormal:46|) (= |$V-reftype:118| 1) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-34:set_flag_up_1089| 0) (= |$alpha-35:s_up_x_1086| 0) (= |$knormal:45| (> |$alpha-26:t1_1039| 0)) (= |$knormal:46| (< |$alpha-27:t2_1040| 0)) )
      (|main_1037$unknown:24| |$V-reftype:118| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|$V-reftype:44| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$alpha-24:set_flag_up_1089| Int) )
    (=>
      ( and (|up_1032$unknown:25| |$V-reftype:44|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_without_checking_1115$unknown:33| |$V-reftype:44|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:set_flag_up_1089| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|up_without_checking_1115| Int) (|$V-reftype:46| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) (|$knormal:42| Int) )
    (=>
      ( and (|up_1032$unknown:25| |up_without_checking_1115|) (|up_1032$unknown:26| |$V-reftype:46| |up_without_checking_1115|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_without_checking_1115$unknown:34| |$V-reftype:46| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|up_without_checking_1115| Int) (|$V-reftype:62| Int) (|$V-reftype:48| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$alpha-24:set_flag_up_1089| Int) )
    (=>
      ( and (|up_1032$unknown:25| |up_without_checking_1115|) (|up_1032$unknown:26| |$V-reftype:62| |up_without_checking_1115|) (|up_1032$unknown:27| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:set_flag_up_1089| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|$V-reftype:64| Int) (|$V-reftype:62| Int) (|up_without_checking_1115| Int) (|$alpha-21:set_flag_up_1089| Int) (|$V-reftype:65| Int) (|$knormal:36| Bool) (|$knormal:42| Int) )
    (=>
      ( and (|up_1032$unknown:25| |up_without_checking_1115|) (|up_1032$unknown:26| |$V-reftype:62| |up_without_checking_1115|) (|up_1032$unknown:27| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_1032$unknown:28| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$alpha-20:u| Int) (|$V-reftype:87| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$knormal:19| Int) (|$alpha-18:x_1036| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:31| Bool) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (|up_1032$unknown:28| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) |$knormal:31| (= |$V-reftype:87| |$knormal:19|) (= |$alpha-20:u| 1) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) )
      (|up_1032$unknown:32| |$V-reftype:87| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:u| Int) (|$V-reftype:92| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-18:x_1036| Int) (|$knormal:19| Int) (|$alpha-17:s_prev_up_x_1087| Int) )
    (=>
      ( and (|up_1032$unknown:28| |$knormal:19| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (= |$alpha-16:prev_set_flag_up_1088| 0) (= |$V-reftype:92| |$knormal:19|) (= |$alpha-20:u| 1) )
      (|up_1032$unknown:32| |$V-reftype:92| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$knormal:31| Bool) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-20:u| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) |$knormal:31| (= |$alpha-20:u| 1) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$alpha-20:u| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$knormal:31| Bool) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) |$knormal:31| (= |$alpha-20:u| 1) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:28| Int) (|$knormal:26| Bool) (|$knormal:23| Int) (|$knormal:20| Int) (|$knormal:31| Bool) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-20:u| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:30| Bool) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) |$knormal:31| (= |$alpha-20:u| 1) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:21| Int) (|$knormal:31| Bool) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-16:prev_set_flag_up_1088| Int) (|$knormal:20| Int) (|$knormal:23| Int) (|$knormal:26| Bool) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:34| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (not (= |$alpha-16:prev_set_flag_up_1088| 0)) (not |$knormal:31|) (= |$knormal:20| 0) (= |$knormal:21| (- |$alpha-17:s_prev_up_x_1087|)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:23| 0) (= |$knormal:24| (- |$alpha-18:x_1036|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:26| (> |$knormal:22| |$knormal:25|)) (= |$knormal:27| 0) (= |$knormal:28| (- |$alpha-18:x_1036|)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:30| (>= |$knormal:29| 0)) (= |$knormal:31| (and |$knormal:26| |$knormal:30|)) (= |$knormal:34| 1) )
      (|fail$unknown:20| |$knormal:34|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (= |$alpha-16:prev_set_flag_up_1088| 0) (= |$alpha-20:u| 1) )
      (|up_1032$unknown:25| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:u| Int) (|$alpha-18:x_1036| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-16:prev_set_flag_up_1088| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (= |$alpha-16:prev_set_flag_up_1088| 0) (= |$alpha-20:u| 1) )
      (|up_1032$unknown:26| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_up_1088| Int) (|$alpha-17:s_prev_up_x_1087| Int) (|$alpha-18:x_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:30| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (|up_1032$unknown:31| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|) (= |$alpha-16:prev_set_flag_up_1088| 0) (= |$alpha-20:u| 1) )
      (|up_1032$unknown:27| |$alpha-18:x_1036| |$alpha-17:s_prev_up_x_1087| |$alpha-16:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:97| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-24:set_flag_up_1089| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$alpha-23:x_1036| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) )
    (=>
      ( and (|up_1032$unknown:32| |$knormal:44| |$knormal:42| |$alpha-23:x_1036| |$alpha-24:set_flag_up_1089|) (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$V-reftype:97| |$knormal:44|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_without_checking_1115$unknown:36| |$V-reftype:97| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:set_flag_up_1089| Int) (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$V-reftype:95| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) |$knormal:36| (= |$V-reftype:95| 1) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) )
      (|up_without_checking_1115$unknown:36| |$V-reftype:95| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$alpha-24:set_flag_up_1089| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_1032$unknown:29| |$alpha-24:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:set_flag_up_1089| Int) (|$alpha-23:x_1036| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-21:set_flag_up_1089| Int) (|$knormal:36| Bool) (|$knormal:42| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_1032$unknown:30| |$alpha-23:x_1036| |$alpha-24:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:36| Bool) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$alpha-24:set_flag_up_1089| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:33| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:34| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (not |$knormal:36|) (= |$alpha-24:set_flag_up_1089| 1) (= |$knormal:36| (= |$alpha-23:x_1036| 0)) (= |$knormal:42| (+ |$alpha-23:x_1036| 1)) )
      (|up_1032$unknown:31| |$knormal:42| |$alpha-23:x_1036| |$alpha-24:set_flag_up_1089|)
    )
  )
)
(check-sat)

