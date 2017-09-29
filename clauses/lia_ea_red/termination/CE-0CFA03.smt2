(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_omega_1141 s_omega_x_1138 x_1031 = x_1031
  
     let rec omega_1032 omega_without_checking_1162 prev_set_flag_omega_1140 s_prev_omega_x_1139 x_1033 =
       let u =if prev_set_flag_omega_1140 then
                let u_4029 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1162 prev_set_flag_omega_1140
                s_prev_omega_x_1139 x_1033
  
     let rec omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033 =
       let set_flag_omega_1141 = true
       in
       let s_omega_x_1138 = x_1033
       in
         omega_1032 omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033
  
     let f_1034 x_DO_NOT_CARE_1245 x_DO_NOT_CARE_1246 x_EXPARAM_1092 x_DO_NOT_CARE_1243 x_DO_NOT_CARE_1244 x_1035 x_DO_NOT_CARE_1241 x_DO_NOT_CARE_1242 y_EXPARAM_1093 x_DO_NOT_CARE_1239 x_DO_NOT_CARE_1240 y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037 =
       y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037
  
     let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_without_checking_1162) false 0
         c3_COEFFICIENT_1089 false 0 id_1030 false 0 1
")

(set-logic HORN)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:41|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
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
  (forall ( (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:416| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:663| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (= 1 1) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:659| |$cond-alpha-rename:658| |$cond-alpha-rename:657|) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:659| |$cond-alpha-rename:659| 1) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:659| |$cond-alpha-rename:317| |$cond-alpha-rename:316|) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:246| |$cond-alpha-rename:245| |$cond-alpha-rename:244|) (|omega_1032$unknown:38| |$cond-alpha-rename:416| |$cond-alpha-rename:659| |$cond-alpha-rename:659| 1) (|fail$unknown:26| |$knormal:11| 1) (|fail$unknown:26| |$cond-alpha-rename:661| 1) (|bot$unknown:2| |$knormal:9| 1) (|bot$unknown:2| |$cond-alpha-rename:663| 1) )
      (|omega_1032$unknown:38| |$cond-alpha-rename:416| |$cond-alpha-rename:659| |$cond-alpha-rename:659| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:78| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162| 0 0 0 0 0) (= 0 0) )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (= 0 0) )
      (|omega_without_checking_1162$unknown:41| 1 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) )
    ( and (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:324| |$cond-alpha-rename:323| |$cond-alpha-rename:322|) (not (= 0 1)) )
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:673| Int) )
    (=>
      ( and (not (= 0 1)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:669| |$cond-alpha-rename:668| |$cond-alpha-rename:667|) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|fail$unknown:26| |$cond-alpha-rename:671| 1) (|bot$unknown:2| |$cond-alpha-rename:673| 1) )
      (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:669| |$cond-alpha-rename:669| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|$cond-alpha-rename:674| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) )
    (=>
      ( and (not (not (= 0 1))) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:674|) (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) )
      (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:676| |$cond-alpha-rename:676| 1)
    )
  )
)
(check-sat)

(get-model)

(exit)

