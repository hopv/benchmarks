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

(declare-fun |down_without_checking_1152$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:27|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) )
      (|main_1037$unknown:28| |$cond-alpha-rename:21| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:22| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (> |$alpha-25:t1_1039| 0) )
      (|main_1037$unknown:28| |$cond-alpha-rename:22| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:35| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|down_1031| Int) )
    (=>
      ( and (> |$alpha-25:t1_1039| 0) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|up_1032| Int) )
    (=>
      ( and (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) (|up_1032$unknown:32| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032|) (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|app_1030$unknown:12| |$V-reftype:56| |$V-reftype:54| |up_1032| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) )
      (|app_1030$unknown:9| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |up_1032| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:2| 1) )
      (|bot$unknown:15| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$knormal:19| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| 0 0 (+ (* 0 |$cond-alpha-rename:86|) (+ (* 0 |$cond-alpha-rename:85|) 0)) 0 0) (|bot$unknown:15| |$knormal:33| 1) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|fail$unknown:25| |$knormal:35| 1) (|main_1037$unknown:27| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (> |$cond-alpha-rename:85| 0) (not (and (>= |$alpha-19:x_1035| 0) (> |$alpha-18:s_prev_down_x_1130| |$alpha-19:x_1035|))) )
      (|down_1031$unknown:19| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$knormal:19| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| 0 0 (+ (* 0 |$cond-alpha-rename:98|) (+ (* 0 |$cond-alpha-rename:97|) 0)) 0 0) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|main_1037$unknown:27| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (not (= 0 |$alpha-17:prev_set_flag_down_1131|)) (> |$cond-alpha-rename:97| 0) (>= |$alpha-19:x_1035| 0) (> |$alpha-18:s_prev_down_x_1130| |$alpha-19:x_1035|) )
      (|down_1031$unknown:19| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:prev_set_flag_down_1131| Int) (|$alpha-18:s_prev_down_x_1130| Int) (|$alpha-19:x_1035| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$knormal:19| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131| 0 0 (+ (* 0 |$cond-alpha-rename:110|) (+ (* 0 |$cond-alpha-rename:109|) 0)) 0 0) (|down_without_checking_1152$unknown:23| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|) (|main_1037$unknown:27| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (> |$cond-alpha-rename:109| 0) (not (not (= 0 |$alpha-17:prev_set_flag_down_1131|))) )
      (|down_1031$unknown:19| |$knormal:19| |$alpha-19:x_1035| |$alpha-18:s_prev_down_x_1130| |$alpha-17:prev_set_flag_down_1131|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:23| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-14:x_1035| 1) (not (= |$alpha-14:x_1035| 0)) )
      (|down_without_checking_1152$unknown:23| |$knormal:14| |$alpha-14:x_1035| |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_down_1132| Int) (|$alpha-13:s_down_x_1129| Int) )
    (=>
      ( and true )
      (|down_without_checking_1152$unknown:23| 1 0 |$alpha-13:s_down_x_1129| |$alpha-12:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) )
    ( and (not (and (> (+ 0 |$cond-alpha-rename:178|) (+ 0 |$cond-alpha-rename:179|)) (>= (+ 0 |$cond-alpha-rename:179|) 0))) (> |$cond-alpha-rename:180| 0) (not (= 0 |$cond-alpha-rename:177|)) (|main_1037$unknown:27| |$cond-alpha-rename:181| |$cond-alpha-rename:180|) (|app_1030$unknown:12| |$cond-alpha-rename:179| |$cond-alpha-rename:178| |$cond-alpha-rename:177| 0 0 (+ (* 0 |$cond-alpha-rename:181|) (+ (* 0 |$cond-alpha-rename:180|) 0)) 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (> |$alpha-25:t1_1039| 0) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:27| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (not (> |$alpha-25:t1_1039| 0)) (not (< |$alpha-26:t2_1040| 0)) )
      (|main_1037$unknown:28| 1 |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:42| Int) )
    (=>
      ( and (|up_1032$unknown:32| |$knormal:42| (+ |$alpha-24:x_1036| 1) |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not (= |$alpha-24:x_1036| 0)) )
      (|up_1032$unknown:32| |$knormal:42| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) )
    (=>
      ( and true )
      (|up_1032$unknown:32| 1 0 |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
    )
  )
)
(check-sat)

(get-model)

