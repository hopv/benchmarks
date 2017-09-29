(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_omega_1141 s_omega_x_1138 x_1031 = x_1031
  
     let rec omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033 =
       let set_flag_omega_1141 = true
       in
       let s_omega_x_1138 = x_1033
       in
         omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033
  
     let rec omega_1032 prev_set_flag_omega_1140 s_prev_omega_x_1139 x_1033 =
       let u = if prev_set_flag_omega_1140 then
                let u_3120 = fail ()
                in
                  bot()
               else () in
              omega_without_checking_1162 prev_set_flag_omega_1140
                s_prev_omega_x_1139 x_1033
  
     let f_1034 x_DO_NOT_CARE_1245 x_DO_NOT_CARE_1246 x_EXPARAM_1092 x_DO_NOT_CARE_1243 x_DO_NOT_CARE_1244 x_1035 x_DO_NOT_CARE_1241 x_DO_NOT_CARE_1242 y_EXPARAM_1093 x_DO_NOT_CARE_1239 x_DO_NOT_CARE_1240 y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037 =
       y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037
  
     let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_1032) false 0 c3_COEFFICIENT_1089
         false 0 id_1030 false 0 1
")

(set-logic HORN)

(declare-fun |omega_without_checking_1162$unknown:38|
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
  (not (exists ( (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) )
    ( and (|f_1034$unknown:10| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:115|)) (= 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_omega_1141| Int) (|$alpha-7:s_omega_x_1138| Int) (|$alpha-8:x_1033| Int) (|$knormal:7| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:38| |$knormal:7| |$alpha-8:x_1033| |$alpha-8:x_1033| 1) )
      (|omega_without_checking_1162$unknown:38| |$knormal:7| |$alpha-8:x_1033| |$alpha-7:s_omega_x_1138| |$alpha-6:set_flag_omega_1141|)
    )
  )
)
(check-sat)

(get-model)

(exit)

