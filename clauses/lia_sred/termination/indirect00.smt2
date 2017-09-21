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

(declare-fun |id_1030$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:20|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:19|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:60| Int) )
    (=>
      ( and (> |$cond-alpha-rename:55| 0) (> |$alpha-19:x_1037| 0) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:55| 1)) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:122| 1)) (= 0 (+ (* 0 |$cond-alpha-rename:116|) 0)) (= 0 (+ (* 0 |$cond-alpha-rename:122|) 0)) (= 0 0) (> |$cond-alpha-rename:116| 0) (> |$cond-alpha-rename:122| 0) (|f_1036$unknown:20| |$cond-alpha-rename:60| |$V-reftype:24| |$cond-alpha-rename:120| (- |$alpha-19:x_1037| 1) |$cond-alpha-rename:120|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:120| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:120| |$cond-alpha-rename:55| |$cond-alpha-rename:121|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:120| |$alpha-19:x_1037| |$cond-alpha-rename:121|) )
      (|f_1036$unknown:20| |$cond-alpha-rename:60| |$V-reftype:24| |$cond-alpha-rename:120| |$alpha-19:x_1037| |$cond-alpha-rename:121|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:77| |$cond-alpha-rename:79| |$cond-alpha-rename:78|) (> |$cond-alpha-rename:79| 0) (= 0 (+ (* 0 |$cond-alpha-rename:79|) 0)) (> |$alpha-19:x_1037| 0) )
      (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:77| (- |$cond-alpha-rename:79| 1) |$cond-alpha-rename:77|)
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
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:7| 1) (|f_1036$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|fail$unknown:22| |$knormal:9| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (not (> |$cond-alpha-rename:165| 0)) )
      (|id_1030$unknown:25| |$alpha-7:x_1031| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:45| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) (|id_1030$unknown:25| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42|) (not (> |$alpha-19:x_1037| 0)) )
      (|f_1036$unknown:20| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) )
    ( and (not (> |$cond-alpha-rename:168| 0)) (not (= 0 |$cond-alpha-rename:154|)) (|f_1036$unknown:19| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:168| |$cond-alpha-rename:167|) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091| |$cond-alpha-rename:171| |$cond-alpha-rename:170|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1091|))) (not (> |$cond-alpha-rename:171| 0)) )
      (|id_1030$unknown:25| |$alpha-7:x_1031| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|)
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

