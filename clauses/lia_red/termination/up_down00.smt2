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
                let u_1402 = fail ()
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

(declare-fun |up_without_checking_1115$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:19|
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
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (|down_1031$unknown:19| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not (= |$alpha-14:x_1035| 0)) )
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
  (not (exists ( (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:89| Int) )
    ( and (|main_1037$unknown:23| |$cond-alpha-rename:135| |$cond-alpha-rename:134|) (|main_1037$unknown:23| |$cond-alpha-rename:335| |$cond-alpha-rename:89|) (> |$cond-alpha-rename:89| 0) (not (= 0 0)) (not (> |$cond-alpha-rename:134| 0)) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:335|) (+ (* 0 |$cond-alpha-rename:89|) 0))) (< |$cond-alpha-rename:135| 0) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:89| Int) )
    ( and (|main_1037$unknown:23| |$cond-alpha-rename:135| |$cond-alpha-rename:134|) (|main_1037$unknown:23| |$cond-alpha-rename:89| |$cond-alpha-rename:345|) (< |$cond-alpha-rename:89| 0) (not (= 0 0)) (not (> |$cond-alpha-rename:345| 0)) (not (> |$cond-alpha-rename:134| 0)) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:89|) (+ (* 0 |$cond-alpha-rename:345|) 0))) (< |$cond-alpha-rename:135| 0) )
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
  (forall ( (|$alpha-15:set_flag_up_1089| Int) (|$alpha-16:s_up_x_1086| Int) )
    (=>
      ( and true )
      (|up_without_checking_1115$unknown:32| 1 0 |$alpha-16:s_up_x_1086| |$alpha-15:set_flag_up_1089|)
    )
  )
)
(check-sat)

(get-model)

