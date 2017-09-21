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

(declare-fun |f_1034$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:16| Int) )
    (=>
      ( and (not (= 0 |$alpha-11:prev_set_flag_omega_1140|)) (|omega_without_checking_1162$unknown:38| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) (|fail$unknown:26| |$knormal:16| 1) (|f_1034$unknown:23| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140| 0 0 0 0 0 0 0 0 0 0) (|bot$unknown:2| |$knormal:14| 1) )
      (|omega_1032$unknown:34| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:52| 0 0 0 0 0) )
      (|f_1034$unknown:23| |$V-reftype:18| |$V-reftype:43| |$knormal:52| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:57| Int) (|$knormal:52| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:45| |$V-reftype:43| |$knormal:52| 0 0 0 0 0) (|f_1034$unknown:20| |$cond-alpha-rename:57| |$V-reftype:45| |$V-reftype:43| |$knormal:52| 0 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:23| |$V-reftype:45| |$V-reftype:43| |$knormal:52| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:11| |$cond-alpha-rename:57| |$V-reftype:45| |$V-reftype:43| |$knormal:52| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|id_1030| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0) )
      (|f_1034$unknown:11| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|id_1030| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:20| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|omega_1032| Int) )
    (=>
      ( and (|omega_1032$unknown:34| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |omega_1032|) (|f_1034$unknown:23| |$V-reftype:65| |$V-reftype:63| |omega_1032| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:20| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |omega_1032| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) )
    ( and (not (= 0 |$cond-alpha-rename:114|)) (|f_1034$unknown:23| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114| 0 0 0 0 0 0 0 0 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_omega_1140| Int) (|$alpha-12:s_prev_omega_x_1139| Int) (|$alpha-13:x_1033| Int) (|$knormal:12| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-11:prev_set_flag_omega_1140|))) (|omega_without_checking_1162$unknown:38| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|) (|f_1034$unknown:23| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140| 0 0 0 0 0 0 0 0 0 0) )
      (|omega_1032$unknown:34| |$knormal:12| |$alpha-13:x_1033| |$alpha-12:s_prev_omega_x_1139| |$alpha-11:prev_set_flag_omega_1140|)
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
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_1034$unknown:23| 1 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

