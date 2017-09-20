(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
  
     let id_without_checking_1121 set_flag_id_1095 x_1031 =
       let set_flag_id_1095 = true
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1094 x_1031 =
       let u =if prev_set_flag_id_1094 then
                let u_1229 = fail ()
                in
                  bot()
              else () in
              id_without_checking_1121 prev_set_flag_id_1094 x_1031
  
     let app_1032 x_DO_NOT_CARE_1208 h_EXPARAM_1090 x_DO_NOT_CARE_1207 h_1033 set_flag_id_1095 v_1034 =
       h_1033 set_flag_id_1095 () set_flag_id_1095 v_1034
  
     let rec f_1035 x_DO_NOT_CARE_1206 n_1036 set_flag_id_1095 u_1037 =
       if n_1036 > 0 then
         app_1032 set_flag_id_1095
           ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
           set_flag_id_1095 (f_1035 set_flag_id_1095 (n_1036 - 1))
       else
         id_1030
  
     let main_1038 r =
       let set_flag_id_1095 = false in
       f_1035 set_flag_id_1095 r set_flag_id_1095 () set_flag_id_1095
         ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:29|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:13|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:2| 1) )
      (|bot$unknown:13| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1311| Int) (|$cond-alpha-rename:1343| Int) (|$cond-alpha-rename:1346| Int) (|$cond-alpha-rename:1347| Int) (|$cond-alpha-rename:1348| Int) (|$cond-alpha-rename:1354| Int) (|$cond-alpha-rename:1355| Int) )
    ( and (|f_1035$unknown:19| |$cond-alpha-rename:1311| |$cond-alpha-rename:1354| |$cond-alpha-rename:1348| |$cond-alpha-rename:1347| |$cond-alpha-rename:1346| |$cond-alpha-rename:1355|) (not (= 0 |$cond-alpha-rename:1354|)) (> |$cond-alpha-rename:1346| 0) (> |$cond-alpha-rename:1343| 0) (not (> (- |$cond-alpha-rename:1343| 1) 0)) (= (+ (* 0 |$cond-alpha-rename:1346|) 0) (+ (* 0 |$cond-alpha-rename:1343|) 0)) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1361| Int) )
    ( and (|main_1038$unknown:29| |$cond-alpha-rename:1361|) (not (= 0 0)) (not (> |$cond-alpha-rename:1361| 0)) )
    )
  )
)
(check-sat)

(get-model)

