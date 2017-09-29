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

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-19:u_1037| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:77| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:169| |$alpha-19:u_1037| |$cond-alpha-rename:172| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:169| |$cond-alpha-rename:70| |$cond-alpha-rename:172| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:169| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170|) (|f_1035$unknown:20| |$cond-alpha-rename:77| |$V-reftype:20| |$cond-alpha-rename:169| 1 |$cond-alpha-rename:169| (- |$cond-alpha-rename:165| 1) |$cond-alpha-rename:172|) (> |$cond-alpha-rename:171| 0) (> |$cond-alpha-rename:165| 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:171|) 0)) (= 0 (+ (* 0 |$cond-alpha-rename:165|) 0)) (= 1 1) (> |$alpha-17:n_1036| 0) (> |$cond-alpha-rename:68| 0) )
      (|f_1035$unknown:20| |$cond-alpha-rename:77| |$V-reftype:20| |$cond-alpha-rename:169| |$alpha-19:u_1037| |$cond-alpha-rename:172| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-17:n_1036| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) )
    (=>
      ( and (> |$alpha-17:n_1036| 0) (= 0 (+ (* 0 |$cond-alpha-rename:109|) 0)) (> |$cond-alpha-rename:109| 0) (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:107| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) )
      (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:107| 1 |$cond-alpha-rename:107| (- |$alpha-17:n_1036| 1) |$cond-alpha-rename:110|)
    )
  )
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
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:317| Int) )
    (=>
      ( and (not (> |$alpha-17:n_1036| 0)) (not (> |$cond-alpha-rename:309| 0)) (not (= 0 |$V-reftype:42|)) (|fail$unknown:22| |$cond-alpha-rename:317| 1) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309| |$cond-alpha-rename:308|) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|bot$unknown:13| |$cond-alpha-rename:315| 1) )
      (|f_1035$unknown:20| |$V-reftype:44| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) )
    (=>
      ( and (not (> |$alpha-17:n_1036| 0)) (not (> |$cond-alpha-rename:319| 0)) (not (not (= 0 |$V-reftype:42|))) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:321| |$cond-alpha-rename:320| |$cond-alpha-rename:319| |$cond-alpha-rename:318|) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) )
      (|f_1035$unknown:20| |$V-reftype:44| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) )
    ( and (|f_1035$unknown:19| |$cond-alpha-rename:229| |$cond-alpha-rename:228| |$cond-alpha-rename:249| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (not (= 0 |$cond-alpha-rename:228|)) (not (> |$cond-alpha-rename:247| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-22:r| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) )
      (|f_1035$unknown:19| 1 0 1 0 |$alpha-22:r| 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

