(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec bin_1030 bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
       let u = if prev_set_flag_bin_1076 then
                if ((0 * 1) + (0 * s_prev_bin_n_1074)) + (1 * s_prev_bin_k_1075)
                   > ((0 * 1) + (0 * n_1031)) + (1 * k_1032) &&
                   ((0 * 1) + (0 * n_1031)) + (1 * k_1032) >= 0 ||
                   ((0 * 1) + (0 * s_prev_bin_n_1074)) + (1 * s_prev_bin_k_1075)
                   >= ((0 * 1) + (0 * n_1031)) + (1 * k_1032) &&
                   (((0 * 1) + (1 * s_prev_bin_n_1074)) + (-s_prev_bin_k_1075) >
                    ((0 * 1) + (1 * n_1031)) + (-k_1032) &&
                    ((0 * 1) + (1 * n_1031)) + (-k_1032) >= 0) then
                  ()
                else
                  let u_7213 = fail ()
                  in
                    bot()
               else () in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
     let rec bin_without_checking_1089 x_DO_NOT_CARE_1095 x_DO_NOT_CARE_1096 x_DO_NOT_CARE_1097 n_1031 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032 =
       let set_flag_bin_1077 = true
       in
       let s_bin_k_1073 = k_1032
       in
       let s_bin_n_1072 = n_1031
       in
         if n_1031 = 0 then
           1
         else
           if k_1032 <= 0 || k_1032 >= n_1031 then
             1
           else
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (k_1032 - 1)
             +
             bin_1030 bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (n_1031 - 1)
               set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034  n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073
             n_1035 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:1004| Int) (|$cond-alpha-rename:1055| Int) (|$cond-alpha-rename:1057| Int) (|$cond-alpha-rename:989| Int) (|$cond-alpha-rename:990| Int) (|$cond-alpha-rename:991| Int) (|$cond-alpha-rename:992| Int) (|$cond-alpha-rename:993| Int) (|$cond-alpha-rename:994| Int) (|$cond-alpha-rename:995| Int) (|$cond-alpha-rename:996| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (= |$cond-alpha-rename:992| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:996|) (+ (+ 0 0) |$cond-alpha-rename:996|)) (>= (+ (+ 0 0) |$cond-alpha-rename:996|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:996|) (+ (+ 0 0) |$cond-alpha-rename:996|)) (and (> (+ (+ 0 |$cond-alpha-rename:992|) (- |$cond-alpha-rename:996|)) (+ (+ 0 (- |$cond-alpha-rename:992| 1)) (- |$cond-alpha-rename:996|))) (>= (+ (+ 0 (- |$cond-alpha-rename:992| 1)) (- |$cond-alpha-rename:996|)) 0))))) (not (or (>= |$cond-alpha-rename:996| |$cond-alpha-rename:992|) (<= |$cond-alpha-rename:996| 0))) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:1057| 1) (|bot$unknown:29| |$cond-alpha-rename:1055| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1004| (- |$cond-alpha-rename:996| 1) |$cond-alpha-rename:996| |$cond-alpha-rename:992| 1 (- |$cond-alpha-rename:992| 1) |$cond-alpha-rename:996| |$cond-alpha-rename:992| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| |$cond-alpha-rename:992| |$cond-alpha-rename:991| |$cond-alpha-rename:990| |$cond-alpha-rename:989|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:996| |$cond-alpha-rename:996| |$cond-alpha-rename:992| 1 (- |$cond-alpha-rename:992| 1) |$cond-alpha-rename:996| |$cond-alpha-rename:992| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:1058| Int) (|$cond-alpha-rename:1059| Int) (|$cond-alpha-rename:1060| Int) (|$cond-alpha-rename:1061| Int) (|$cond-alpha-rename:1062| Int) (|$cond-alpha-rename:1063| Int) (|$cond-alpha-rename:1064| Int) (|$cond-alpha-rename:1065| Int) (|$cond-alpha-rename:1073| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:1065| 0) (>= |$cond-alpha-rename:1065| |$cond-alpha-rename:1061|))) (not (= |$cond-alpha-rename:1061| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1065|) (+ (+ 0 0) |$cond-alpha-rename:1065|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1065|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1065|) (+ (+ 0 0) |$cond-alpha-rename:1065|)) (and (> (+ (+ 0 |$cond-alpha-rename:1061|) (- |$cond-alpha-rename:1065|)) (+ (+ 0 (- |$cond-alpha-rename:1061| 1)) (- |$cond-alpha-rename:1065|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1061| 1)) (- |$cond-alpha-rename:1065|)) 0)))) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1073| (- |$cond-alpha-rename:1065| 1) |$cond-alpha-rename:1065| |$cond-alpha-rename:1061| 1 (- |$cond-alpha-rename:1061| 1) |$cond-alpha-rename:1065| |$cond-alpha-rename:1061| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1065| |$cond-alpha-rename:1064| |$cond-alpha-rename:1063| |$cond-alpha-rename:1062| |$cond-alpha-rename:1061| |$cond-alpha-rename:1060| |$cond-alpha-rename:1059| |$cond-alpha-rename:1058|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1065| |$cond-alpha-rename:1065| |$cond-alpha-rename:1061| 1 (- |$cond-alpha-rename:1061| 1) |$cond-alpha-rename:1065| |$cond-alpha-rename:1061| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:1124| Int) (|$cond-alpha-rename:1125| Int) (|$cond-alpha-rename:1126| Int) (|$cond-alpha-rename:1127| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:1129| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:1138| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:1130| 0) (>= |$cond-alpha-rename:1130| |$cond-alpha-rename:1126|))) (not (= |$cond-alpha-rename:1126| 0)) (not (not (= 0 1))) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1138| (- |$cond-alpha-rename:1130| 1) |$cond-alpha-rename:1130| |$cond-alpha-rename:1126| 1 (- |$cond-alpha-rename:1126| 1) |$cond-alpha-rename:1130| |$cond-alpha-rename:1126| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1130| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1127| |$cond-alpha-rename:1126| |$cond-alpha-rename:1125| |$cond-alpha-rename:1124| |$cond-alpha-rename:1123|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1130| |$cond-alpha-rename:1130| |$cond-alpha-rename:1126| 1 (- |$cond-alpha-rename:1126| 1) |$cond-alpha-rename:1130| |$cond-alpha-rename:1126| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:1140| Int) (|$cond-alpha-rename:1141| Int) (|$cond-alpha-rename:1142| Int) (|$cond-alpha-rename:1143| Int) (|$cond-alpha-rename:1144| Int) (|$cond-alpha-rename:1145| Int) (|$cond-alpha-rename:1146| Int) (|$cond-alpha-rename:1154| Int) (|$cond-alpha-rename:1205| Int) (|$cond-alpha-rename:1207| Int) (|$cond-alpha-rename:742| Int) (|$cond-alpha-rename:743| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:757| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:774| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:826| Int) (|$cond-alpha-rename:828| Int) (|$knormal:91| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1142| 1) (- |$cond-alpha-rename:1142| 1)) (= (- |$cond-alpha-rename:1142| 1) (- |$cond-alpha-rename:1142| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1146| |$cond-alpha-rename:1146|) (and (>= (+ (- |$cond-alpha-rename:1142| 1) (- |$cond-alpha-rename:1146|)) 0) (> (+ |$cond-alpha-rename:1142| (- |$cond-alpha-rename:1146|)) (+ (- |$cond-alpha-rename:1142| 1) (- |$cond-alpha-rename:1146|))))) (and (>= |$cond-alpha-rename:1146| 0) (> |$cond-alpha-rename:1146| |$cond-alpha-rename:1146|)))) (not (or (<= |$cond-alpha-rename:765| 0) (>= |$cond-alpha-rename:765| |$cond-alpha-rename:761|))) (not (or (<= |$cond-alpha-rename:1146| 0) (>= |$cond-alpha-rename:1146| |$cond-alpha-rename:1142|))) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1142| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1146|) (+ (+ 0 0) |$cond-alpha-rename:1146|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1146|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1146|) (+ (+ 0 0) |$cond-alpha-rename:1146|)) (and (> (+ (+ 0 |$cond-alpha-rename:1142|) (- |$cond-alpha-rename:1146|)) (+ (+ 0 (- |$cond-alpha-rename:1142| 1)) (- |$cond-alpha-rename:1146|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1142| 1)) (- |$cond-alpha-rename:1146|)) 0))))) (not (or (<= |$cond-alpha-rename:1146| 0) (>= |$cond-alpha-rename:1146| |$cond-alpha-rename:1142|))) (not (= |$cond-alpha-rename:1142| 0)) (|fail$unknown:31| |$cond-alpha-rename:828| 1) (|fail$unknown:31| |$cond-alpha-rename:1207| 1) (|bot$unknown:29| |$cond-alpha-rename:826| 1) (|bot$unknown:29| |$cond-alpha-rename:1205| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1146| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1 (- |$cond-alpha-rename:1142| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:775| |$cond-alpha-rename:1146| |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1 (- |$cond-alpha-rename:1142| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:774| (- |$cond-alpha-rename:765| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (- |$cond-alpha-rename:761| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:757| (- |$cond-alpha-rename:1146| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1 (- |$cond-alpha-rename:1142| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1154| (- |$cond-alpha-rename:1146| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1 (- |$cond-alpha-rename:1142| 1) |$cond-alpha-rename:1146| |$cond-alpha-rename:1142| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1146| |$cond-alpha-rename:748| |$cond-alpha-rename:747| |$cond-alpha-rename:746| |$cond-alpha-rename:1142| |$cond-alpha-rename:744| |$cond-alpha-rename:743| |$cond-alpha-rename:742|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1146| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1142| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1146| |$cond-alpha-rename:1145| |$cond-alpha-rename:1144| |$cond-alpha-rename:1143| |$cond-alpha-rename:1142| |$cond-alpha-rename:1141| |$cond-alpha-rename:1140| |$cond-alpha-rename:1139|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:775|) |$cond-alpha-rename:1146| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1142| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1208| Int) (|$cond-alpha-rename:1209| Int) (|$cond-alpha-rename:1210| Int) (|$cond-alpha-rename:1211| Int) (|$cond-alpha-rename:1212| Int) (|$cond-alpha-rename:1213| Int) (|$cond-alpha-rename:1214| Int) (|$cond-alpha-rename:1215| Int) (|$cond-alpha-rename:1223| Int) (|$cond-alpha-rename:742| Int) (|$cond-alpha-rename:743| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:757| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:774| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:826| Int) (|$cond-alpha-rename:828| Int) (|$knormal:91| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1211| 1)) (= (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1211| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1215| |$cond-alpha-rename:1215|) (and (>= (+ (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1215|)) 0) (> (+ |$cond-alpha-rename:1211| (- |$cond-alpha-rename:1215|)) (+ (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1215|))))) (and (>= |$cond-alpha-rename:1215| 0) (> |$cond-alpha-rename:1215| |$cond-alpha-rename:1215|)))) (not (or (<= |$cond-alpha-rename:765| 0) (>= |$cond-alpha-rename:765| |$cond-alpha-rename:761|))) (not (or (<= |$cond-alpha-rename:1215| 0) (>= |$cond-alpha-rename:1215| |$cond-alpha-rename:1211|))) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1211| 0)) (not (or (<= |$cond-alpha-rename:1215| 0) (>= |$cond-alpha-rename:1215| |$cond-alpha-rename:1211|))) (not (= |$cond-alpha-rename:1211| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1215|) (+ (+ 0 0) |$cond-alpha-rename:1215|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1215|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1215|) (+ (+ 0 0) |$cond-alpha-rename:1215|)) (and (> (+ (+ 0 |$cond-alpha-rename:1211|) (- |$cond-alpha-rename:1215|)) (+ (+ 0 (- |$cond-alpha-rename:1211| 1)) (- |$cond-alpha-rename:1215|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1211| 1)) (- |$cond-alpha-rename:1215|)) 0)))) (|fail$unknown:31| |$cond-alpha-rename:828| 1) (|bot$unknown:29| |$cond-alpha-rename:826| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1215| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1 (- |$cond-alpha-rename:1211| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:775| |$cond-alpha-rename:1215| |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1 (- |$cond-alpha-rename:1211| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:774| (- |$cond-alpha-rename:765| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1 (- |$cond-alpha-rename:761| 1) |$cond-alpha-rename:765| |$cond-alpha-rename:761| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:757| (- |$cond-alpha-rename:1215| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1 (- |$cond-alpha-rename:1211| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1223| (- |$cond-alpha-rename:1215| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1 (- |$cond-alpha-rename:1211| 1) |$cond-alpha-rename:1215| |$cond-alpha-rename:1211| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1215| |$cond-alpha-rename:748| |$cond-alpha-rename:747| |$cond-alpha-rename:746| |$cond-alpha-rename:1211| |$cond-alpha-rename:744| |$cond-alpha-rename:743| |$cond-alpha-rename:742|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1215| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1211| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1215| |$cond-alpha-rename:1214| |$cond-alpha-rename:1213| |$cond-alpha-rename:1212| |$cond-alpha-rename:1211| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1208|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:775|) |$cond-alpha-rename:1215| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1211| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1289| Int) (|$cond-alpha-rename:1290| Int) (|$cond-alpha-rename:1291| Int) (|$cond-alpha-rename:1292| Int) (|$cond-alpha-rename:1293| Int) (|$cond-alpha-rename:1294| Int) (|$cond-alpha-rename:1295| Int) (|$cond-alpha-rename:1296| Int) (|$cond-alpha-rename:1304| Int) (|$cond-alpha-rename:1355| Int) (|$cond-alpha-rename:1357| Int) (|$cond-alpha-rename:829| Int) (|$cond-alpha-rename:830| Int) (|$cond-alpha-rename:831| Int) (|$cond-alpha-rename:833| Int) (|$cond-alpha-rename:834| Int) (|$cond-alpha-rename:835| Int) (|$cond-alpha-rename:844| Int) (|$cond-alpha-rename:845| Int) (|$cond-alpha-rename:846| Int) (|$cond-alpha-rename:847| Int) (|$cond-alpha-rename:848| Int) (|$cond-alpha-rename:849| Int) (|$cond-alpha-rename:850| Int) (|$cond-alpha-rename:851| Int) (|$cond-alpha-rename:852| Int) (|$cond-alpha-rename:861| Int) (|$cond-alpha-rename:862| Int) (|$knormal:91| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1296| |$cond-alpha-rename:1296|) (and (>= (+ (- |$cond-alpha-rename:1292| 1) (- |$cond-alpha-rename:1296|)) 0) (> (+ |$cond-alpha-rename:1292| (- |$cond-alpha-rename:1296|)) (+ (- |$cond-alpha-rename:1292| 1) (- |$cond-alpha-rename:1296|))))) (and (>= |$cond-alpha-rename:1296| 0) (> |$cond-alpha-rename:1296| |$cond-alpha-rename:1296|))) (= (- |$cond-alpha-rename:1292| 1) (- |$cond-alpha-rename:1292| 1)) (= (- |$cond-alpha-rename:1292| 1) (- |$cond-alpha-rename:1292| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:852| 0) (>= |$cond-alpha-rename:852| |$cond-alpha-rename:848|))) (not (or (<= |$cond-alpha-rename:1296| 0) (>= |$cond-alpha-rename:1296| |$cond-alpha-rename:1292|))) (not (= |$cond-alpha-rename:848| 0)) (not (= |$cond-alpha-rename:1292| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1296|) (+ (+ 0 0) |$cond-alpha-rename:1296|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1296|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1296|) (+ (+ 0 0) |$cond-alpha-rename:1296|)) (and (> (+ (+ 0 |$cond-alpha-rename:1292|) (- |$cond-alpha-rename:1296|)) (+ (+ 0 (- |$cond-alpha-rename:1292| 1)) (- |$cond-alpha-rename:1296|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1292| 1)) (- |$cond-alpha-rename:1296|)) 0))))) (not (or (<= |$cond-alpha-rename:1296| 0) (>= |$cond-alpha-rename:1296| |$cond-alpha-rename:1292|))) (not (= |$cond-alpha-rename:1292| 0)) (|fail$unknown:31| |$cond-alpha-rename:1357| 1) (|bot$unknown:29| |$cond-alpha-rename:1355| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1296| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1 (- |$cond-alpha-rename:1292| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:862| |$cond-alpha-rename:1296| |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1 (- |$cond-alpha-rename:1292| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:861| (- |$cond-alpha-rename:852| 1) |$cond-alpha-rename:852| |$cond-alpha-rename:848| 1 (- |$cond-alpha-rename:848| 1) |$cond-alpha-rename:852| |$cond-alpha-rename:848| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:844| (- |$cond-alpha-rename:1296| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1 (- |$cond-alpha-rename:1292| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1304| (- |$cond-alpha-rename:1296| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1 (- |$cond-alpha-rename:1292| 1) |$cond-alpha-rename:1296| |$cond-alpha-rename:1292| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:852| |$cond-alpha-rename:851| |$cond-alpha-rename:850| |$cond-alpha-rename:849| |$cond-alpha-rename:848| |$cond-alpha-rename:847| |$cond-alpha-rename:846| |$cond-alpha-rename:845|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1296| |$cond-alpha-rename:835| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:1292| |$cond-alpha-rename:831| |$cond-alpha-rename:830| |$cond-alpha-rename:829|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1296| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1292| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1296| |$cond-alpha-rename:1295| |$cond-alpha-rename:1294| |$cond-alpha-rename:1293| |$cond-alpha-rename:1292| |$cond-alpha-rename:1291| |$cond-alpha-rename:1290| |$cond-alpha-rename:1289|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:862|) |$cond-alpha-rename:1296| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1292| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1358| Int) (|$cond-alpha-rename:1359| Int) (|$cond-alpha-rename:1360| Int) (|$cond-alpha-rename:1361| Int) (|$cond-alpha-rename:1362| Int) (|$cond-alpha-rename:1363| Int) (|$cond-alpha-rename:1364| Int) (|$cond-alpha-rename:1365| Int) (|$cond-alpha-rename:1373| Int) (|$cond-alpha-rename:829| Int) (|$cond-alpha-rename:830| Int) (|$cond-alpha-rename:831| Int) (|$cond-alpha-rename:833| Int) (|$cond-alpha-rename:834| Int) (|$cond-alpha-rename:835| Int) (|$cond-alpha-rename:844| Int) (|$cond-alpha-rename:845| Int) (|$cond-alpha-rename:846| Int) (|$cond-alpha-rename:847| Int) (|$cond-alpha-rename:848| Int) (|$cond-alpha-rename:849| Int) (|$cond-alpha-rename:850| Int) (|$cond-alpha-rename:851| Int) (|$cond-alpha-rename:852| Int) (|$cond-alpha-rename:861| Int) (|$cond-alpha-rename:862| Int) (|$knormal:91| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1365| |$cond-alpha-rename:1365|) (and (>= (+ (- |$cond-alpha-rename:1361| 1) (- |$cond-alpha-rename:1365|)) 0) (> (+ |$cond-alpha-rename:1361| (- |$cond-alpha-rename:1365|)) (+ (- |$cond-alpha-rename:1361| 1) (- |$cond-alpha-rename:1365|))))) (and (>= |$cond-alpha-rename:1365| 0) (> |$cond-alpha-rename:1365| |$cond-alpha-rename:1365|))) (= (- |$cond-alpha-rename:1361| 1) (- |$cond-alpha-rename:1361| 1)) (= (- |$cond-alpha-rename:1361| 1) (- |$cond-alpha-rename:1361| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:852| 0) (>= |$cond-alpha-rename:852| |$cond-alpha-rename:848|))) (not (or (<= |$cond-alpha-rename:1365| 0) (>= |$cond-alpha-rename:1365| |$cond-alpha-rename:1361|))) (not (= |$cond-alpha-rename:848| 0)) (not (= |$cond-alpha-rename:1361| 0)) (not (or (<= |$cond-alpha-rename:1365| 0) (>= |$cond-alpha-rename:1365| |$cond-alpha-rename:1361|))) (not (= |$cond-alpha-rename:1361| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1365|) (+ (+ 0 0) |$cond-alpha-rename:1365|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1365|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1365|) (+ (+ 0 0) |$cond-alpha-rename:1365|)) (and (> (+ (+ 0 |$cond-alpha-rename:1361|) (- |$cond-alpha-rename:1365|)) (+ (+ 0 (- |$cond-alpha-rename:1361| 1)) (- |$cond-alpha-rename:1365|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1361| 1)) (- |$cond-alpha-rename:1365|)) 0)))) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1365| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1 (- |$cond-alpha-rename:1361| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:862| |$cond-alpha-rename:1365| |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1 (- |$cond-alpha-rename:1361| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:861| (- |$cond-alpha-rename:852| 1) |$cond-alpha-rename:852| |$cond-alpha-rename:848| 1 (- |$cond-alpha-rename:848| 1) |$cond-alpha-rename:852| |$cond-alpha-rename:848| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:844| (- |$cond-alpha-rename:1365| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1 (- |$cond-alpha-rename:1361| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1373| (- |$cond-alpha-rename:1365| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1 (- |$cond-alpha-rename:1361| 1) |$cond-alpha-rename:1365| |$cond-alpha-rename:1361| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:852| |$cond-alpha-rename:851| |$cond-alpha-rename:850| |$cond-alpha-rename:849| |$cond-alpha-rename:848| |$cond-alpha-rename:847| |$cond-alpha-rename:846| |$cond-alpha-rename:845|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1365| |$cond-alpha-rename:835| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:1361| |$cond-alpha-rename:831| |$cond-alpha-rename:830| |$cond-alpha-rename:829|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1365| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1361| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1365| |$cond-alpha-rename:1364| |$cond-alpha-rename:1363| |$cond-alpha-rename:1362| |$cond-alpha-rename:1361| |$cond-alpha-rename:1360| |$cond-alpha-rename:1359| |$cond-alpha-rename:1358|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:862|) |$cond-alpha-rename:1365| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1361| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| 0 |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| 0 |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (not (= |$alpha-17:n_1031| 0)) (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:29| |$knormal:2| 1) )
      (|bot$unknown:29| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:490| Int) (|$cond-alpha-rename:491| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:493| Int) (|$cond-alpha-rename:494| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:504| Int) )
    ( and (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:496|) (+ (+ 0 0) |$cond-alpha-rename:496|)) (>= (+ (+ 0 0) |$cond-alpha-rename:496|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:496|) (+ (+ 0 0) |$cond-alpha-rename:496|)) (and (> (+ (+ 0 |$cond-alpha-rename:492|) (- |$cond-alpha-rename:496|)) (+ (+ 0 (- |$cond-alpha-rename:492| 1)) (- |$cond-alpha-rename:496|))) (>= (+ (+ 0 (- |$cond-alpha-rename:492| 1)) (- |$cond-alpha-rename:496|)) 0))))) (not (or (<= |$cond-alpha-rename:496| 0) (>= |$cond-alpha-rename:496| |$cond-alpha-rename:492|))) (not (= |$cond-alpha-rename:492| 0)) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:504| (- |$cond-alpha-rename:496| 1) |$cond-alpha-rename:496| |$cond-alpha-rename:492| 1 (- |$cond-alpha-rename:492| 1) |$cond-alpha-rename:496| |$cond-alpha-rename:492| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:496| |$cond-alpha-rename:495| |$cond-alpha-rename:494| |$cond-alpha-rename:493| |$cond-alpha-rename:492| |$cond-alpha-rename:491| |$cond-alpha-rename:490| |$cond-alpha-rename:489|) )
    )
  )
)
(assert
  (forall ( (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (>= |$alpha-29:n_1035| 0) (>= |$alpha-30:k_1036| 0) )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| 0 0 0 |$alpha-29:n_1035| 0 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

