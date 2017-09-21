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

(declare-fun |fail$unknown:63|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:61|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:60|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:52|
  ( Int Int ) Bool
)

(declare-fun |app_without_checking_1157$unknown:49|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:15|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:352| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (> |$cond-alpha-rename:33| 0) (> |$cond-alpha-rename:110| 0) (= 0 0) (not (and (>= (- |$cond-alpha-rename:110| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:110| 1)))) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (|fail$unknown:63| |$knormal:70| 1) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:349| 0 1 |$cond-alpha-rename:349| |$cond-alpha-rename:349| 0 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) (|bot$unknown:52| |$knormal:68| 1) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:352| |$cond-alpha-rename:351| |$cond-alpha-rename:350| |$cond-alpha-rename:349| |$cond-alpha-rename:348| |$cond-alpha-rename:347| |$cond-alpha-rename:346| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107| 0 |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:349| 0 1 |$cond-alpha-rename:349| |$cond-alpha-rename:349| 0 1 |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107| (+ (* 0 |$cond-alpha-rename:33|) 0) |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:349| 0 1 |$cond-alpha-rename:349| |$cond-alpha-rename:349| 0 1 |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107| 0 |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:358| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:42| Int) )
    (=>
      ( and (> |$cond-alpha-rename:42| 0) (> |$cond-alpha-rename:118| 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:118| 1)) (>= (- |$cond-alpha-rename:118| 1) 0) (= 0 0) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:358| 0 1 |$cond-alpha-rename:358| |$cond-alpha-rename:358| 0 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:361| |$cond-alpha-rename:360| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:357| |$cond-alpha-rename:356| |$cond-alpha-rename:355| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| 0 |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:358| 0 1 |$cond-alpha-rename:358| |$cond-alpha-rename:358| 0 1 |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (+ (* 0 |$cond-alpha-rename:42|) 0) |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:358| 0 1 |$cond-alpha-rename:358| |$cond-alpha-rename:358| 0 1 |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| 0 |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:51| Int) )
    (=>
      ( and (> |$cond-alpha-rename:51| 0) (> |$cond-alpha-rename:126| 0) (= 0 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) (|f_1036$unknown:61| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:367| 0 1 |$cond-alpha-rename:367| |$cond-alpha-rename:367| 0 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123|) (|app_without_checking_1157$unknown:49| |$V-reftype:30| |$cond-alpha-rename:370| |$cond-alpha-rename:369| |$cond-alpha-rename:368| |$cond-alpha-rename:367| |$cond-alpha-rename:366| |$cond-alpha-rename:365| |$cond-alpha-rename:364| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| 0 |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123|) (|app_1032$unknown:15| |$V-reftype:30| |$cond-alpha-rename:367| 0 1 |$cond-alpha-rename:367| |$cond-alpha-rename:367| 0 1 |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| (+ (* 0 |$cond-alpha-rename:51|) 0) |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123|) )
      (|app_without_checking_1157$unknown:41| |$V-reftype:31| |$V-reftype:30| |$cond-alpha-rename:367| 0 1 |$cond-alpha-rename:367| |$cond-alpha-rename:367| 0 1 |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| 0 |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:374| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (> |$cond-alpha-rename:134| 0) (not (and (>= (- |$cond-alpha-rename:134| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:134| 1)))) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (|fail$unknown:63| |$knormal:70| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|bot$unknown:52| |$knormal:68| 1) (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:379| |$cond-alpha-rename:378| |$cond-alpha-rename:377| |$cond-alpha-rename:376| |$cond-alpha-rename:375| |$cond-alpha-rename:374| |$cond-alpha-rename:373| |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131| 0 |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131|) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:376| 0 1 |$cond-alpha-rename:376| |$cond-alpha-rename:376| 0 1 |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131| 0 |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:384| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:388| Int) )
    (=>
      ( and (> |$cond-alpha-rename:142| 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:142| 1)) (>= (- |$cond-alpha-rename:142| 1) 0) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:386| |$cond-alpha-rename:385| |$cond-alpha-rename:384| |$cond-alpha-rename:383| |$cond-alpha-rename:382| |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139| 0 |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:385| 0 1 |$cond-alpha-rename:385| |$cond-alpha-rename:385| 0 1 |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139| 0 |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:391| Int) (|$cond-alpha-rename:392| Int) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:397| Int) )
    (=>
      ( and (> |$cond-alpha-rename:150| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:150| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) (|app_without_checking_1157$unknown:49| |$V-reftype:78| |$cond-alpha-rename:397| |$cond-alpha-rename:396| |$cond-alpha-rename:395| |$cond-alpha-rename:394| |$cond-alpha-rename:393| |$cond-alpha-rename:392| |$cond-alpha-rename:391| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147| 0 |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) )
      (|app_1032$unknown:15| |$V-reftype:78| |$cond-alpha-rename:394| 0 1 |$cond-alpha-rename:394| |$cond-alpha-rename:394| 0 1 |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147| 0 |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:560| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:560| |$alpha-41:u_1035| (- |$cond-alpha-rename:158| 1) (+ (* 0 |$cond-alpha-rename:158|) 0) 1 (- |$cond-alpha-rename:158| 1) (- |$cond-alpha-rename:158| 1) (+ (* 0 |$cond-alpha-rename:158|) 0) 1 |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| (+ (* 0 |$cond-alpha-rename:158|) 0) |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:158| 1) |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| (+ (* 0 |$cond-alpha-rename:158|) 0) |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155|) (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:158| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155|) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (not (and (>= (- |$cond-alpha-rename:158| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:158| 1)))) (> |$cond-alpha-rename:158| 0) )
      (|app_1032$unknown:25| |$cond-alpha-rename:560| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:158| 1) |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155| 0 |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:562| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:562| |$alpha-41:u_1035| (- |$cond-alpha-rename:166| 1) (+ (* 0 |$cond-alpha-rename:166|) 0) 1 (- |$cond-alpha-rename:166| 1) (- |$cond-alpha-rename:166| 1) (+ (* 0 |$cond-alpha-rename:166|) 0) 1 |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| (+ (* 0 |$cond-alpha-rename:166|) 0) |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:166| 1) |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| (+ (* 0 |$cond-alpha-rename:166|) 0) |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:166| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163|) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (>= (- |$cond-alpha-rename:166| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:166| 1)) (> |$cond-alpha-rename:166| 0) )
      (|app_1032$unknown:25| |$cond-alpha-rename:562| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:166| 1) |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| 0 |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:564| Int) )
    (=>
      ( and (|app_without_checking_1157$unknown:41| |$cond-alpha-rename:564| |$alpha-41:u_1035| (- |$cond-alpha-rename:174| 1) (+ (* 0 |$cond-alpha-rename:174|) 0) 1 (- |$cond-alpha-rename:174| 1) (- |$cond-alpha-rename:174| 1) (+ (* 0 |$cond-alpha-rename:174|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:174| 1) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) (> |$cond-alpha-rename:174| 0) )
      (|app_1032$unknown:25| |$cond-alpha-rename:564| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:174| 1) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| 0 |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|bot$unknown:52| |$knormal:68| 1) (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179|) (|fail$unknown:63| |$knormal:70| 1) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:182| 0) (not (and (>= (- |$cond-alpha-rename:182| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:182| 1)))) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:182| 1) |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179| (+ (* 0 |$cond-alpha-rename:182|) 0) |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) )
    (=>
      ( and (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187|) (not (= 0 |$alpha-38:prev_set_flag_app_1136|)) (> |$cond-alpha-rename:190| 0) (>= (- |$cond-alpha-rename:190| 1) 0) (> |$alpha-40:s_prev_app_v_1134| (- |$cond-alpha-rename:190| 1)) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:190| 1) |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187| (+ (* 0 |$cond-alpha-rename:190|) 0) |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187|)
    )
  )
)
(assert
  (forall ( (|$alpha-38:prev_set_flag_app_1136| Int) (|$alpha-39:s_prev_app_h_EXPARAM_1132| Int) (|$alpha-40:s_prev_app_v_1134| Int) (|$alpha-41:u_1035| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) )
    (=>
      ( and (|f_1036$unknown:60| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| |$cond-alpha-rename:206| |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203|) (> |$cond-alpha-rename:206| 0) (not (not (= 0 |$alpha-38:prev_set_flag_app_1136|))) )
      (|app_without_checking_1157$unknown:49| |$alpha-41:u_1035| |$alpha-40:s_prev_app_v_1134| |$alpha-39:s_prev_app_h_EXPARAM_1132| |$alpha-38:prev_set_flag_app_1136| (- |$cond-alpha-rename:206| 1) |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203| |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203| (+ (* 0 |$cond-alpha-rename:206|) 0) |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:105| Int) (|$V-reftype:107| Int) (|$V-reftype:109| Int) (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:29| Int) (|$alpha-44:set_flag_app_1137| Int) (|$alpha-45:s_app_h_EXPARAM_1128| Int) (|$alpha-46:s_app_v_1130| Int) (|$alpha-47:x_1037| Int) (|f_1036| Int) )
    (=>
      ( and (> |$alpha-47:x_1037| 0) (|app_1032$unknown:15| |$V-reftype:29| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:109| |$V-reftype:107| |$V-reftype:105| |f_1036| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| (+ (* 0 |$alpha-47:x_1037|) 0) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) )
      (|f_1036$unknown:60| |$V-reftype:29| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$V-reftype:109| |$V-reftype:107| |$V-reftype:105| |f_1036|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:46| Int) (|$V-reftype:48| Int) (|$V-reftype:49| Int) (|$alpha-44:set_flag_app_1137| Int) (|$alpha-45:s_app_h_EXPARAM_1128| Int) (|$alpha-46:s_app_v_1130| Int) (|$alpha-47:x_1037| Int) )
    (=>
      ( and (> |$alpha-47:x_1037| 0) (|f_1036$unknown:60| |$V-reftype:48| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| |$alpha-47:x_1037| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) (|app_1032$unknown:25| |$V-reftype:49| |$V-reftype:48| |$V-reftype:46| |$V-reftype:44| |$V-reftype:42| (- |$alpha-47:x_1037| 1) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137| (+ (* 0 |$alpha-47:x_1037|) 0) |$alpha-46:s_app_v_1130| |$alpha-45:s_app_h_EXPARAM_1128| |$alpha-44:set_flag_app_1137|) )
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
  (not (exists ( (|$cond-alpha-rename:736| Int) (|$cond-alpha-rename:737| Int) (|$cond-alpha-rename:738| Int) (|$cond-alpha-rename:739| Int) (|$cond-alpha-rename:740| Int) (|$cond-alpha-rename:741| Int) (|$cond-alpha-rename:742| Int) (|$cond-alpha-rename:743| Int) )
    ( and (not (and (> (+ (+ 0 0) |$cond-alpha-rename:738|) (+ (+ 0 0) (- |$cond-alpha-rename:743| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:743| 1)) 0))) (> |$cond-alpha-rename:743| 0) (not (= 0 |$cond-alpha-rename:736|)) (|f_1036$unknown:60| |$cond-alpha-rename:739| |$cond-alpha-rename:738| |$cond-alpha-rename:737| |$cond-alpha-rename:736| |$cond-alpha-rename:743| |$cond-alpha-rename:742| |$cond-alpha-rename:741| |$cond-alpha-rename:740|) )
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

