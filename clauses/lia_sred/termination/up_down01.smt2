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
                if (0 * 1) + (-s_prev_up_x_1087) > (0 * 1) + (-x_1036) &&
                   (0 * 1) + (-x_1036) >= 0 then
                  ()
                else
                  let u_3056 = fail ()
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

(declare-fun |fail$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_1032$unknown:28|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:23|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) )
      (|main_1037$unknown:24| |$cond-alpha-rename:21| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|$cond-alpha-rename:22| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (> |$alpha-25:t1_1039| 0) )
      (|main_1037$unknown:24| |$cond-alpha-rename:22| |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:35| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|down_1031| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (> |$alpha-25:t1_1039| 0) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:50| Int) (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) (|up_1032| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:49| |$V-reftype:47| |up_1032| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0) (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (|up_1032$unknown:28| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032|) (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) )
      (|app_1030$unknown:9| |$V-reftype:50| |$V-reftype:49| |$V-reftype:47| |up_1032| 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
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
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$knormal:26| Int) (|$knormal:40| Int) (|$knormal:42| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| 0 0 (+ (* 0 |$cond-alpha-rename:39|) (+ (* 0 |$cond-alpha-rename:38|) 0)) 0 0) (|bot$unknown:15| |$knormal:40| 1) (|fail$unknown:21| |$knormal:42| 1) (|main_1037$unknown:23| |$cond-alpha-rename:39| |$cond-alpha-rename:38|) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (< |$cond-alpha-rename:39| 0) (not (> |$cond-alpha-rename:38| 0)) (not (and (> (+ 0 (- |$alpha-21:s_prev_up_x_1087|)) (+ 0 (- |$alpha-22:x_1036|))) (>= (+ 0 (- |$alpha-22:x_1036|)) 0))) )
      (|up_1032$unknown:28| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (|down_1031$unknown:19| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:19| |$knormal:14| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) )
    (=>
      ( and (= |$alpha-14:x_1035| 0) )
      (|down_1031$unknown:19| 1 |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) )
    ( and (|app_1030$unknown:12| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23| 0 0 (+ (* 0 |$cond-alpha-rename:52|) (+ (* 0 |$cond-alpha-rename:51|) 0)) 0 0) (|main_1037$unknown:23| |$cond-alpha-rename:52| |$cond-alpha-rename:51|) (not (= 0 |$cond-alpha-rename:23|)) (< |$cond-alpha-rename:52| 0) (not (and (> (+ 0 (- |$cond-alpha-rename:24|)) (+ 0 (- |$cond-alpha-rename:25|))) (>= (+ 0 (- |$cond-alpha-rename:25|)) 0))) (not (> |$cond-alpha-rename:51| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (> |$alpha-25:t1_1039| 0) )
      (|app_1030$unknown:12| |$alpha-25:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (< |$alpha-26:t2_1040| 0) (not (> |$alpha-25:t1_1039| 0)) )
      (|app_1030$unknown:12| |$alpha-26:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-26:t2_1040|) (+ (* 0 |$alpha-25:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-25:t1_1039| Int) (|$alpha-26:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:23| |$alpha-26:t2_1040| |$alpha-25:t1_1039|) (not (> |$alpha-25:t1_1039| 0)) (not (< |$alpha-26:t2_1040| 0)) )
      (|main_1037$unknown:24| 1 |$alpha-26:t2_1040| |$alpha-25:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$knormal:26| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| 0 0 (+ (* 0 |$cond-alpha-rename:65|) (+ (* 0 |$cond-alpha-rename:64|) 0)) 0 0) (|main_1037$unknown:23| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (not (= 0 |$alpha-20:prev_set_flag_up_1088|)) (< |$cond-alpha-rename:65| 0) (>= (+ 0 (- |$alpha-22:x_1036|)) 0) (> (+ 0 (- |$alpha-21:s_prev_up_x_1087|)) (+ 0 (- |$alpha-22:x_1036|))) (not (> |$cond-alpha-rename:64| 0)) )
      (|up_1032$unknown:28| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:prev_set_flag_up_1088| Int) (|$alpha-21:s_prev_up_x_1087| Int) (|$alpha-22:x_1036| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$knormal:26| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088| 0 0 (+ (* 0 |$cond-alpha-rename:78|) (+ (* 0 |$cond-alpha-rename:77|) 0)) 0 0) (|main_1037$unknown:23| |$cond-alpha-rename:78| |$cond-alpha-rename:77|) (|up_without_checking_1115$unknown:32| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|) (< |$cond-alpha-rename:78| 0) (not (not (= 0 |$alpha-20:prev_set_flag_up_1088|))) (not (> |$cond-alpha-rename:77| 0)) )
      (|up_1032$unknown:28| |$knormal:26| |$alpha-22:x_1036| |$alpha-21:s_prev_up_x_1087| |$alpha-20:prev_set_flag_up_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) (|$knormal:21| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:32| |$knormal:21| (+ |$alpha-17:x_1036| 1) |$alpha-17:x_1036| 1) (not (= |$alpha-17:x_1036| 0)) )
      (|up_without_checking_1115$unknown:32| |$knormal:21| |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) (|$alpha-17:x_1036| Int) )
    (=>
      ( and (= |$alpha-17:x_1036| 0) )
      (|up_without_checking_1115$unknown:32| 1 |$alpha-17:x_1036| |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

