(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_without_checking_1193 x_DO_NOT_CARE_1221 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 f_EXPARAM_1084 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034 =
       let set_flag_app_1179 = true
       in
       let s_app_x_1174 = x_1034
       in
       let s_app_f_EXPARAM_1172 = f_EXPARAM_1084
       in
         f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034
  
     let rec app_1030 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195 x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033 prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175 s_prev_app_x_1177 x_1034 =
       let u = if prev_set_flag_app_1178 then
                let u_11787 = fail ()
                in
                  bot()
              else
  () in
              app_without_checking_1193 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199
                x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195
                x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033
                prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175
                s_prev_app_x_1177 x_1034
  
  
     let rec down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1035 =
       if x_1035 = 0 then
         ()
       else
         down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
           (x_1035 - 1)
  
     let rec up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1036 =
       if x_1036 = 0 then
         ()
       else
         up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 (x_1036 + 1)
  
     let main_1037 t1_1039 t2_1040 =
       let set_flag_app_1179 = false in
       let s_app_f_EXPARAM_1172 = 0 in
       let s_app_x_1174  = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 down_1031
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t1_1039
         else
           if t2_1040 < 0 then
             app_without_checking_1193 set_flag_app_1179 s_app_f_EXPARAM_1172
               s_app_x_1174
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 up_1032
               set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |up_1032$unknown:51|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:46|
  ( Int Int Int ) Bool
)

(declare-fun |app_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1193$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:41|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:43|
  ( Int Int ) Bool
)

(declare-fun |main_1037$unknown:45|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-25:f_1033| Int) (|$alpha-29:x_1034| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:46| Int) (|$knormal:34| Int) (|$knormal:36| Int) )
    (=>
      ( and (|bot$unknown:36| |$knormal:34| 1) (|down_1031$unknown:41| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033|) (|fail$unknown:43| |$knormal:36| 1) (|main_1037$unknown:45| |$cond-alpha-rename:23| |$cond-alpha-rename:22|) (|main_1037$unknown:45| |$cond-alpha-rename:46| |$alpha-29:x_1034|) (not (= 0 0)) (> |$cond-alpha-rename:22| 0) (> |$alpha-29:x_1034| 0) (= (+ (* 0 |$cond-alpha-rename:23|) (+ (* 0 |$cond-alpha-rename:22|) 0)) (+ (* 0 |$cond-alpha-rename:46|) (+ (* 0 |$alpha-29:x_1034|) 0))) (= 0 0) (= 0 0) (= 0 0) )
      (|app_without_checking_1193$unknown:29| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| 0 0 0 (+ (* 0 |$cond-alpha-rename:23|) (+ (* 0 |$cond-alpha-rename:22|) 0)) 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-25:f_1033| Int) (|$alpha-29:x_1034| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:57| Int) )
    (=>
      ( and (|down_1031$unknown:41| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033|) (|main_1037$unknown:45| |$cond-alpha-rename:35| |$cond-alpha-rename:34|) (|main_1037$unknown:45| |$cond-alpha-rename:57| |$alpha-29:x_1034|) (> |$cond-alpha-rename:34| 0) (> |$alpha-29:x_1034| 0) (not (not (= 0 0))) (= (+ (* 0 |$cond-alpha-rename:35|) (+ (* 0 |$cond-alpha-rename:34|) 0)) (+ (* 0 |$cond-alpha-rename:57|) (+ (* 0 |$alpha-29:x_1034|) 0))) (= 0 0) (= 0 0) (= 0 0) )
      (|app_without_checking_1193$unknown:29| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$alpha-25:f_1033| 0 0 0 (+ (* 0 |$cond-alpha-rename:35|) (+ (* 0 |$cond-alpha-rename:34|) 0)) 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-29:x_1034| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:68| Int) (|$knormal:34| Int) (|$knormal:36| Int) )
    (=>
      ( and (|app_without_checking_1193$unknown:29| |$cond-alpha-rename:113| |$alpha-29:x_1034| |$alpha-29:x_1034| (+ (* 0 |$cond-alpha-rename:68|) (+ (* 0 |$alpha-29:x_1034|) 0)) 1 0 0 0 (+ (* 0 |$cond-alpha-rename:68|) (+ (* 0 |$alpha-29:x_1034|) 0)) 0 0 0) (|bot$unknown:36| |$knormal:34| 1) (|fail$unknown:43| |$knormal:36| 1) (|main_1037$unknown:45| |$cond-alpha-rename:68| |$alpha-29:x_1034|) (not (= 0 0)) (> |$alpha-29:x_1034| 0) )
      (|app_1030$unknown:17| |$cond-alpha-rename:113| |$alpha-29:x_1034| 0 0 0 0 0 0 (+ (* 0 |$cond-alpha-rename:68|) (+ (* 0 |$alpha-29:x_1034|) 0)) 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-29:x_1034| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:79| Int) )
    (=>
      ( and (|app_without_checking_1193$unknown:29| |$cond-alpha-rename:115| |$alpha-29:x_1034| |$alpha-29:x_1034| (+ (* 0 |$cond-alpha-rename:79|) (+ (* 0 |$alpha-29:x_1034|) 0)) 1 0 0 0 (+ (* 0 |$cond-alpha-rename:79|) (+ (* 0 |$alpha-29:x_1034|) 0)) 0 0 0) (|main_1037$unknown:45| |$cond-alpha-rename:79| |$alpha-29:x_1034|) (> |$alpha-29:x_1034| 0) (not (not (= 0 0))) )
      (|app_1030$unknown:17| |$cond-alpha-rename:115| |$alpha-29:x_1034| 0 0 0 0 0 0 (+ (* 0 |$cond-alpha-rename:79|) (+ (* 0 |$alpha-29:x_1034|) 0)) 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$knormal:110| Int) )
    (=>
      ( and (|app_1030$unknown:17| |$knormal:110| |$alpha-40:t1_1039| 0 0 0 0 0 0 (+ (* 0 |$alpha-41:t2_1040|) (+ (* 0 |$alpha-40:t1_1039|) 0)) 0 0 0) (|main_1037$unknown:45| |$alpha-41:t2_1040| |$alpha-40:t1_1039|) (> |$alpha-40:t1_1039| 0) )
      (|main_1037$unknown:46| |$knormal:110| |$alpha-41:t2_1040| |$alpha-40:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:90| Int) (|$V-reftype:92| Int) (|$V-reftype:94| Int) (|$V-reftype:95| Int) (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|up_1032| Int) )
    (=>
      ( and (|main_1037$unknown:45| |$alpha-41:t2_1040| |$alpha-40:t1_1039|) (|up_1032$unknown:51| |$V-reftype:95| |$V-reftype:94| |$V-reftype:92| |$V-reftype:90| |up_1032|) (< |$alpha-41:t2_1040| 0) (not (> |$alpha-40:t1_1039| 0)) )
      (|app_without_checking_1193$unknown:29| |$V-reftype:95| |$V-reftype:94| |$V-reftype:92| |$V-reftype:90| |up_1032| 0 0 0 (+ (* 0 |$alpha-41:t2_1040|) (+ (* 0 |$alpha-40:t1_1039|) 0)) 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) (|$cond-alpha-rename:117| Int) )
    (=>
      ( and (|app_without_checking_1193$unknown:29| |$cond-alpha-rename:117| |$alpha-41:t2_1040| |$alpha-41:t2_1040| (+ (* 0 |$alpha-41:t2_1040|) (+ (* 0 |$alpha-40:t1_1039|) 0)) 1 0 0 0 (+ (* 0 |$alpha-41:t2_1040|) (+ (* 0 |$alpha-40:t1_1039|) 0)) 0 0 0) (|main_1037$unknown:45| |$alpha-41:t2_1040| |$alpha-40:t1_1039|) (< |$alpha-41:t2_1040| 0) (not (> |$alpha-40:t1_1039| 0)) )
      (|main_1037$unknown:46| |$cond-alpha-rename:117| |$alpha-41:t2_1040| |$alpha-40:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:36| |$knormal:2| 1) )
      (|bot$unknown:36| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_app_1179| Int) (|$alpha-33:s_app_f_EXPARAM_1172| Int) (|$alpha-34:s_app_x_1174| Int) (|$alpha-35:x_1035| Int) (|$knormal:45| Int) )
    (=>
      ( and (|down_1031$unknown:41| |$knormal:45| (- |$alpha-35:x_1035| 1) |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|) (not (= |$alpha-35:x_1035| 0)) )
      (|down_1031$unknown:41| |$knormal:45| |$alpha-35:x_1035| |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_app_1179| Int) (|$alpha-33:s_app_f_EXPARAM_1172| Int) (|$alpha-34:s_app_x_1174| Int) (|$alpha-35:x_1035| Int) )
    (=>
      ( and (= |$alpha-35:x_1035| 0) )
      (|down_1031$unknown:41| 1 |$alpha-35:x_1035| |$alpha-34:s_app_x_1174| |$alpha-33:s_app_f_EXPARAM_1172| |$alpha-32:set_flag_app_1179|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) )
    ( and (|main_1037$unknown:45| |$cond-alpha-rename:129| |$cond-alpha-rename:128|) (not (= 0 0)) (> |$cond-alpha-rename:128| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-40:t1_1039| Int) (|$alpha-41:t2_1040| Int) )
    (=>
      ( and (|main_1037$unknown:45| |$alpha-41:t2_1040| |$alpha-40:t1_1039|) (not (> |$alpha-40:t1_1039| 0)) (not (< |$alpha-41:t2_1040| 0)) )
      (|main_1037$unknown:46| 1 |$alpha-41:t2_1040| |$alpha-40:t1_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:set_flag_app_1179| Int) (|$alpha-37:s_app_f_EXPARAM_1172| Int) (|$alpha-38:s_app_x_1174| Int) (|$alpha-39:x_1036| Int) (|$knormal:54| Int) )
    (=>
      ( and (|up_1032$unknown:51| |$knormal:54| (+ |$alpha-39:x_1036| 1) |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|) (not (= |$alpha-39:x_1036| 0)) )
      (|up_1032$unknown:51| |$knormal:54| |$alpha-39:x_1036| |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|)
    )
  )
)
(assert
  (forall ( (|$alpha-36:set_flag_app_1179| Int) (|$alpha-37:s_app_f_EXPARAM_1172| Int) (|$alpha-38:s_app_x_1174| Int) (|$alpha-39:x_1036| Int) )
    (=>
      ( and (= |$alpha-39:x_1036| 0) )
      (|up_1032$unknown:51| 1 |$alpha-39:x_1036| |$alpha-38:s_app_x_1174| |$alpha-37:s_app_f_EXPARAM_1172| |$alpha-36:set_flag_app_1179|)
    )
  )
)
(check-sat)

(get-model)

