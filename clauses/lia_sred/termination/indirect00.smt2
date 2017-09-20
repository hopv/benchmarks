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

(declare-fun |f_1036$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:20|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:70| |$alpha-19:x_1037| |$cond-alpha-rename:71|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:70| |$cond-alpha-rename:35| |$cond-alpha-rename:71|) (|f_1036$unknown:19| |$V-reftype:24| |$cond-alpha-rename:70| |$cond-alpha-rename:72| |$cond-alpha-rename:71|) (|f_1036$unknown:20| |$cond-alpha-rename:40| |$V-reftype:24| |$cond-alpha-rename:70| (- |$alpha-19:x_1037| 1) |$cond-alpha-rename:70|) (> |$cond-alpha-rename:35| 0) (> |$cond-alpha-rename:72| 0) (> |$cond-alpha-rename:66| 0) (> |$alpha-19:x_1037| 0) (= (+ (* 0 |$cond-alpha-rename:35|) 0) (+ (* 0 |$cond-alpha-rename:72|) 0)) (= (+ (* 0 |$cond-alpha-rename:35|) 0) (+ (* 0 |$cond-alpha-rename:66|) 0)) (= (+ (* 0 |$cond-alpha-rename:35|) 0) (+ (* 0 |$alpha-19:x_1037|) 0)) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:35| 1)) (= (- |$alpha-19:x_1037| 1) (- |$cond-alpha-rename:72| 1)) )
      (|f_1036$unknown:20| |$cond-alpha-rename:40| |$V-reftype:24| |$cond-alpha-rename:70| |$alpha-19:x_1037| |$cond-alpha-rename:71|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-19:x_1037| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:42| |$cond-alpha-rename:44| |$cond-alpha-rename:43|) (> |$cond-alpha-rename:44| 0) (> |$alpha-19:x_1037| 0) (= (+ (* 0 |$cond-alpha-rename:44|) 0) (+ (* 0 |$alpha-19:x_1037|) 0)) )
      (|f_1036$unknown:19| |$V-reftype:13| |$cond-alpha-rename:42| (- |$cond-alpha-rename:44| 1) |$cond-alpha-rename:42|)
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
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:7| 1) (|f_1036$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|fail$unknown:22| |$knormal:9| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (not (> |$cond-alpha-rename:98| 0)) )
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
  (not (exists ( (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) )
    ( and (|f_1036$unknown:19| |$cond-alpha-rename:96| |$cond-alpha-rename:95| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (not (= 0 |$cond-alpha-rename:95|)) (not (> |$cond-alpha-rename:101| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) )
    (=>
      ( and (|f_1036$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091| |$cond-alpha-rename:104| |$cond-alpha-rename:103|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1091|))) (not (> |$cond-alpha-rename:104| 0)) )
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

