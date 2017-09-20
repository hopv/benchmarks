(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_without_checking_1118 set_flag_id_1092 x_1031 =
       let set_flag_id_1092 = true
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1091 x_1031 =
       let u =if prev_set_flag_id_1091 then
                let u_1232 = fail ()
                in
                  bot()
              else () in
               id_without_checking_1118 prev_set_flag_id_1091 x_1031
  
     let app_1032 x_DO_NOT_CARE_1208 h_EXPARAM_1087 x_DO_NOT_CARE_1207 h_1033 x_DO_NOT_CARE_1206 v_1034 set_flag_id_1092 u_1035 =
       h_1033 set_flag_id_1092 v_1034 set_flag_id_1092 u_1035
  
     let rec f_1036 set_flag_id_1092 x_1037 =
       if x_1037 > 0 then
         app_1032 set_flag_id_1092
           ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
           set_flag_id_1092 f_1036 set_flag_id_1092 (x_1037 - 1)
       else
         id_1030
  
     let main_1038 r =
       let set_flag_id_1092 = false in
       f_1036 set_flag_id_1092 r set_flag_id_1092 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:29|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:19|
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
  (not (exists ( (|$cond-alpha-rename:1205| Int) (|$cond-alpha-rename:1232| Int) (|$cond-alpha-rename:1236| Int) (|$cond-alpha-rename:1237| Int) (|$cond-alpha-rename:1238| Int) )
    ( and (|f_1036$unknown:19| |$cond-alpha-rename:1205| |$cond-alpha-rename:1236| |$cond-alpha-rename:1238| |$cond-alpha-rename:1237|) (not (= 0 |$cond-alpha-rename:1236|)) (> |$cond-alpha-rename:1238| 0) (> |$cond-alpha-rename:1232| 0) (not (> (- |$cond-alpha-rename:1238| 1) 0)) (= (+ (* 0 |$cond-alpha-rename:1238|) 0) (+ (* 0 |$cond-alpha-rename:1232|) 0)) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1249| Int) )
    ( and (|main_1038$unknown:29| |$cond-alpha-rename:1249|) (not (= 0 0)) (not (> |$cond-alpha-rename:1249| 0)) )
    )
  )
)
(check-sat)

(get-model)

