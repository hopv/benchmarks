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

(declare-fun |id_1030$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-19:u_1037| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:77| Int) )
    (=>
      ( and (> |$cond-alpha-rename:68| 0) (> |$alpha-17:n_1036| 0) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:144|) 0)) (= 0 (+ (* 0 |$cond-alpha-rename:150|) 0)) (= 0 0) (> |$cond-alpha-rename:144| 0) (> |$cond-alpha-rename:150| 0) (|f_1035$unknown:20| |$cond-alpha-rename:77| |$V-reftype:20| |$cond-alpha-rename:148| 1 |$cond-alpha-rename:148| (- |$cond-alpha-rename:144| 1) |$cond-alpha-rename:151|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:148| |$cond-alpha-rename:152| |$cond-alpha-rename:151| |$cond-alpha-rename:150| |$cond-alpha-rename:149|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:148| |$cond-alpha-rename:70| |$cond-alpha-rename:151| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:148| |$alpha-19:u_1037| |$cond-alpha-rename:151| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) )
      (|f_1035$unknown:20| |$cond-alpha-rename:77| |$V-reftype:20| |$cond-alpha-rename:148| |$alpha-19:u_1037| |$cond-alpha-rename:151| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-17:n_1036| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:96| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (> |$cond-alpha-rename:98| 0) (= 0 (+ (* 0 |$cond-alpha-rename:98|) 0)) (> |$alpha-17:n_1036| 0) )
      (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:96| 1 |$cond-alpha-rename:96| (- |$alpha-17:n_1036| 1) |$cond-alpha-rename:99|)
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
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:7| 1) (|f_1035$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094| |$cond-alpha-rename:206| |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203|) (|fail$unknown:22| |$knormal:9| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (not (> |$cond-alpha-rename:204| 0)) )
      (|id_1030$unknown:25| |$alpha-7:x_1031| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:45| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|id_1030$unknown:25| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42|) (not (> |$alpha-17:n_1036| 0)) )
      (|f_1035$unknown:20| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) )
    ( and (not (> |$cond-alpha-rename:209| 0)) (not (= 0 |$cond-alpha-rename:190|)) (|f_1035$unknown:19| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:209| |$cond-alpha-rename:208|) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:213|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1094|))) (not (> |$cond-alpha-rename:214| 0)) )
      (|id_1030$unknown:25| |$alpha-7:x_1031| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
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

