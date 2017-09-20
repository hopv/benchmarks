(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 x_1031 =
       x_1031
  
     let rec app_without_checking_1157 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 x_DO_NOT_CARE_1217 h_EXPARAM_1087 x_DO_NOT_CARE_1212 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 h_1033 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 x_DO_NOT_CARE_1211 v_1034 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 u_1035 =
       let set_flag_app_1137 = true
       in
       let s_app_v_1130 = v_1034
       in
       let s_app_h_EXPARAM_1128 = h_EXPARAM_1087
       in
         h_1033 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 v_1034
           set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 u_1035
  
     let rec app_1032 x_DO_NOT_CARE_1165 x_DO_NOT_CARE_1166 x_DO_NOT_CARE_1167 h_EXPARAM_1087 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163 x_DO_NOT_CARE_1164 h_1033 x_DO_NOT_CARE_1159 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 v_1034 prev_set_flag_app_1136 s_prev_app_h_EXPARAM_1132 s_prev_app_v_1134 u_1035 =
       let u = if prev_set_flag_app_1136 then
                if ((0 * 1) + (0 * s_prev_app_h_EXPARAM_1132)) +
                   (1 * s_prev_app_v_1134) >
                   ((0 * 1) + (0 * h_EXPARAM_1087)) + (1 * v_1034) &&
                   ((0 * 1) + (0 * h_EXPARAM_1087)) + (1 * v_1034) >= 0 then
                  ()
                else
                  let u_5655 = fail ()
                  in
                    bot()
               else () in
              app_without_checking_1157 x_DO_NOT_CARE_1165 x_DO_NOT_CARE_1166
                x_DO_NOT_CARE_1167 h_EXPARAM_1087 x_DO_NOT_CARE_1162
                x_DO_NOT_CARE_1163 x_DO_NOT_CARE_1164 h_1033 x_DO_NOT_CARE_1159
                x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 v_1034
                prev_set_flag_app_1136 s_prev_app_h_EXPARAM_1132
                s_prev_app_v_1134 u_1035
  
     let rec f_1036 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 x_1037 =
       if x_1037 > 0 then
         app_1032 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130
           ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
           set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 f_1036
           set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 (x_1037 - 1)
       else
         id_1030
  
     let main_1038 r =
       let set_flag_app_1137 = false in
       let s_app_h_EXPARAM_1128 = 0 in
       let s_app_v_1130 = 0 in
       f_1036 set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 r
         set_flag_app_1137 s_app_h_EXPARAM_1128 s_app_v_1130 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:69|
  ( Int ) Bool
)

(declare-fun |app_1032$unknown:25|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1157$unknown:41|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:15|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1157$unknown:49|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:52|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:60|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:61|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:63|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1 |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| (+ (* 0 |$cond-alpha-rename:33|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57|) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:176| |$cond-alpha-rename:175| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| (+ (* 0 |$cond-alpha-rename:33|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57|) (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57|) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:33| 0) (> |$cond-alpha-rename:60| 0) (not (and (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:60| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:60| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:33|) 0) (+ (* 0 |$cond-alpha-rename:60|) 0)) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:173| (+ (* 0 |$cond-alpha-rename:33|) 0) 1 |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| (+ (* 0 |$cond-alpha-rename:33|) 0) |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) )
    (=>
      ( and (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1 |$cond-alpha-rename:182| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1 |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65| (+ (* 0 |$cond-alpha-rename:42|) 0) |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65| (+ (* 0 |$cond-alpha-rename:42|) 0) |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:68| |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65|) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1 |$cond-alpha-rename:182| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:42| 0) (> |$cond-alpha-rename:68| 0) (>= (+ (+ 0 0) (- |$cond-alpha-rename:68| 1)) 0) (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:68| 1))) (= (+ (* 0 |$cond-alpha-rename:42|) 0) (+ (* 0 |$cond-alpha-rename:68|) 0)) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1 |$cond-alpha-rename:182| |$cond-alpha-rename:182| (+ (* 0 |$cond-alpha-rename:42|) 0) 1 |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65| (+ (* 0 |$cond-alpha-rename:42|) 0) |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) )
    (=>
      ( and (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1 |$cond-alpha-rename:191| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1 |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| (+ (* 0 |$cond-alpha-rename:51|) 0) |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:192| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| (+ (* 0 |$cond-alpha-rename:51|) 0) |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:76| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1 |$cond-alpha-rename:191| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1) (> |$cond-alpha-rename:51| 0) (> |$cond-alpha-rename:76| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) (= (+ (* 0 |$cond-alpha-rename:51|) 0) (+ (* 0 |$cond-alpha-rename:76|) 0)) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1 |$cond-alpha-rename:191| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:51|) 0) 1 |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| (+ (* 0 |$cond-alpha-rename:51|) 0) |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:203| |$cond-alpha-rename:202| |$cond-alpha-rename:201| |$cond-alpha-rename:200| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81| (+ (* 0 |$cond-alpha-rename:84|) 0) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:84| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:84| 0) (not (and (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:84| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:84| 1)) 0))) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:200| (+ (* 0 |$cond-alpha-rename:84|) 0) 1 |$cond-alpha-rename:200| |$cond-alpha-rename:200| (+ (* 0 |$cond-alpha-rename:84|) 0) 1 |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81| (+ (* 0 |$cond-alpha-rename:84|) 0) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:212| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:209| |$cond-alpha-rename:208| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| (+ (* 0 |$cond-alpha-rename:92|) 0) |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89|) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:92| 0) (>= (+ (+ 0 0) (- |$cond-alpha-rename:92| 1)) 0) (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:92| 1))) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:209| (+ (* 0 |$cond-alpha-rename:92|) 0) 1 |$cond-alpha-rename:209| |$cond-alpha-rename:209| (+ (* 0 |$cond-alpha-rename:92|) 0) 1 |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| (+ (* 0 |$cond-alpha-rename:92|) 0) |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97| (+ (* 0 |$cond-alpha-rename:100|) 0) |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (> |$cond-alpha-rename:100| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:218| (+ (* 0 |$cond-alpha-rename:100|) 0) 1 |$cond-alpha-rename:218| |$cond-alpha-rename:218| (+ (* 0 |$cond-alpha-rename:100|) 0) 1 |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97| (+ (* 0 |$cond-alpha-rename:100|) 0) |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:224| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:224| |$alpha-41:u_1035| (- |$cond-alpha-rename:108| 1) (+ (* 0 |$cond-alpha-rename:108|) 0) 1 (- |$cond-alpha-rename:108| 1) (- |$cond-alpha-rename:108| 1) (+ (* 0 |$cond-alpha-rename:108|) 0) 1 |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| (+ (* 0 |$cond-alpha-rename:108|) 0) |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:108| 1) |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| (+ (* 0 |$cond-alpha-rename:108|) 0) |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:108| 0) (not (and (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:108| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:108| 1)) 0))) )
      (|app_1032$unknown:25| |$cond-alpha-rename:224| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:108| 1) |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| (+ (* 0 |$cond-alpha-rename:108|) 0) |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:226| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:226| |$alpha-41:u_1035| (- |$cond-alpha-rename:116| 1) (+ (* 0 |$cond-alpha-rename:116|) 0) 1 (- |$cond-alpha-rename:116| 1) (- |$cond-alpha-rename:116| 1) (+ (* 0 |$cond-alpha-rename:116|) 0) 1 |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:116|) 0) |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:116| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:116|) 0) |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:116| 0) (>= (+ (+ 0 0) (- |$cond-alpha-rename:116| 1)) 0) (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:116| 1))) )
      (|app_1032$unknown:25| |$cond-alpha-rename:226| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:116| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| (+ (* 0 |$cond-alpha-rename:116|) 0) |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:228| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:228| |$alpha-41:u_1035| (- |$cond-alpha-rename:124| 1) (+ (* 0 |$cond-alpha-rename:124|) 0) 1 (- |$cond-alpha-rename:124| 1) (- |$cond-alpha-rename:124| 1) (+ (* 0 |$cond-alpha-rename:124|) 0) 1 |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| (+ (* 0 |$cond-alpha-rename:124|) 0) |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:124| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| (+ (* 0 |$cond-alpha-rename:124|) 0) |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (> |$cond-alpha-rename:124| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) )
      (|app_1032$unknown:25| |$cond-alpha-rename:228| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:124| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| (+ (* 0 |$cond-alpha-rename:124|) 0) |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:132| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129|) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:132| 0) (not (and (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:132| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:132| 1)) 0))) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:132| 1) |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| (+ (* 0 |$cond-alpha-rename:132|) 0) |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) )
    (=>
      ( and (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137|) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:140| 0) (>= (+ (+ 0 0) (- |$cond-alpha-rename:140| 1)) 0) (> (+ (+ 0 0) |$alpha-40:s_prev_app_v_1134|) (+ (+ 0 0) (- |$cond-alpha-rename:140| 1))) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:140| 1) |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137| (+ (* 0 |$cond-alpha-rename:140|) 0) |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) )
    (=>
      ( and (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (> |$cond-alpha-rename:156| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:156| 1) |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| (+ (* 0 |$cond-alpha-rename:156|) 0) |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:109| Int) (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:29| Int) (|$alpha-44:set_flag_app_1137| Int) (|$alpha-45:s_app_h_EXPARAM_1128| Int) (|$alpha-46:s_app_v_1130| Int) (|$alpha-47:x_1037| Int) (|f_1036| Int) )
    (=>
      ( and (|app_1032$unknown:15| |$V-reftype:29| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:109| |$V-reftype:107| |$V-reftype:105| |f_1036| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| (+ (* 0 |$alpha-47:x_1037|) 0) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) (> |$alpha-47:x_1037| 0) )
      (|f_1036$unknown:60| |$V-reftype:29| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:109| |$V-reftype:107| |$V-reftype:105| |f_1036|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:48| Int) (|$V-reftype:49| Int) (|$alpha-44:set_flag_app_1137| Int) (|$alpha-45:s_app_h_EXPARAM_1128| Int) (|$alpha-46:s_app_v_1130| Int) (|$alpha-47:x_1037| Int) )
    (=>
      ( and (|app_1032$unknown:25| |$V-reftype:49| |$V-reftype:48| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| (- |$alpha-47:x_1037| 1) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| (+ (* 0 |$alpha-47:x_1037|) 0) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) (|f_1036$unknown:60| |$V-reftype:48| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$alpha-47:x_1037| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) (> |$alpha-47:x_1037| 0) )
      (|f_1036$unknown:61| |$V-reftype:49| |$V-reftype:48| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$alpha-47:x_1037| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:52| |$knormal:2| 1) )
      (|bot$unknown:52| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:129| Int) (|$alpha-44:set_flag_app_1137| Int) (|$alpha-45:s_app_h_EXPARAM_1128| Int) (|$alpha-46:s_app_v_1130| Int) (|$alpha-47:x_1037| Int) )
    (=>
      ( and (|f_1036$unknown:60| |$V-reftype:129| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$alpha-47:x_1037| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) (not (> |$alpha-47:x_1037| 0)) )
      (|f_1036$unknown:61| |$V-reftype:129| |$V-reftype:129| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$alpha-47:x_1037| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) )
    ( and (|f_1036$unknown:60| |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245| |$cond-alpha-rename:244|) (not (= 0 |$cond-alpha-rename:240|)) (> |$cond-alpha-rename:247| 0) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:242|) (+ (+ 0 0) (- |$cond-alpha-rename:247| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:247| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-50:r| Int) )
    (=>
      ( and (|main_1038$unknown:69| |$alpha-50:r|) )
      (|f_1036$unknown:60| 1 0 0 0 |$alpha-50:r| 0 0 0)
    )
  )
)
(check-sat)

(get-model)

