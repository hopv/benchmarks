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
  
     let main t1_1039 t2_1040 =
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

(declare-fun |fail$unknown:28|
  ( Int ) Bool
)

(declare-fun |down_1031$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:33|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:27|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
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
  (forall ( (|$V-reftype:69| Int) (|$alpha-10:s_down_x_1129| Int) (|$alpha-11:x_1034| Int) (|$alpha-3:x_DO_NOT_CARE_1216| Int) (|$alpha-4:x_DO_NOT_CARE_1217| Int) (|$alpha-5:f_EXPARAM_1084| Int) (|$alpha-6:x_DO_NOT_CARE_1214| Int) (|$alpha-7:x_DO_NOT_CARE_1215| Int) (|$alpha-9:set_flag_down_1132| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:69| |$knormal:7|) (|app_1030$unknown:9| |$knormal:7| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true true (|app_1030$unknown:12| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|) true true true )
      (|app_1030$unknown:13| |$V-reftype:69| |$alpha-11:x_1034| |$alpha-10:s_down_x_1129| |$alpha-9:set_flag_down_1132| |$alpha-7:x_DO_NOT_CARE_1215| |$alpha-6:x_DO_NOT_CARE_1214| |$alpha-5:f_EXPARAM_1084| |$alpha-4:x_DO_NOT_CARE_1217| |$alpha-3:x_DO_NOT_CARE_1216|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:47| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) true true )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:50| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) (|down_without_checking_1152$unknown:27| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|) (|app_1030$unknown:8| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) true true )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:62| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) (|app_1030$unknown:8| |$V-reftype:15| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:65| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|up_1032| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) (|up_1032$unknown:33| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032|) (|app_1030$unknown:8| |$V-reftype:64| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|) true true )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:67| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:15| |$V-reftype:67| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:86| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$V-reftype:86| |$knormal:12|) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|down_1031$unknown:19| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:23| |$V-reftype:86| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|bot$unknown:15| |$knormal:26| |$knormal:25|) )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:33| Int) (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true (|down_1031$unknown:18| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|) true true )
      (|down_without_checking_1152$unknown:26| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:50| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:27| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true (|down_1031$unknown:18| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|) true true )
      (|down_1031$unknown:19| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:83| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$alpha-17:u| 1) (= |$V-reftype:83| |$knormal:12|) (not (= 0 |$knormal:24|)) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|down_1031$unknown:19| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) )
      (|down_1031$unknown:23| |$V-reftype:83| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:88| Int) (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$alpha-17:u| 1) (= |$V-reftype:88| |$knormal:12|) (not (not (= 0 |$alpha-13:prev_set_flag_down_1131|))) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true (|down_1031$unknown:19| |$knormal:12| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) )
      (|down_1031$unknown:23| |$V-reftype:88| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= |$knormal:25| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|fail$unknown:29| |$knormal:28| |$knormal:27|) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$alpha-17:u| 1) (not (= 0 |$knormal:24|)) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$alpha-17:u| 1) (not (= 0 |$knormal:24|)) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (= |$alpha-17:u| 1) (not (= 0 |$knormal:24|)) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:27| Int) )
    (=>
      ( and (= |$knormal:27| 1) (= (not (= 0 |$knormal:24|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:23|)))) (= (not (= 0 |$knormal:23|)) (>= |$knormal:22| 0)) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-15:x_1035|) (= |$knormal:20| 0) (= (not (= 0 |$knormal:19|)) (> |$knormal:15| |$knormal:18|)) (= |$knormal:18| (+ |$knormal:16| |$knormal:17|)) (= |$knormal:17| |$alpha-15:x_1035|) (= |$knormal:16| 0) (= |$knormal:15| (+ |$knormal:13| |$knormal:14|)) (= |$knormal:14| |$alpha-14:s_prev_down_x_1130|) (= |$knormal:13| 0) (not (not (= 0 |$knormal:24|))) (not (= 0 |$alpha-13:prev_set_flag_down_1131|)) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      (|fail$unknown:28| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) )
    (=>
      ( and (= |$alpha-17:u| 1) (not (not (= 0 |$alpha-13:prev_set_flag_down_1131|))) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) )
    (=>
      ( and (= |$alpha-17:u| 1) (not (not (= 0 |$alpha-13:prev_set_flag_down_1131|))) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:prev_set_flag_down_1131| Int) (|$alpha-14:s_prev_down_x_1130| Int) (|$alpha-15:x_1035| Int) (|$alpha-17:u| Int) )
    (=>
      ( and (= |$alpha-17:u| 1) (not (not (= 0 |$alpha-13:prev_set_flag_down_1131|))) (|down_1031$unknown:22| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|) true true )
      (|down_1031$unknown:18| |$alpha-15:x_1035| |$alpha-14:s_prev_down_x_1130| |$alpha-13:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (= |$V-reftype:93| |$knormal:37|) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true (|down_1031$unknown:23| |$knormal:37| |$knormal:35| |$alpha-20:x_1035| |$alpha-21:set_flag_down_1132|) )
      (|down_without_checking_1152$unknown:27| |$V-reftype:93| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:91| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (= |$V-reftype:91| 1) (not (= 0 |$knormal:29|)) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true )
      (|down_without_checking_1152$unknown:27| |$V-reftype:91| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$alpha-21:set_flag_down_1132| Int) (|$knormal:29| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:35| (- |$alpha-20:x_1035| 1)) (= (not (= 0 |$knormal:29|)) (= |$alpha-20:x_1035| 0)) (= |$alpha-21:set_flag_down_1132| 1) (not (not (= 0 |$knormal:29|))) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) true true )
      (|down_1031$unknown:22| |$knormal:35| |$alpha-20:x_1035| |$alpha-21:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:28| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:97| Int) (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:38| Int) (|$knormal:42| Int) (|$knormal:44| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= (not (= 0 |$knormal:38|)) (= |$alpha-25:x_1036| 0)) (= |$V-reftype:97| |$knormal:44|) (not (not (= 0 |$knormal:38|))) (|up_1032$unknown:33| |$knormal:44| |$knormal:42| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) true true true )
      (|up_1032$unknown:33| |$V-reftype:97| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:38| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:38|)) (= |$alpha-25:x_1036| 0)) (= |$V-reftype:95| 1) (not (= 0 |$knormal:38|)) true true true )
      (|up_1032$unknown:33| |$V-reftype:95| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_1036| Int) (|$knormal:38| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= (not (= 0 |$knormal:38|)) (= |$alpha-25:x_1036| 0)) (not (not (= 0 |$knormal:38|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_1036| Int) (|$knormal:38| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= (not (= 0 |$knormal:38|)) (= |$alpha-25:x_1036| 0)) (not (not (= 0 |$knormal:38|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_1036| Int) (|$knormal:38| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (+ |$alpha-25:x_1036| 1)) (= (not (= 0 |$knormal:38|)) (= |$alpha-25:x_1036| 0)) (not (not (= 0 |$knormal:38|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:74| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:74| Int) )
    (=>
      ( and (= |$knormal:74| (+ |$knormal:68| |$knormal:70|)) (= |$knormal:70| (+ |$knormal:69| |$alpha-28:c5_COEFFICIENT_1082|)) (= |$knormal:69| (* |$alpha-29:c4_COEFFICIENT_1081| |$alpha-26:t1_1039|)) (= |$knormal:68| (* |$alpha-30:c3_COEFFICIENT_1080| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (= 0 |$knormal:45|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132| |$knormal:53| |$alpha-35:s_down_x_1129| |$alpha-34:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$alpha-28:c5_COEFFICIENT_1082| Int) (|$alpha-29:c4_COEFFICIENT_1081| Int) (|$alpha-30:c3_COEFFICIENT_1080| Int) (|$alpha-31:c2_COEFFICIENT_1078| Int) (|$alpha-32:c1_COEFFICIENT_1077| Int) (|$alpha-33:c0_COEFFICIENT_1076| Int) (|$alpha-34:set_flag_down_1132| Int) (|$alpha-35:s_down_x_1129| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (+ |$knormal:47| |$knormal:49|)) (= |$knormal:49| (+ |$knormal:48| |$alpha-31:c2_COEFFICIENT_1078|)) (= |$knormal:48| (* |$alpha-32:c1_COEFFICIENT_1077| |$alpha-26:t1_1039|)) (= |$knormal:47| (* |$alpha-33:c0_COEFFICIENT_1076| |$alpha-27:t2_1040|)) (= (not (= 0 |$knormal:46|)) (< |$alpha-27:t2_1040| 0)) (= (not (= 0 |$knormal:45|)) (> |$alpha-26:t1_1039| 0)) (= |$alpha-35:s_down_x_1129| 0) (= |$alpha-34:set_flag_down_1132| 0) (= |$alpha-33:c0_COEFFICIENT_1076| 0) (= |$alpha-32:c1_COEFFICIENT_1077| 0) (= |$alpha-31:c2_COEFFICIENT_1078| 0) (= |$alpha-30:c3_COEFFICIENT_1080| 0) (= |$alpha-29:c4_COEFFICIENT_1081| 0) (= |$alpha-28:c5_COEFFICIENT_1082| 0) (not (not (= 0 |$knormal:45|))) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(check-sat)

(exit)

