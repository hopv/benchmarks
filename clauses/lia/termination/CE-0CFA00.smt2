(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
  
     let rec id_without_checking_1126 set_flag_id_1099 s_id_x_1096 x_1031 =
       let set_flag_id_1099 = true
       in
       let s_id_x_1096 = x_1031
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1098 s_prev_id_x_1097 x_1031 =
       let u = if prev_set_flag_id_1098 then
                let u_1278 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1126 prev_set_flag_id_1098 s_prev_id_x_1097
                x_1031
  
     let rec omega_1032 set_flag_id_1099 s_id_x_1096 x_1033 =
       omega_1032 set_flag_id_1099 s_id_x_1096 x_1033
  
     let f_1034 x_DO_NOT_CARE_1237 x_DO_NOT_CARE_1238 x_EXPARAM_1092 x_DO_NOT_CARE_1235 x_DO_NOT_CARE_1236 x_1035 x_DO_NOT_CARE_1233 x_DO_NOT_CARE_1234 y_EXPARAM_1093 x_DO_NOT_CARE_1231 x_DO_NOT_CARE_1232 y_1036 set_flag_id_1099 s_id_x_1096 z_1037 =
       y_1036 set_flag_id_1099 s_id_x_1096 z_1037
  
  let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_1032) false 0 c3_COEFFICIENT_1089
         false 0 id_without_checking_1126 false 0 1
")

(set-logic HORN)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) )
    ( and (not (= 0 |$cond-alpha-rename:37|)) (|f_1034$unknown:10| |$cond-alpha-rename:36| |$cond-alpha-rename:38| |$cond-alpha-rename:37| 0 0 0 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-13:set_flag_id_1099| Int) (|$alpha-14:s_id_x_1096| Int) (|$alpha-15:x_1033| Int) (|$knormal:16| Int) )
    (=>
      ( and (|omega_1032$unknown:38| |$knormal:16| |$alpha-15:x_1033| |$alpha-14:s_id_x_1096| |$alpha-13:set_flag_id_1099|) )
      (|omega_1032$unknown:38| |$knormal:16| |$alpha-15:x_1033| |$alpha-14:s_id_x_1096| |$alpha-13:set_flag_id_1099|)
    )
  )
)
(check-sat)

(get-model)

(exit)

