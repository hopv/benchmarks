(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_f_1187 s_f_n_1182 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 h_EXPARAM_1090 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218 h_1033 set_flag_f_1187 s_f_n_1182 v_1034 =
       h_1033 set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 v_1034
  
     let rec f_without_checking_1197 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 n_1036 set_flag_f_1187 s_f_n_1182 u_1037 =
       let set_flag_f_1187 = true
       in
       let s_f_n_1182 = n_1036
       in
         if n_1036 > 0 then
           app_1032 set_flag_f_1187 s_f_n_1182
             ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
             set_flag_f_1187 s_f_n_1182
             (f_without_checking_1197 set_flag_f_1187 s_f_n_1182 (n_1036 - 1))
         else
           id_1030
  
     let rec f_1035 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037 =
       let u  =if prev_set_flag_f_1186 then
                let u_8614 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200
                n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037
  
     let main_1038 r =
       let set_flag_f_1187 = false in
       let s_f_n_1182 = 0 in
       f_1035 set_flag_f_1187 s_f_n_1182 r set_flag_f_1187 s_f_n_1182
         () set_flag_f_1187 s_f_n_1182 ()
")

(set-logic HORN)

(declare-fun |f_1035$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |main_1038$unknown:45|
  ( Int ) Bool
)

(declare-fun |bot$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$alpha-15:x_DO_NOT_CARE_1215| Int) (|$alpha-16:x_DO_NOT_CARE_1216| Int) (|$alpha-18:set_flag_f_1187| Int) (|$alpha-19:s_f_n_1182| Int) (|$alpha-20:u_1037| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:30| Int) )
    (=>
      ( and (|f_without_checking_1197$unknown:38| |$cond-alpha-rename:30| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| 1 |$V-reftype:28| |$V-reftype:26| (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:23| 1) (> |$cond-alpha-rename:23| 0) (> |$cond-alpha-rename:23| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:23|) 0) (+ (* 0 |$cond-alpha-rename:23|) 0)) )
      (|f_without_checking_1197$unknown:38| |$cond-alpha-rename:30| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-20:u_1037| |$alpha-19:s_f_n_1182| |$alpha-18:set_flag_f_1187| |$cond-alpha-rename:23| |$alpha-16:x_DO_NOT_CARE_1216| |$alpha-15:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:2| 1) )
      (|bot$unknown:18| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-27:n_1036| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:48| 1) (|f_without_checking_1197$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| 1 0 0 |$alpha-27:n_1036| 0 0) (|fail$unknown:40| |$knormal:50| 1) (|main_1038$unknown:45| |$alpha-27:n_1036|) (not (= 0 0)) )
      (|f_1035$unknown:28| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| 1 0 0 |$alpha-27:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-27:n_1036| Int) )
    (=>
      ( and (|f_without_checking_1197$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| 1 0 0 |$alpha-27:n_1036| 0 0) (|main_1038$unknown:45| |$alpha-27:n_1036|) (not (not (= 0 0))) )
      (|f_1035$unknown:28| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| 1 0 0 |$alpha-27:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$alpha-15:x_DO_NOT_CARE_1215| Int) (|$alpha-16:x_DO_NOT_CARE_1216| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_f_1187| Int) (|$alpha-19:s_f_n_1182| Int) (|$alpha-20:u_1037| Int) )
    (=>
      ( and (not (> |$alpha-17:n_1036| 0)) )
      (|f_without_checking_1197$unknown:38| |$V-reftype:81| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$alpha-20:u_1037| |$alpha-19:s_f_n_1182| |$alpha-18:set_flag_f_1187| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1216| |$alpha-15:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:42| Int) )
    ( and (|main_1038$unknown:45| |$cond-alpha-rename:42|) (not (= 0 0)) )
    )
  )
)
(check-sat)

(get-model)

