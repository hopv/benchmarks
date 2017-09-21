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

(declare-fun |fail$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:35|
  ( Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
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
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (not (> |$alpha-26:t1_1039| 0)) (< |$alpha-27:t2_1040| 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:21| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|app_1030$unknown:12| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) )
      (|main_1037$unknown:24| |$cond-alpha-rename:21| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:22| Int) )
    (=>
      ( and (> |$alpha-26:t1_1039| 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|app_1030$unknown:9| |$cond-alpha-rename:22| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|app_1030$unknown:12| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) )
      (|main_1037$unknown:24| |$cond-alpha-rename:22| |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:35| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|down_1031| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|down_1031$unknown:19| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (> |$alpha-26:t1_1039| 0) )
      (|app_1030$unknown:9| |$V-reftype:35| |$V-reftype:34| |$V-reftype:32| |down_1031| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:62| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|up_without_checking_1115| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (not (> |$alpha-26:t1_1039| 0)) (< |$alpha-27:t2_1040| 0) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:65| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|up_without_checking_1115| Int) )
    (=>
      ( and (|app_1030$unknown:12| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|up_without_checking_1115$unknown:36| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115|) (not (> |$alpha-26:t1_1039| 0)) (< |$alpha-27:t2_1040| 0) )
      (|app_1030$unknown:9| |$V-reftype:65| |$V-reftype:64| |$V-reftype:62| |up_without_checking_1115| 0 0 0 0 0)
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
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$knormal:19| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$cond-alpha-rename:142| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:36| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:190| |$cond-alpha-rename:189|) (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:32| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:193| |$cond-alpha-rename:192|) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (= |$alpha-14:x_1035| 0)) (|down_1031$unknown:19| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) )
      (|down_1031$unknown:19| |$knormal:14| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) )
    (=>
      ( and true )
      (|down_1031$unknown:19| 1 0 |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:92| Int) )
    ( and (not (and (>= (- (+ |$cond-alpha-rename:92| 1)) 0) (> (- |$cond-alpha-rename:92|) (- (+ |$cond-alpha-rename:92| 1))))) (not (= |$cond-alpha-rename:92| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:92| |$cond-alpha-rename:196| |$cond-alpha-rename:195|) )
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (> |$alpha-26:t1_1039| 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) )
      (|app_1030$unknown:12| |$alpha-26:t1_1039| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (not (> |$alpha-26:t1_1039| 0)) (< |$alpha-27:t2_1040| 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) )
      (|app_1030$unknown:12| |$alpha-27:t2_1040| 0 0 0 0 (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) )
    (=>
      ( and (not (< |$alpha-27:t2_1040| 0)) (not (> |$alpha-26:t1_1039| 0)) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) )
      (|main_1037$unknown:24| 1 |$alpha-27:t2_1040| |$alpha-26:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|up_without_checking_1115| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:27| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:48| |$V-reftype:62| |up_without_checking_1115|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$knormal:19| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (not (= |$cond-alpha-rename:147| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:36| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:147| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:199| |$cond-alpha-rename:198|) (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) )
      (|up_1032$unknown:32| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$knormal:19| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:152| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (not (= 0 1))) (|up_without_checking_1115$unknown:36| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:152| |$cond-alpha-rename:151| |$cond-alpha-rename:150|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:202| |$cond-alpha-rename:201|) (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) )
      (|up_1032$unknown:32| |$knormal:19| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:205| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:205| |$cond-alpha-rename:204|) )
      (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:208| Int) )
    (=>
      ( and (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (not (= 0 1))) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:208| |$cond-alpha-rename:207|) )
      (|up_1032$unknown:27| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$knormal:44| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_1032$unknown:32| |$knormal:44| (+ |$alpha-23:x_1036| 1) |$alpha-23:x_1036| 1) )
      (|up_without_checking_1115$unknown:36| |$knormal:44| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) )
    (=>
      ( and (|up_without_checking_1115$unknown:35| 0 |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) )
      (|up_without_checking_1115$unknown:36| 1 0 |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

