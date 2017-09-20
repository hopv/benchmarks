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

(declare-fun |up_1032$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:31|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:197| Int) )
    (=>
      ( and (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|main_1037$unknown:31| |$cond-alpha-rename:197| |$V-reftype:15|) (> |$V-reftype:15| 0) (> |$alpha-26:t1_1039| 0) (= 0 0) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:197|) (+ (* 0 |$V-reftype:15|) 0)) (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0))) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:212| Int) )
    (=>
      ( and (|main_1037$unknown:31| |$V-reftype:15| |$cond-alpha-rename:212|) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (< |$V-reftype:15| 0) (> |$alpha-26:t1_1039| 0) (not (> |$cond-alpha-rename:212| 0)) (= 0 0) (= 0 0) (= (+ (* 0 |$V-reftype:15|) (+ (* 0 |$cond-alpha-rename:212|) 0)) (+ (* 0 |$alpha-27:t2_1040|) (+ (* 0 |$alpha-26:t1_1039|) 0))) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| 0 0)
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
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1195| Int) (|$cond-alpha-rename:1197| Int) (|$cond-alpha-rename:1533| Int) (|$cond-alpha-rename:1534| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1195| 1) (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1534| |$cond-alpha-rename:1533|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|fail$unknown:29| |$cond-alpha-rename:1197| 1) (not (= 0 1)) (not (and (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (>= (+ 0 (- |$V-reftype:47| 1)) 0))) (not (= |$V-reftype:47| 0)) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1536| Int) (|$cond-alpha-rename:1537| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1537| |$cond-alpha-rename:1536|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (>= (+ 0 (- |$V-reftype:47| 1)) 0) (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (not (= 0 1)) (not (= |$V-reftype:47| 0)) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1539| Int) (|$cond-alpha-rename:1540| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1540| |$cond-alpha-rename:1539|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (not (= |$V-reftype:47| 0)) (not (= |$alpha-20:x_1035| 0)) (not (not (= 0 1))) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:12833| Int) (|$cond-alpha-rename:12835| Int) (|$cond-alpha-rename:12836| Int) )
    ( and (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:12833| |$cond-alpha-rename:12836| |$cond-alpha-rename:12835|) (not (= 0 1)) (not (= |$cond-alpha-rename:12833| 0)) (not (and (> (+ 0 |$cond-alpha-rename:12833|) (+ 0 (- |$cond-alpha-rename:12833| 1))) (>= (+ 0 (- |$cond-alpha-rename:12833| 1)) 0))) )
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

