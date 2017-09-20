(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
  
     let id_1030 set_flag_f_1191 s_f_x_1188 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 h_EXPARAM_1087 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 h_1033 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 v_1034 set_flag_f_1191 s_f_x_1188 u_1035 =
       h_1033 set_flag_f_1191 s_f_x_1188 v_1034 set_flag_f_1191 s_f_x_1188 u_1035
  
     let rec f_without_checking_1199 set_flag_f_1191 s_f_x_1188 x_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_x_1188 = x_1037
       in
         if x_1037 > 0 then
           app_1032 set_flag_f_1191 s_f_x_1188
             ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
             set_flag_f_1191 s_f_x_1188 f_without_checking_1199 set_flag_f_1191
             s_f_x_1188 (x_1037 - 1)
         else
           id_1030
  
     let rec f_1036 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037 =
       let u = if prev_set_flag_f_1190 then
                let u_10809 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037
  
     let main_1038 r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_1036 set_flag_f_1191 s_f_x_1188 r set_flag_f_1191 s_f_x_1188
       ()
")

(set-logic HORN)

(declare-fun |f_1036$unknown:28|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |main_1038$unknown:42|
  ( Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:26| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:35| |$cond-alpha-rename:26| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| (- |$cond-alpha-rename:19| 1) |$V-reftype:34| |$V-reftype:32|) (> |$cond-alpha-rename:19| 0) (> |$cond-alpha-rename:19| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:19|) 0) (+ (* 0 |$cond-alpha-rename:19|) 0)) )
      (|f_without_checking_1199$unknown:35| |$cond-alpha-rename:26| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$cond-alpha-rename:19| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:2| 1) )
      (|bot$unknown:21| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-27:x_1037| Int) (|$knormal:41| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| 1) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| 0 0) (|fail$unknown:37| |$knormal:43| 1) (|main_1038$unknown:42| |$alpha-27:x_1037|) (not (= 0 0)) )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-27:x_1037| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| 0 0) (|main_1038$unknown:42| |$alpha-27:x_1037|) (not (not (= 0 0))) )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) )
    (=>
      ( and (not (> |$alpha-20:x_1037| 0)) )
      (|f_without_checking_1199$unknown:35| |$V-reftype:75| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:29| Int) )
    ( and (|main_1038$unknown:42| |$cond-alpha-rename:29|) (not (= 0 0)) )
    )
  )
)
(check-sat)

(get-model)

