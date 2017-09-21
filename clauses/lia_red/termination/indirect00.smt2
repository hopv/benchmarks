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

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:20|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:60| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:135| |$alpha-19:x_1037| |$cond-alpha-rename:136|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:135| |$cond-alpha-rename:55| |$cond-alpha-rename:136|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:135| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1036$unknown:20| |$cond-alpha-rename:60| |$V-reftype:24| |$cond-alpha-rename:135| (- |$alpha-19:x_1037| 1) |$cond-alpha-rename:135|) (> |$cond-alpha-rename:137| 0) (> |$cond-alpha-rename:131| 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:137|) 0)) (= 0 (+ (* 0 |$cond-alpha-rename:131|) 0)) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:137| 1)) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:55| 1)) (> |$alpha-19:x_1037| 0) (> |$cond-alpha-rename:55| 0) )
      (|f_1036$unknown:20| |$cond-alpha-rename:60| |$V-reftype:24| |$cond-alpha-rename:135| |$alpha-19:x_1037| |$cond-alpha-rename:136|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) )
    (=>
      ( and (> |$alpha-19:x_1037| 0) (= 0 (+ (* 0 |$cond-alpha-rename:86|) 0)) (> |$cond-alpha-rename:86| 0) (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:84| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) )
      (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:84| (- |$cond-alpha-rename:86| 1) |$cond-alpha-rename:84|)
    )
  )
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
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:247| Int) )
    (=>
      ( and (not (> |$alpha-19:x_1037| 0)) (not (> |$cond-alpha-rename:241| 0)) (not (= 0 |$V-reftype:42|)) (|fail$unknown:22| |$cond-alpha-rename:247| 1) (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:241| |$cond-alpha-rename:240|) (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) (|bot$unknown:15| |$cond-alpha-rename:245| 1) )
      (|f_1036$unknown:20| |$V-reftype:44| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) )
    (=>
      ( and (not (> |$alpha-19:x_1037| 0)) (not (> |$cond-alpha-rename:249| 0)) (not (not (= 0 |$V-reftype:42|))) (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$cond-alpha-rename:249| |$cond-alpha-rename:248|) (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) )
      (|f_1036$unknown:20| |$V-reftype:44| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) )
    ( and (|f_1036$unknown:19| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:198| |$cond-alpha-rename:197|) (not (= 0 |$cond-alpha-rename:184|)) (not (> |$cond-alpha-rename:198| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-22:r| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) )
      (|f_1036$unknown:19| 1 0 |$alpha-22:r| 0)
    )
  )
)
(check-sat)

(get-model)

