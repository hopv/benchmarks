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

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-19:u_1037| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:91| |$alpha-19:u_1037| |$cond-alpha-rename:94| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:91| |$cond-alpha-rename:49| |$cond-alpha-rename:94| |$cond-alpha-rename:47| |$cond-alpha-rename:46|) (|f_1035$unknown:19| |$V-reftype:20| |$cond-alpha-rename:91| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$cond-alpha-rename:92|) (|f_1035$unknown:20| |$cond-alpha-rename:56| |$V-reftype:20| |$cond-alpha-rename:91| 1 |$cond-alpha-rename:91| (- |$cond-alpha-rename:87| 1) |$cond-alpha-rename:94|) (> |$cond-alpha-rename:87| 0) (> |$cond-alpha-rename:47| 0) (> |$cond-alpha-rename:93| 0) (> |$alpha-17:n_1036| 0) (= (+ (* 0 |$cond-alpha-rename:87|) 0) (+ (* 0 |$cond-alpha-rename:47|) 0)) (= (+ (* 0 |$cond-alpha-rename:87|) 0) (+ (* 0 |$cond-alpha-rename:93|) 0)) (= (+ (* 0 |$cond-alpha-rename:87|) 0) (+ (* 0 |$alpha-17:n_1036|) 0)) )
      (|f_1035$unknown:20| |$cond-alpha-rename:56| |$V-reftype:20| |$cond-alpha-rename:91| |$alpha-19:u_1037| |$cond-alpha-rename:94| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-17:n_1036| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:57| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$cond-alpha-rename:58|) (> |$cond-alpha-rename:59| 0) (> |$alpha-17:n_1036| 0) (= (+ (* 0 |$cond-alpha-rename:59|) 0) (+ (* 0 |$alpha-17:n_1036|) 0)) )
      (|f_1035$unknown:19| |$V-reftype:13| |$cond-alpha-rename:57| 1 |$cond-alpha-rename:57| (- |$alpha-17:n_1036| 1) |$cond-alpha-rename:60|)
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
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:7| 1) (|f_1035$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123|) (|fail$unknown:22| |$knormal:9| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (not (> |$cond-alpha-rename:124| 0)) )
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
  (not (exists ( (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) )
    ( and (|f_1035$unknown:19| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| |$cond-alpha-rename:128|) (not (= 0 |$cond-alpha-rename:121|)) (not (> |$cond-alpha-rename:129| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) )
    (=>
      ( and (|f_1035$unknown:19| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094| |$cond-alpha-rename:136| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:133|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1094|))) (not (> |$cond-alpha-rename:134| 0)) )
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

