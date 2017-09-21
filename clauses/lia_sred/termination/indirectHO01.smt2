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

(declare-fun |fail$unknown:46|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:44|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:43|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:34|
  ( Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:31|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (> |$cond-alpha-rename:85| 0) (> |$cond-alpha-rename:20| 0) (= 0 0) (not (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| 1) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 (- |$cond-alpha-rename:20| 1) |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (|bot$unknown:34| |$knormal:45| 1) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:317| |$cond-alpha-rename:316| |$cond-alpha-rename:87| |$cond-alpha-rename:86| 0 |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (|app_1032$unknown:11| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:87| |$cond-alpha-rename:86| (+ (* 0 |$cond-alpha-rename:20|) 0) |$cond-alpha-rename:87| |$cond-alpha-rename:86|) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:87| |$cond-alpha-rename:86| 0 |$cond-alpha-rename:87| |$cond-alpha-rename:86|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7) (> |$cond-alpha-rename:96| 0) (> |$cond-alpha-rename:28| 0) (= 0 0) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 (- |$cond-alpha-rename:28| 1) |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$cond-alpha-rename:96| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:321| |$cond-alpha-rename:320| |$cond-alpha-rename:98| |$cond-alpha-rename:97| 0 |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|app_1032$unknown:11| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:98| |$cond-alpha-rename:97| (+ (* 0 |$cond-alpha-rename:28|) 0) |$cond-alpha-rename:98| |$cond-alpha-rename:97|) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:98| |$cond-alpha-rename:97| 0 |$cond-alpha-rename:98| |$cond-alpha-rename:97|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:36| Int) )
    (=>
      ( and (> |$cond-alpha-rename:36| 0) (> |$cond-alpha-rename:107| 0) (= 0 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (|f_1035$unknown:44| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 (- |$cond-alpha-rename:36| 1) |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|app_without_checking_1158$unknown:31| |$V-reftype:22| |$cond-alpha-rename:325| |$cond-alpha-rename:324| |$cond-alpha-rename:109| |$cond-alpha-rename:108| 0 |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|app_1032$unknown:11| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:109| |$cond-alpha-rename:108| (+ (* 0 |$cond-alpha-rename:36|) 0) |$cond-alpha-rename:109| |$cond-alpha-rename:108|) )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| 0 1 1 0 1 |$cond-alpha-rename:109| |$cond-alpha-rename:108| 0 |$cond-alpha-rename:109| |$cond-alpha-rename:108|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (> |$cond-alpha-rename:118| 0) (not (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116|) (|bot$unknown:34| |$knormal:45| 1) (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$cond-alpha-rename:120| |$cond-alpha-rename:119| 0 |$cond-alpha-rename:120| |$cond-alpha-rename:119|) )
      (|app_1032$unknown:11| |$V-reftype:52| 0 1 1 0 1 |$cond-alpha-rename:120| |$cond-alpha-rename:119| 0 |$cond-alpha-rename:120| |$cond-alpha-rename:119|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) )
    (=>
      ( and (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7) (> |$cond-alpha-rename:129| 0) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:132| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:333| |$cond-alpha-rename:332| |$cond-alpha-rename:131| |$cond-alpha-rename:130| 0 |$cond-alpha-rename:131| |$cond-alpha-rename:130|) )
      (|app_1032$unknown:11| |$V-reftype:52| 0 1 1 0 1 |$cond-alpha-rename:131| |$cond-alpha-rename:130| 0 |$cond-alpha-rename:131| |$cond-alpha-rename:130|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) )
    (=>
      ( and (> |$cond-alpha-rename:140| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:138|) (|app_without_checking_1158$unknown:31| |$V-reftype:52| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:142| |$cond-alpha-rename:141| 0 |$cond-alpha-rename:142| |$cond-alpha-rename:141|) )
      (|app_1032$unknown:11| |$V-reftype:52| 0 1 1 0 1 |$cond-alpha-rename:142| |$cond-alpha-rename:141| 0 |$cond-alpha-rename:142| |$cond-alpha-rename:141|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:444| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:444| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:151|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:151|) 0) 1 |$cond-alpha-rename:153| |$cond-alpha-rename:152| (+ (* 0 |$cond-alpha-rename:151|) 0) |$cond-alpha-rename:153| |$cond-alpha-rename:152|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:153| |$cond-alpha-rename:152| (+ (* 0 |$cond-alpha-rename:151|) 0) |$cond-alpha-rename:153| |$cond-alpha-rename:152|) (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:154| |$cond-alpha-rename:153| |$cond-alpha-rename:152| |$cond-alpha-rename:151| |$cond-alpha-rename:150| |$cond-alpha-rename:149|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (not (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7)) (> |$cond-alpha-rename:151| 0) )
      (|app_1032$unknown:16| |$cond-alpha-rename:444| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:153| |$cond-alpha-rename:152| 0 |$cond-alpha-rename:153| |$cond-alpha-rename:152|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:447| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:447| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:162|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:162|) 0) 1 |$cond-alpha-rename:164| |$cond-alpha-rename:163| (+ (* 0 |$cond-alpha-rename:162|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:164| |$cond-alpha-rename:163| (+ (* 0 |$cond-alpha-rename:162|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:162| 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) 7) )
      (|app_1032$unknown:16| |$cond-alpha-rename:447| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:164| |$cond-alpha-rename:163| 0 |$cond-alpha-rename:164| |$cond-alpha-rename:163|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:450| Int) )
    (=>
      ( and (|app_without_checking_1158$unknown:28| |$cond-alpha-rename:450| |$alpha-25:v_1034| (+ (* 0 |$cond-alpha-rename:173|) 0) 1 1 (+ (* 0 |$cond-alpha-rename:173|) 0) 1 |$cond-alpha-rename:175| |$cond-alpha-rename:174| (+ (* 0 |$cond-alpha-rename:173|) 0) |$cond-alpha-rename:175| |$cond-alpha-rename:174|) (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:175| |$cond-alpha-rename:174| (+ (* 0 |$cond-alpha-rename:173|) 0) |$cond-alpha-rename:175| |$cond-alpha-rename:174|) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:176| |$cond-alpha-rename:175| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (> |$cond-alpha-rename:173| 0) )
      (|app_1032$unknown:16| |$cond-alpha-rename:450| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:175| |$cond-alpha-rename:174| 0 |$cond-alpha-rename:175| |$cond-alpha-rename:174|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:187| Int) (|$knormal:45| Int) (|$knormal:47| Int) )
    (=>
      ( and (|bot$unknown:34| |$knormal:45| 1) (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:182|) (|fail$unknown:46| |$knormal:47| 1) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:184| 0) (not (and (>= (+ 7 (+ (* 0 |$cond-alpha-rename:184|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:184|) 0))))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:186| |$cond-alpha-rename:185| (+ (* 0 |$cond-alpha-rename:184|) 0) |$cond-alpha-rename:186| |$cond-alpha-rename:185|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) )
    (=>
      ( and (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:196| |$cond-alpha-rename:195| |$cond-alpha-rename:194| |$cond-alpha-rename:193|) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (> |$cond-alpha-rename:195| 0) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:195|) 0)) 0) (> (+ 7 |$alpha-24:s_prev_app_h_EXPARAM_1134|) (+ 7 (+ (* 0 |$cond-alpha-rename:195|) 0))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:197| |$cond-alpha-rename:196| (+ (* 0 |$cond-alpha-rename:195|) 0) |$cond-alpha-rename:197| |$cond-alpha-rename:196|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) )
    (=>
      ( and (|f_1035$unknown:43| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (> |$cond-alpha-rename:217| 0) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$cond-alpha-rename:219| |$cond-alpha-rename:218| (+ (* 0 |$cond-alpha-rename:217|) 0) |$cond-alpha-rename:219| |$cond-alpha-rename:218|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$knormal:55| Int) )
    (=>
      ( and (> |$alpha-30:n_1036| 0) (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| (+ (* 0 |$alpha-30:n_1036|) 0) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) )
      (|f_1035$unknown:43| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| (- |$alpha-30:n_1036| 1) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) )
    (=>
      ( and (> |$alpha-30:n_1036| 0) (|f_1035$unknown:43| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) (|app_1032$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| (+ (* 0 |$alpha-30:n_1036|) 0) |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) )
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
  (not (exists ( (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:561| Int) (|$cond-alpha-rename:562| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:565| Int) (|$cond-alpha-rename:566| Int) (|$cond-alpha-rename:567| Int) (|$cond-alpha-rename:568| Int) )
    ( and (not (and (> (+ 7 |$cond-alpha-rename:561|) (+ 7 (+ (* 0 |$cond-alpha-rename:565|) 0))) (>= (+ 7 (+ (* 0 |$cond-alpha-rename:565|) 0)) 0))) (> |$cond-alpha-rename:565| 0) (not (= 0 |$cond-alpha-rename:560|)) (|f_1035$unknown:43| |$cond-alpha-rename:562| |$cond-alpha-rename:561| |$cond-alpha-rename:560| |$cond-alpha-rename:568| |$cond-alpha-rename:567| |$cond-alpha-rename:566| |$cond-alpha-rename:565| |$cond-alpha-rename:564| |$cond-alpha-rename:563|) )
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

