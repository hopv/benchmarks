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

(declare-fun |fail$unknown:24|
  ( Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:20|
  ( Int ) Bool
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

(declare-fun |down_1031$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:16|
  ( Int ) Bool
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

(declare-fun |main_1037$unknown:26|
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
  (forall ( (|$alpha-10:s_down_x_1129| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-9:set_flag_down_1132| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:10| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:11| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) )
      (|app_1030$unknown:6| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_1034| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-9:set_flag_down_1132| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-10:s_down_x_1129| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:10| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:11| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) )
      (|app_1030$unknown:7| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_down_x_1129| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-9:set_flag_down_1132| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:10| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:11| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) )
      (|app_1030$unknown:8| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-10:s_down_x_1129| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-9:set_flag_down_1132| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-11:x_1034| Int) (|$knormal:7| Int) )
    (=>
      ( and (|app_1030$unknown:1| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:10| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:11| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:2| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:3| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:4| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:5| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (|app_1030$unknown:9| |$knormal:7| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) (= |$V-reftype:61| |$knormal:7|) )
      (|app_1030$unknown:13| |$V-reftype:61| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$V-reftype:95| Int) (|$knormal:32| Bool) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:53| Int) (|$alpha-26:t2_1040| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (|app_1030$unknown:13| |$knormal:53| |$alpha-26:t2_1040| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$V-reftype:95| |$knormal:53|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|main_1037$unknown:28| |$V-reftype:95| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$V-reftype:89| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-25:t1_1039| Int) (|$knormal:74| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:60| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:55| Int) )
    (=>
      ( and (|app_1030$unknown:13| |$knormal:74| |$alpha-25:t1_1039| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$V-reftype:89| |$knormal:74|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|main_1037$unknown:28| |$V-reftype:89| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|$V-reftype:11| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (|app_1030$unknown:6| |$V-reftype:11| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|up_1032$unknown:29| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-33:set_flag_down_1132| Int) (|$V-reftype:11| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:60| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:55| Int) )
    (=>
      ( and (|app_1030$unknown:6| |$V-reftype:11| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|down_1031$unknown:16| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$V-reftype:13| Int) (|$alpha-33:set_flag_down_1132| Int) (|down_1031| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:60| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:13| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|down_1031$unknown:17| |$V-reftype:13| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$V-reftype:15| Int) (|$knormal:60| Int) (|$alpha-34:s_down_x_1129| Int) (|down_1031| Int) (|$alpha-33:set_flag_down_1132| Int) (|$V-reftype:32| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:55| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$V-reftype:35| Int) (|$V-reftype:34| Int) (|$knormal:60| Int) (|$alpha-34:s_down_x_1129| Int) (|down_1031| Int) (|$alpha-33:set_flag_down_1132| Int) (|$V-reftype:32| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:55| Int) )
    (=>
      ( and (|app_1030$unknown:6| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:8| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$knormal:39| Int) (|$alpha-34:s_down_x_1129| Int) (|up_1032| Int) (|$alpha-33:set_flag_down_1132| Int) (|$V-reftype:13| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:13| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|up_1032$unknown:30| |$V-reftype:13| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$V-reftype:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|up_1032| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:39| Int) (|$V-reftype:15| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|up_1032$unknown:31| |$V-reftype:15| |$V-reftype:54| |up_1032|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$V-reftype:57| Int) (|$alpha-26:t2_1040| Int) (|$V-reftype:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|up_1032| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:39| Int) (|$V-reftype:56| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$knormal:34| Int) )
    (=>
      ( and (|app_1030$unknown:6| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:7| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|app_1030$unknown:8| |$V-reftype:56| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|up_1032$unknown:32| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:9| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:14| |$alpha-1:$$tmp::1|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) (= |$V-reftype:59| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:15| |$V-reftype:59| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:23| Int) (|$knormal:19| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:22| Int) (|$V-reftype:69| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$V-reftype:69| |$knormal:19|) (= |$knormal:20| 1) (= |$knormal:22| 1) )
      (|down_1031$unknown:19| |$V-reftype:69| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$knormal:20| 1) (= |$knormal:22| 1) )
      (|down_without_checking_1152$unknown:20| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$knormal:20| 1) (= |$knormal:22| 1) )
      (|down_without_checking_1152$unknown:21| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:21| |$knormal:20|) (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$knormal:20| 1) (= |$knormal:22| 1) )
      (|down_without_checking_1152$unknown:22| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:u| Int) (|$V-reftype:71| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:19| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (= |$alpha-17:prev_set_flag_down_1131| 0) (= |$V-reftype:71| |$knormal:19|) (= |$alpha-21:u| 1) )
      (|down_1031$unknown:19| |$V-reftype:71| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$knormal:23| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$knormal:20| 1) (= |$knormal:22| 1) )
      (|bot$unknown:14| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:22| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (not (= |$alpha-17:prev_set_flag_down_1131| 0)) (= |$knormal:22| 1) )
      (|fail$unknown:24| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (= |$alpha-17:prev_set_flag_down_1131| 0) (= |$alpha-21:u| 1) )
      (|down_without_checking_1152$unknown:20| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:u| Int) (|$alpha-19:x_1035| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-17:prev_set_flag_down_1131| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (= |$alpha-17:prev_set_flag_down_1131| 0) (= |$alpha-21:u| 1) )
      (|down_without_checking_1152$unknown:21| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) )
    (=>
      ( and (|down_1031$unknown:16| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:17| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (= |$alpha-17:prev_set_flag_down_1131| 0) (= |$alpha-21:u| 1) )
      (|down_without_checking_1152$unknown:22| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-12:set_flag_down_1132| Int) (|$knormal:14| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|down_without_checking_1152$unknown:20| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:21| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:23| |$knormal:14| |$knormal:12| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|) (not |$knormal:8|) (= |$V-reftype:66| |$knormal:14|) (= |$alpha-15:set_flag_down_1132| 1) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:23| |$V-reftype:66| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_down_1132| Int) (|$knormal:8| Bool) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$V-reftype:64| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:20| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:21| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) |$knormal:8| (= |$V-reftype:64| 1) (= |$alpha-15:set_flag_down_1132| 1) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:23| |$V-reftype:64| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$knormal:8| Bool) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:20| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:21| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (not |$knormal:8|) (= |$alpha-15:set_flag_down_1132| 1) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:20| |$alpha-15:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_down_1132| Int) (|$alpha-14:x_1035| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-12:set_flag_down_1132| Int) (|$knormal:8| Bool) (|$knormal:12| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:20| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:21| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (not |$knormal:8|) (= |$alpha-15:set_flag_down_1132| 1) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:21| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$knormal:8| Bool) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:20| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:21| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (|down_without_checking_1152$unknown:22| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|) (not |$knormal:8|) (= |$alpha-15:set_flag_down_1132| 1) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$knormal:8| (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:22| |$knormal:12| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:24| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:55| Int) (|$knormal:60| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:1| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:10| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:55| Int) (|$knormal:60| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:11| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:2| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:55| Int) (|$knormal:60| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:3| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:60| Int) (|$knormal:55| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:54| Int) (|$knormal:56| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:4| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:55| Int) (|$knormal:60| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:31| (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:54| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= |$knormal:55| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:56| (+ |$knormal:55| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:60| (+ |$knormal:54| |$knormal:56|)) )
      (|app_1030$unknown:5| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:60| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:34| Int) (|$knormal:39| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:1| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:10| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:34| Int) (|$knormal:39| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:11| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:2| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:34| Int) (|$knormal:39| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:3| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$knormal:34| Int) (|$alpha-34:s_down_x_1129| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$knormal:31| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:32| Bool) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-33:set_flag_down_1132| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:4| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:33| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-26:t2_1040| Int) (|$alpha-25:t1_1039| Int) (|$knormal:31| Bool) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:34| Int) (|$knormal:39| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) |$knormal:32| (not |$knormal:31|) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) (= |$knormal:33| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= |$knormal:34| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:35| (+ |$knormal:34| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:39| (+ |$knormal:33| |$knormal:35|)) )
      (|app_1030$unknown:5| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:39| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:set_flag_down_1132| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$knormal:32| Bool) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$knormal:31| Bool) (|$V-reftype:96| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-34:s_down_x_1129| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-25:t1_1039|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (not |$knormal:31|) (not |$knormal:32|) (= |$V-reftype:96| 1) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-34:s_down_x_1129| 0) (= |$knormal:31| (> |$alpha-25:t1_1039| 0)) (= |$knormal:32| (< |$alpha-26:t2_1040| 0)) )
      (|main_1037$unknown:28| |$V-reftype:96| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:30| Int) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:28| Int) (|$V-reftype:75| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:32| |$knormal:30| |$knormal:28| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not |$knormal:24|) (= |$V-reftype:75| |$knormal:30|) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) )
      (|up_1032$unknown:32| |$V-reftype:75| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) |$knormal:24| (= |$V-reftype:73| 1) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) )
      (|up_1032$unknown:32| |$V-reftype:73| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not |$knormal:24|) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) )
      (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:28| Int) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not |$knormal:24|) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) )
      (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-24:x_1036| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-22:set_flag_down_1132| Int) (|$knormal:24| Bool) )
    (=>
      ( and (|up_1032$unknown:29| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:30| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (|up_1032$unknown:31| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not |$knormal:24|) (= |$knormal:24| (= |$alpha-24:x_1036| 0)) (= |$knormal:28| (+ |$alpha-24:x_1036| 1)) )
      (|up_1032$unknown:31| |$knormal:28| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(check-sat)

