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
                if (0 * 1) + (1 * s_prev_down_x_1130) > (0 * 1) + (1 * x_1035) &&
                   (0 * 1) + (1 * x_1035) >= 0 then
                  ()
                else
                  let u_7494 = fail ()
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
  
     let main t1_1039 t2_1040 =
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

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:29|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:18|
  ( Int Int Int ) Bool
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

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:s_down_x_1129| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-9:set_flag_down_1132| Int) )
    (=>
      ( and true true true true (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_down_x_1129| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-9:set_flag_down_1132| Int) )
    (=>
      ( and true true true true (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_down_x_1129| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-9:set_flag_down_1132| Int) )
    (=>
      ( and true true true true (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true )
      (|app_1030$unknown:8| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-10:s_down_x_1129| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-9:set_flag_down_1132| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:61| |$knormal:7|) (|app_1030$unknown:9| |$knormal:7| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true true (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true )
      (|app_1030$unknown:13| |$V-reftype:61| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:32| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:72| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) true true )
      (|down_1031$unknown:18| |$V-reftype:15| |$V-reftype:32| |down_1031|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:35| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) (|down_1031| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:8| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:72| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) true true )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:72| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:54| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:51| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) (|up_1032$unknown:29| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032|) (|app_1030$unknown:8| |$V-reftype:56| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:51| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|) true true )
      (|app_1030$unknown:9| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:51| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:59| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:15| |$V-reftype:59| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:83| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (= |$V-reftype:83| |$knormal:19|) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|fail$unknown:25| |$knormal:35| |$knormal:34|) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      (|down_1031$unknown:19| |$V-reftype:83| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|fail$unknown:25| |$knormal:35| |$knormal:34|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|fail$unknown:25| |$knormal:35| |$knormal:34|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|fail$unknown:25| |$knormal:35| |$knormal:34|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:33| |$knormal:32|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:80| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (= |$alpha-21:u| 1) (= |$V-reftype:80| |$knormal:19|) (not (= 0 |$knormal:31|)) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      (|down_1031$unknown:19| |$V-reftype:80| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$alpha-21:u| 1) (= |$V-reftype:85| |$knormal:19|) (not (not (= 0 |$alpha-17:prev_set_flag_down_1131|))) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      (|down_1031$unknown:19| |$V-reftype:85| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= |$knormal:32| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|fail$unknown:25| |$knormal:35| |$knormal:34|) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (= |$alpha-21:u| 1) (not (= 0 |$knormal:31|)) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (= |$alpha-21:u| 1) (not (= 0 |$knormal:31|)) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (= |$alpha-21:u| 1) (not (= 0 |$knormal:31|)) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:34| 1) (= (not (= 0 |$knormal:31|)) (and (not (= 0 |$knormal:26|)) (not (= 0 |$knormal:30|)))) (= (not (= 0 |$knormal:30|)) (>= |$knormal:29| 0)) (= |$knormal:29| (+ |$knormal:27| |$knormal:28|)) (= |$knormal:28| |$alpha-19:x_1035|) (= |$knormal:27| 0) (= (not (= 0 |$knormal:26|)) (> |$knormal:22| |$knormal:25|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-19:x_1035|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-18:s_prev_down_x_1130|) (= |$knormal:20| 0) (not (not (= 0 |$knormal:31|))) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      (|fail$unknown:24| |$knormal:34|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) )
    (=>
      ( and (= |$alpha-21:u| 1) (not (not (= 0 |$alpha-17:prev_set_flag_down_1131|))) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) )
    (=>
      ( and (= |$alpha-21:u| 1) (not (not (= 0 |$alpha-17:prev_set_flag_down_1131|))) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$alpha-21:u| Int) )
    (=>
      ( and (= |$alpha-21:u| 1) (not (not (= 0 |$alpha-17:prev_set_flag_down_1131|))) (|down_1031$unknown:18| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (= |$V-reftype:66| |$knormal:14|) (not (not (= 0 |$knormal:8|))) (|down_without_checking_1152$unknown:23| |$knormal:14| |$knormal:12| |$alpha-14:x_1035| |$alpha-15:set_flag_down_1132|) true true true )
      (|down_without_checking_1152$unknown:23| |$V-reftype:66| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$alpha-15:set_flag_down_1132| 1) (= |$V-reftype:64| 1) (not (= 0 |$knormal:8|)) true true true )
      (|down_without_checking_1152$unknown:23| |$V-reftype:64| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (not (not (= 0 |$knormal:8|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (not (not (= 0 |$knormal:8|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_1035| Int) (|$alpha-15:set_flag_down_1132| Int) (|$knormal:12| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (= |$alpha-14:x_1035| 0)) (= |$knormal:12| (- |$alpha-14:x_1035| 1)) (= |$alpha-15:set_flag_down_1132| 1) (not (not (= 0 |$knormal:8|))) true true true )
      true
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
  (forall ( (|$V-reftype:89| Int) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:36| Int) (|$knormal:40| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:40| (+ |$alpha-24:x_1036| 1)) (= (not (= 0 |$knormal:36|)) (= |$alpha-24:x_1036| 0)) (= |$V-reftype:89| |$knormal:42|) (not (not (= 0 |$knormal:36|))) (|up_1032$unknown:29| |$knormal:42| |$knormal:40| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) true true true )
      (|up_1032$unknown:29| |$V-reftype:89| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:87| Int) (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:36| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:36|)) (= |$alpha-24:x_1036| 0)) (= |$V-reftype:87| 1) (not (= 0 |$knormal:36|)) true true true )
      (|up_1032$unknown:29| |$V-reftype:87| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:x_1036| Int) (|$knormal:36| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:40| (+ |$alpha-24:x_1036| 1)) (= (not (= 0 |$knormal:36|)) (= |$alpha-24:x_1036| 0)) (not (not (= 0 |$knormal:36|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:x_1036| Int) (|$knormal:36| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:40| (+ |$alpha-24:x_1036| 1)) (= (not (= 0 |$knormal:36|)) (= |$alpha-24:x_1036| 0)) (not (not (= 0 |$knormal:36|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:x_1036| Int) (|$knormal:36| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:40| (+ |$alpha-24:x_1036| 1)) (= (not (= 0 |$knormal:36|)) (= |$alpha-24:x_1036| 0)) (not (not (= 0 |$knormal:36|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:72| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| (+ |$knormal:66| |$knormal:68|)) (= |$knormal:68| (+ |$knormal:67| |$alpha-27:c5_COEFFICIENT_1082|)) (= |$knormal:67| (* |$alpha-28:c4_COEFFICIENT_1081| |$alpha-25:t1_1039|)) (= |$knormal:66| (* |$alpha-29:c3_COEFFICIENT_1080| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:43|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132| |$knormal:51| |$alpha-34:s_down_x_1129| |$alpha-33:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$alpha-27:c5_COEFFICIENT_1082| Int) (|$alpha-28:c4_COEFFICIENT_1081| Int) (|$alpha-29:c3_COEFFICIENT_1080| Int) (|$alpha-30:c2_COEFFICIENT_1078| Int) (|$alpha-31:c1_COEFFICIENT_1077| Int) (|$alpha-32:c0_COEFFICIENT_1076| Int) (|$alpha-33:set_flag_down_1132| Int) (|$alpha-34:s_down_x_1129| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:45| |$knormal:47|)) (= |$knormal:47| (+ |$knormal:46| |$alpha-30:c2_COEFFICIENT_1078|)) (= |$knormal:46| (* |$alpha-31:c1_COEFFICIENT_1077| |$alpha-25:t1_1039|)) (= |$knormal:45| (* |$alpha-32:c0_COEFFICIENT_1076| |$alpha-26:t2_1040|)) (= (not (= 0 |$knormal:44|)) (< |$alpha-26:t2_1040| 0)) (= (not (= 0 |$knormal:43|)) (> |$alpha-25:t1_1039| 0)) (= |$alpha-34:s_down_x_1129| 0) (= |$alpha-33:set_flag_down_1132| 0) (= |$alpha-32:c0_COEFFICIENT_1076| 0) (= |$alpha-31:c1_COEFFICIENT_1077| 0) (= |$alpha-30:c2_COEFFICIENT_1078| 0) (= |$alpha-29:c3_COEFFICIENT_1080| 0) (= |$alpha-28:c4_COEFFICIENT_1081| 0) (= |$alpha-27:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:43|))) (not (= 0 |$knormal:44|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

