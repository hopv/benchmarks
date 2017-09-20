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

(declare-fun |down_1031$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:27|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:32|
  ( Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:31|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (< |$alpha-27:t2_1040| 0) (not (> |$alpha-26:t1_1039| 0)) )
      (|main_1037$unknown:32| |$cond-alpha-rename:21| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:22| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (> |$alpha-26:t1_1039| 0) )
      (|main_1037$unknown:32| |$cond-alpha-rename:22| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:47| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (> |$alpha-26:t1_1039| 0) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:50| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|down_without_checking_1152$unknown:27| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152|) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (> |$alpha-26:t1_1039| 0) )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |down_without_checking_1152| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:65| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|up_1032| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:64| |$V-reftype:62| |up_1032| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|up_1032$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032|) (< |$alpha-27:t2_1040| 0) (not (> |$alpha-26:t1_1039| 0)) )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_1032| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
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
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$knormal:12| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:26| 1) (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:39| |$cond-alpha-rename:38|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23|) (|down_without_checking_1152$unknown:27| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$knormal:28| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:25| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) )
      (|down_1031$unknown:23| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:26| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:42| |$cond-alpha-rename:41|) (|fail$unknown:29| |$knormal:28| 1) (not (= 0 1)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) )
      (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:33| Int) (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (|down_1031$unknown:18| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:33| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$knormal:12| Int) )
    (=>
      ( and (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28|) (|down_without_checking_1152$unknown:27| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$cond-alpha-rename:30| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) )
      (|down_1031$unknown:23| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$knormal:12| Int) )
    (=>
      ( and (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$cond-alpha-rename:33|) (|down_without_checking_1152$unknown:27| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (not (not (= 0 1))) (not (= |$cond-alpha-rename:35| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) )
      (|down_1031$unknown:23| |$knormal:12| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:51| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:51| |$cond-alpha-rename:50|) (not (= 0 1)) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) )
      (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (not (not (= 0 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) )
      (|down_1031$unknown:18| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$knormal:37| Int) )
    (=>
      ( and (|down_1031$unknown:23| |$knormal:37| (- |$alpha-20:x_1035| 1) |$alpha-20:x_1035| 1) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:27| |$knormal:37| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (= |$alpha-20:x_1035| 0) )
      (|down_without_checking_1152$unknown:27| 1 |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) )
    ( and (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:63| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (not (= 0 1)) (not (= |$cond-alpha-rename:63| 0)) (not (and (> (+ 0 |$cond-alpha-rename:63|) (+ 0 (- |$cond-alpha-rename:63| 1))) (>= (+ 0 (- |$cond-alpha-rename:63| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (> |$alpha-26:t1_1039| 0) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (< |$alpha-27:t2_1040| 0) (not (> |$alpha-26:t1_1039| 0)) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (not (> |$alpha-26:t1_1039| 0)) (not (< |$alpha-27:t2_1040| 0)) )
      (|main_1037$unknown:32| 1 |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:44| Int) )
    (=>
      ( and (|up_1032$unknown:36| |$knormal:44| (+ |$alpha-25:x_1036| 1) |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (not (= |$alpha-25:x_1036| 0)) )
      (|up_1032$unknown:36| |$knormal:44| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) )
    (=>
      ( and (= |$alpha-25:x_1036| 0) )
      (|up_1032$unknown:36| 1 |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(check-sat)

(get-model)

