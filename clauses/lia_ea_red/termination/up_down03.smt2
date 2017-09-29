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

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:27|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:363| Int) )
    ( and (|main_1037$unknown:27| |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|main_1037$unknown:27| |$cond-alpha-rename:363| |$cond-alpha-rename:193|) (not (= 0 0)) (> |$cond-alpha-rename:193| 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:363|) (+ (* 0 |$cond-alpha-rename:193|) 0))) (> |$cond-alpha-rename:194| 0) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:373| Int) )
    ( and (|main_1037$unknown:27| |$cond-alpha-rename:193| |$cond-alpha-rename:373|) (|main_1037$unknown:27| |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (not (= 0 0)) (< |$cond-alpha-rename:193| 0) (not (> |$cond-alpha-rename:373| 0)) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:193|) (+ (* 0 |$cond-alpha-rename:373|) 0))) (> |$cond-alpha-rename:194| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_down_1132| Int) (|$alpha-23:s_down_x_1129| Int) (|$alpha-24:x_1036| Int) (|$knormal:30| Int) )
    (=>
      ( and (|up_1032$unknown:32| |$knormal:30| (+ |$alpha-24:x_1036| 1) |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|) (not (= |$alpha-24:x_1036| 0)) )
      (|up_1032$unknown:32| |$knormal:30| |$alpha-24:x_1036| |$alpha-23:s_down_x_1129| |$alpha-22:set_flag_down_1132|)
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

(exit)

