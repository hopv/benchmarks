(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_app_1138 s_app_h_EXPARAM_1131 x_1031 = x_1031
  
     let app_without_checking_1158 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 h_EXPARAM_1090 x_DO_NOT_CARE_1211 x_DO_NOT_CARE_1212 h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 v_1034 =
       let set_flag_app_1138 = true
       in
       let s_app_h_EXPARAM_1131 = h_EXPARAM_1090
       in
         h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
           s_app_h_EXPARAM_1131 v_1034
  
     let rec app_1032 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163 h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033 prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034 =
       let u = if prev_set_flag_app_1137 then
                if (7 * 1) + (1 * s_prev_app_h_EXPARAM_1134) >
                   (7 * 1) + (1 * h_EXPARAM_1090) &&
                   (7 * 1) + (1 * h_EXPARAM_1090) >= 0 then
                  ()
                else
                  let u_4585 = fail ()
                  in
                    bot()
               else () in
              app_without_checking_1158 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163
                h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033
                prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034
  
     let rec f_1035 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 n_1036 set_flag_app_1138 s_app_h_EXPARAM_1131 u_1037 =
       if n_1036 > 0 then
         app_1032 set_flag_app_1138 s_app_h_EXPARAM_1131
           ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
           set_flag_app_1138 s_app_h_EXPARAM_1131
           (f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 (n_1036 - 1))
       else
         id_1030
  
     let main_1038 r =
       let set_flag_app_1138 = false in
       let s_app_h_EXPARAM_1131 = 0 in
       f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 0
         set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
         s_app_h_EXPARAM_1131 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:51|
  ( Int ) Bool
)

(declare-fun |app_1032$unknown:16|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:31|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:34|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:43|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:44|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:46|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|app_1032$unknown:11| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:20|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:20|) 0) 1 |$cond-alpha-rename:48| |$cond-alpha-rename:47| (+ (* 0 |$cond-alpha-rename:20|) 0) |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:48| |$cond-alpha-rename:47| (+ (* 0 |$cond-alpha-rename:20|) 0) |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:49| |$cond-alpha-rename:48| |$cond-alpha-rename:47| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:20|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:20|) 0) 1 (- |$cond-alpha-rename:20| 1) |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:20| 0) (> |$cond-alpha-rename:46| 0) (not (and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:20|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:20|) 0)) 0))) (= (+ (* 0 |$cond-alpha-rename:20|) 0) (+ (* 0 |$cond-alpha-rename:46|) 0)) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:20|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:20|) 0) 1 |$cond-alpha-rename:48| |$cond-alpha-rename:47| (+ (* 0 |$cond-alpha-rename:20|) 0) |$cond-alpha-rename:48| |$cond-alpha-rename:47|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) )
    (=>
      ( and (|app_1032$unknown:11| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:28|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:28|) 0) 1 |$cond-alpha-rename:59| |$cond-alpha-rename:58| (+ (* 0 |$cond-alpha-rename:28|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58|) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:203| |$cond-alpha-rename:202| |$cond-alpha-rename:59| |$cond-alpha-rename:58| (+ (* 0 |$cond-alpha-rename:28|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:55|) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:28|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:28|) 0) 1 (- |$cond-alpha-rename:28| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:58|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:28| 0) (> |$cond-alpha-rename:57| 0) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:28|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:28|) 0))) (= (+ (* 0 |$cond-alpha-rename:28|) 0) (+ (* 0 |$cond-alpha-rename:57|) 0)) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:28|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:28|) 0) 1 |$cond-alpha-rename:59| |$cond-alpha-rename:58| (+ (* 0 |$cond-alpha-rename:28|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) )
    (=>
      ( and (|app_1032$unknown:11| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:36|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:36|) 0) 1 |$cond-alpha-rename:70| |$cond-alpha-rename:69| (+ (* 0 |$cond-alpha-rename:36|) 0) |$cond-alpha-rename:70| |$cond-alpha-rename:69|) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:70| |$cond-alpha-rename:69| (+ (* 0 |$cond-alpha-rename:36|) 0) |$cond-alpha-rename:70| |$cond-alpha-rename:69|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:71| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68| |$cond-alpha-rename:67| |$cond-alpha-rename:66|) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:36|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:36|) 0) 1 (- |$cond-alpha-rename:36| 1) |$cond-alpha-rename:70| |$cond-alpha-rename:69|) (> |$cond-alpha-rename:36| 0) (> |$cond-alpha-rename:68| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (= (+ (* 0 |$cond-alpha-rename:36|) 0) (+ (* 0 |$cond-alpha-rename:68|) 0)) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| (+ (* 0 |$cond-alpha-rename:36|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:36|) 0) 1 |$cond-alpha-rename:70| |$cond-alpha-rename:69| (+ (* 0 |$cond-alpha-rename:36|) 0) |$cond-alpha-rename:70| |$cond-alpha-rename:69|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:81| |$cond-alpha-rename:80| (+ (* 0 |$cond-alpha-rename:79|) 0) |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:79| 0) (not (and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:79|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:79|) 0)) 0))) )
      (|app_1032$unknown:11| |$V-reftype:52| (+ (* 0 |$cond-alpha-rename:79|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:79|) 0) 1 |$cond-alpha-rename:81| |$cond-alpha-rename:80| (+ (* 0 |$cond-alpha-rename:79|) 0) |$cond-alpha-rename:81| |$cond-alpha-rename:80|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:92| |$cond-alpha-rename:91| (+ (* 0 |$cond-alpha-rename:90|) 0) |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:93| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:90| 0) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:90|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:90|) 0))) )
      (|app_1032$unknown:11| |$V-reftype:52| (+ (* 0 |$cond-alpha-rename:90|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:90|) 0) 1 |$cond-alpha-rename:92| |$cond-alpha-rename:91| (+ (* 0 |$cond-alpha-rename:90|) 0) |$cond-alpha-rename:92| |$cond-alpha-rename:91|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:103| |$cond-alpha-rename:102| (+ (* 0 |$cond-alpha-rename:101|) 0) |$cond-alpha-rename:103| |$cond-alpha-rename:102|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:104| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (> |$cond-alpha-rename:101| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) )
      (|app_1032$unknown:11| |$V-reftype:52| (+ (* 0 |$cond-alpha-rename:101|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:101|) 0) 1 |$cond-alpha-rename:103| |$cond-alpha-rename:102| (+ (* 0 |$cond-alpha-rename:101|) 0) |$cond-alpha-rename:103| |$cond-alpha-rename:102|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:223| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:223| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:112|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:112|) 0) 1 |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:112|) 0) |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:112|) 0) |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:112| |$cond-alpha-rename:111| |$cond-alpha-rename:110|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:112| 0) (not (and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:112|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:112|) 0)) 0))) )
      (|app_1032$unknown:16| |$cond-alpha-rename:223| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:112|) 0) |$cond-alpha-rename:114| |$cond-alpha-rename:113|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:226| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:226| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:123|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:123|) 0) 1 |$cond-alpha-rename:125| |$cond-alpha-rename:124| (+ (* 0 |$cond-alpha-rename:123|) 0) |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:125| |$cond-alpha-rename:124| (+ (* 0 |$cond-alpha-rename:123|) 0) |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:123| 0) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:123|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:123|) 0))) )
      (|app_1032$unknown:16| |$cond-alpha-rename:226| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:125| |$cond-alpha-rename:124| (+ (* 0 |$cond-alpha-rename:123|) 0) |$cond-alpha-rename:125| |$cond-alpha-rename:124|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:229| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:229| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:134|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:134|) 0) 1 |$cond-alpha-rename:136| |$cond-alpha-rename:135| (+ (* 0 |$cond-alpha-rename:134|) 0) |$cond-alpha-rename:136| |$cond-alpha-rename:135|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:136| |$cond-alpha-rename:135| (+ (* 0 |$cond-alpha-rename:134|) 0) |$cond-alpha-rename:136| |$cond-alpha-rename:135|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:137| |$cond-alpha-rename:136| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$cond-alpha-rename:132|) (> |$cond-alpha-rename:134| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) )
      (|app_1032$unknown:16| |$cond-alpha-rename:229| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:136| |$cond-alpha-rename:135| (+ (* 0 |$cond-alpha-rename:134|) 0) |$cond-alpha-rename:136| |$cond-alpha-rename:135|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:148| |$cond-alpha-rename:147| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144| |$cond-alpha-rename:143|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:145| 0) (not (and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:145|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:145|) 0)) 0))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:147| |$cond-alpha-rename:146| (+ (* 0 |$cond-alpha-rename:145|) 0) |$cond-alpha-rename:147| |$cond-alpha-rename:146|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) )
    (=>
      ( and (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:154|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:156| 0) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:156|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:156|) 0))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:158| |$cond-alpha-rename:157| (+ (* 0 |$cond-alpha-rename:156|) 0) |$cond-alpha-rename:158| |$cond-alpha-rename:157|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) )
    (=>
      ( and (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178| |$cond-alpha-rename:177| |$cond-alpha-rename:176|) (> |$cond-alpha-rename:178| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:180| |$cond-alpha-rename:179| (+ (* 0 |$cond-alpha-rename:178|) 0) |$cond-alpha-rename:180| |$cond-alpha-rename:179|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$knormal:55| Int) )
    (=>
      ( and (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| (+ (* 0 |$alpha-30:n_1036|) 0) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) (> |$alpha-30:n_1036| 0) )
      (|f_1035$unknown:43| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| (- |$alpha-30:n_1036| 1) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) )
    (=>
      ( and (|app_1032$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| (+ (* 0 |$alpha-30:n_1036|) 0) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) (|f_1035$unknown:43| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) (> |$alpha-30:n_1036| 0) )
      (|f_1035$unknown:44| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:34| |$knormal:2| 1) )
      (|bot$unknown:34| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:89| Int) (|$V-reftype:91| Int) (|$V-reftype:93| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) )
    (=>
      ( and (|f_1035$unknown:43| |$V-reftype:93| |$V-reftype:91| |$V-reftype:89| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) (not (> |$alpha-30:n_1036| 0)) )
      (|f_1035$unknown:44| |$V-reftype:93| |$V-reftype:93| |$V-reftype:91| |$V-reftype:89| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) )
    ( and (|f_1035$unknown:43| |$cond-alpha-rename:238| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:244| |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240| |$cond-alpha-rename:239|) (not (= 0 |$cond-alpha-rename:236|)) (> |$cond-alpha-rename:241| 0) (not (and (> (+ 7 |$cond-alpha-rename:237|) (+ 7 (+ (* 0 |$cond-alpha-rename:241|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:241|) 0)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-36:r| Int) )
    (=>
      ( and (|main_1038$unknown:51| |$alpha-36:r|) )
      (|f_1035$unknown:43| 1 0 0 1 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

