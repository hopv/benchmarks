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
  
  let mian =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:37|
  ( Int Int Int Int Int Int ) Bool
)

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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:910| Int) (|$cond-alpha-rename:911| Int) (|$cond-alpha-rename:912| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:925| Int) (|$cond-alpha-rename:976| Int) (|$cond-alpha-rename:978| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:917|) (+ (+ 0 0) |$cond-alpha-rename:917|)) (>= (+ (+ 0 0) |$cond-alpha-rename:917|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:917|) (+ (+ 0 0) |$cond-alpha-rename:917|)) (and (> (+ (+ 0 |$cond-alpha-rename:913|) (- |$cond-alpha-rename:917|)) (+ (+ 0 (- |$cond-alpha-rename:913| 1)) (- |$cond-alpha-rename:917|))) (>= (+ (+ 0 (- |$cond-alpha-rename:913| 1)) (- |$cond-alpha-rename:917|)) 0))))) (not (or (<= |$cond-alpha-rename:917| 0) (>= |$cond-alpha-rename:917| |$cond-alpha-rename:913|))) (not (= |$cond-alpha-rename:913| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:978| 1) (|bot$unknown:29| |$cond-alpha-rename:976| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:925| (- |$cond-alpha-rename:917| 1) |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1 (- |$cond-alpha-rename:913| 1) |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:917| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| |$cond-alpha-rename:911| |$cond-alpha-rename:910|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:917| |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1 (- |$cond-alpha-rename:913| 1) |$cond-alpha-rename:917| |$cond-alpha-rename:913| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:979| Int) (|$cond-alpha-rename:980| Int) (|$cond-alpha-rename:981| Int) (|$cond-alpha-rename:982| Int) (|$cond-alpha-rename:983| Int) (|$cond-alpha-rename:984| Int) (|$cond-alpha-rename:985| Int) (|$cond-alpha-rename:986| Int) (|$cond-alpha-rename:994| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:986| 0) (>= |$cond-alpha-rename:986| |$cond-alpha-rename:982|))) (not (= |$cond-alpha-rename:982| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:986|) (+ (+ 0 0) |$cond-alpha-rename:986|)) (>= (+ (+ 0 0) |$cond-alpha-rename:986|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:986|) (+ (+ 0 0) |$cond-alpha-rename:986|)) (and (> (+ (+ 0 |$cond-alpha-rename:982|) (- |$cond-alpha-rename:986|)) (+ (+ 0 (- |$cond-alpha-rename:982| 1)) (- |$cond-alpha-rename:986|))) (>= (+ (+ 0 (- |$cond-alpha-rename:982| 1)) (- |$cond-alpha-rename:986|)) 0)))) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:994| (- |$cond-alpha-rename:986| 1) |$cond-alpha-rename:986| |$cond-alpha-rename:982| 1 (- |$cond-alpha-rename:982| 1) |$cond-alpha-rename:986| |$cond-alpha-rename:982| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:986| |$cond-alpha-rename:985| |$cond-alpha-rename:984| |$cond-alpha-rename:983| |$cond-alpha-rename:982| |$cond-alpha-rename:981| |$cond-alpha-rename:980| |$cond-alpha-rename:979|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:986| |$cond-alpha-rename:986| |$cond-alpha-rename:982| 1 (- |$cond-alpha-rename:982| 1) |$cond-alpha-rename:986| |$cond-alpha-rename:982| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:1044| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:1046| Int) (|$cond-alpha-rename:1047| Int) (|$cond-alpha-rename:1048| Int) (|$cond-alpha-rename:1049| Int) (|$cond-alpha-rename:1050| Int) (|$cond-alpha-rename:1051| Int) (|$cond-alpha-rename:1059| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:1051| 0) (>= |$cond-alpha-rename:1051| |$cond-alpha-rename:1047|))) (not (= |$cond-alpha-rename:1047| 0)) (not (not (= 0 1))) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1059| (- |$cond-alpha-rename:1051| 1) |$cond-alpha-rename:1051| |$cond-alpha-rename:1047| 1 (- |$cond-alpha-rename:1047| 1) |$cond-alpha-rename:1051| |$cond-alpha-rename:1047| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1051| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| |$cond-alpha-rename:1046| |$cond-alpha-rename:1045| |$cond-alpha-rename:1044|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1051| |$cond-alpha-rename:1051| |$cond-alpha-rename:1047| 1 (- |$cond-alpha-rename:1047| 1) |$cond-alpha-rename:1051| |$cond-alpha-rename:1047| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1060| Int) (|$cond-alpha-rename:1061| Int) (|$cond-alpha-rename:1062| Int) (|$cond-alpha-rename:1063| Int) (|$cond-alpha-rename:1064| Int) (|$cond-alpha-rename:1065| Int) (|$cond-alpha-rename:1066| Int) (|$cond-alpha-rename:1067| Int) (|$cond-alpha-rename:1075| Int) (|$cond-alpha-rename:1126| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:663| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:678| Int) (|$cond-alpha-rename:679| Int) (|$cond-alpha-rename:680| Int) (|$cond-alpha-rename:681| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:749| Int) (|$knormal:91| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1063| 1) (- |$cond-alpha-rename:1063| 1)) (= (- |$cond-alpha-rename:1063| 1) (- |$cond-alpha-rename:1063| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1067| |$cond-alpha-rename:1067|) (and (>= (+ (- |$cond-alpha-rename:1063| 1) (- |$cond-alpha-rename:1067|)) 0) (> (+ |$cond-alpha-rename:1063| (- |$cond-alpha-rename:1067|)) (+ (- |$cond-alpha-rename:1063| 1) (- |$cond-alpha-rename:1067|))))) (and (>= |$cond-alpha-rename:1067| 0) (> |$cond-alpha-rename:1067| |$cond-alpha-rename:1067|)))) (not (or (<= |$cond-alpha-rename:686| 0) (>= |$cond-alpha-rename:686| |$cond-alpha-rename:682|))) (not (or (<= |$cond-alpha-rename:1067| 0) (>= |$cond-alpha-rename:1067| |$cond-alpha-rename:1063|))) (not (= |$cond-alpha-rename:682| 0)) (not (= |$cond-alpha-rename:1063| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1067|) (+ (+ 0 0) |$cond-alpha-rename:1067|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1067|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1067|) (+ (+ 0 0) |$cond-alpha-rename:1067|)) (and (> (+ (+ 0 |$cond-alpha-rename:1063|) (- |$cond-alpha-rename:1067|)) (+ (+ 0 (- |$cond-alpha-rename:1063| 1)) (- |$cond-alpha-rename:1067|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1063| 1)) (- |$cond-alpha-rename:1067|)) 0))))) (not (or (<= |$cond-alpha-rename:1067| 0) (>= |$cond-alpha-rename:1067| |$cond-alpha-rename:1063|))) (not (= |$cond-alpha-rename:1063| 0)) (|fail$unknown:31| |$cond-alpha-rename:749| 1) (|fail$unknown:31| |$cond-alpha-rename:1128| 1) (|bot$unknown:29| |$cond-alpha-rename:747| 1) (|bot$unknown:29| |$cond-alpha-rename:1126| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1067| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 (- |$cond-alpha-rename:1063| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:696| |$cond-alpha-rename:1067| |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 (- |$cond-alpha-rename:1063| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:695| (- |$cond-alpha-rename:686| 1) |$cond-alpha-rename:686| |$cond-alpha-rename:682| 1 (- |$cond-alpha-rename:682| 1) |$cond-alpha-rename:686| |$cond-alpha-rename:682| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:678| (- |$cond-alpha-rename:1067| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 (- |$cond-alpha-rename:1063| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1075| (- |$cond-alpha-rename:1067| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 (- |$cond-alpha-rename:1063| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682| |$cond-alpha-rename:681| |$cond-alpha-rename:680| |$cond-alpha-rename:679|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1067| |$cond-alpha-rename:669| |$cond-alpha-rename:668| |$cond-alpha-rename:667| |$cond-alpha-rename:1063| |$cond-alpha-rename:665| |$cond-alpha-rename:664| |$cond-alpha-rename:663|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1067| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1063| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1067| |$cond-alpha-rename:1066| |$cond-alpha-rename:1065| |$cond-alpha-rename:1064| |$cond-alpha-rename:1063| |$cond-alpha-rename:1062| |$cond-alpha-rename:1061| |$cond-alpha-rename:1060|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:696|) |$cond-alpha-rename:1067| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1063| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1129| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:1131| Int) (|$cond-alpha-rename:1132| Int) (|$cond-alpha-rename:1133| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1144| Int) (|$cond-alpha-rename:663| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:678| Int) (|$cond-alpha-rename:679| Int) (|$cond-alpha-rename:680| Int) (|$cond-alpha-rename:681| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:749| Int) (|$knormal:91| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1132| 1) (- |$cond-alpha-rename:1132| 1)) (= (- |$cond-alpha-rename:1132| 1) (- |$cond-alpha-rename:1132| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1136| |$cond-alpha-rename:1136|) (and (>= (+ (- |$cond-alpha-rename:1132| 1) (- |$cond-alpha-rename:1136|)) 0) (> (+ |$cond-alpha-rename:1132| (- |$cond-alpha-rename:1136|)) (+ (- |$cond-alpha-rename:1132| 1) (- |$cond-alpha-rename:1136|))))) (and (>= |$cond-alpha-rename:1136| 0) (> |$cond-alpha-rename:1136| |$cond-alpha-rename:1136|)))) (not (or (<= |$cond-alpha-rename:686| 0) (>= |$cond-alpha-rename:686| |$cond-alpha-rename:682|))) (not (or (<= |$cond-alpha-rename:1136| 0) (>= |$cond-alpha-rename:1136| |$cond-alpha-rename:1132|))) (not (= |$cond-alpha-rename:682| 0)) (not (= |$cond-alpha-rename:1132| 0)) (not (or (<= |$cond-alpha-rename:1136| 0) (>= |$cond-alpha-rename:1136| |$cond-alpha-rename:1132|))) (not (= |$cond-alpha-rename:1132| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1136|) (+ (+ 0 0) |$cond-alpha-rename:1136|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1136|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1136|) (+ (+ 0 0) |$cond-alpha-rename:1136|)) (and (> (+ (+ 0 |$cond-alpha-rename:1132|) (- |$cond-alpha-rename:1136|)) (+ (+ 0 (- |$cond-alpha-rename:1132| 1)) (- |$cond-alpha-rename:1136|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1132| 1)) (- |$cond-alpha-rename:1136|)) 0)))) (|fail$unknown:31| |$cond-alpha-rename:749| 1) (|bot$unknown:29| |$cond-alpha-rename:747| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1136| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1 (- |$cond-alpha-rename:1132| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:696| |$cond-alpha-rename:1136| |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1 (- |$cond-alpha-rename:1132| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:695| (- |$cond-alpha-rename:686| 1) |$cond-alpha-rename:686| |$cond-alpha-rename:682| 1 (- |$cond-alpha-rename:682| 1) |$cond-alpha-rename:686| |$cond-alpha-rename:682| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:678| (- |$cond-alpha-rename:1136| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1 (- |$cond-alpha-rename:1132| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1144| (- |$cond-alpha-rename:1136| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1 (- |$cond-alpha-rename:1132| 1) |$cond-alpha-rename:1136| |$cond-alpha-rename:1132| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682| |$cond-alpha-rename:681| |$cond-alpha-rename:680| |$cond-alpha-rename:679|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1136| |$cond-alpha-rename:669| |$cond-alpha-rename:668| |$cond-alpha-rename:667| |$cond-alpha-rename:1132| |$cond-alpha-rename:665| |$cond-alpha-rename:664| |$cond-alpha-rename:663|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1136| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1132| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134| |$cond-alpha-rename:1133| |$cond-alpha-rename:1132| |$cond-alpha-rename:1131| |$cond-alpha-rename:1130| |$cond-alpha-rename:1129|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:696|) |$cond-alpha-rename:1136| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1132| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1210| Int) (|$cond-alpha-rename:1211| Int) (|$cond-alpha-rename:1212| Int) (|$cond-alpha-rename:1213| Int) (|$cond-alpha-rename:1214| Int) (|$cond-alpha-rename:1215| Int) (|$cond-alpha-rename:1216| Int) (|$cond-alpha-rename:1217| Int) (|$cond-alpha-rename:1225| Int) (|$cond-alpha-rename:1276| Int) (|$cond-alpha-rename:1278| Int) (|$cond-alpha-rename:750| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:754| Int) (|$cond-alpha-rename:755| Int) (|$cond-alpha-rename:756| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:770| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:773| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$knormal:91| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1217| |$cond-alpha-rename:1217|) (and (>= (+ (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1217|)) 0) (> (+ |$cond-alpha-rename:1213| (- |$cond-alpha-rename:1217|)) (+ (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1217|))))) (and (>= |$cond-alpha-rename:1217| 0) (> |$cond-alpha-rename:1217| |$cond-alpha-rename:1217|))) (= (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1213| 1)) (= (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1213| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:773| 0) (>= |$cond-alpha-rename:773| |$cond-alpha-rename:769|))) (not (or (<= |$cond-alpha-rename:1217| 0) (>= |$cond-alpha-rename:1217| |$cond-alpha-rename:1213|))) (not (= |$cond-alpha-rename:769| 0)) (not (= |$cond-alpha-rename:1213| 0)) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1217|) (+ (+ 0 0) |$cond-alpha-rename:1217|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1217|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1217|) (+ (+ 0 0) |$cond-alpha-rename:1217|)) (and (> (+ (+ 0 |$cond-alpha-rename:1213|) (- |$cond-alpha-rename:1217|)) (+ (+ 0 (- |$cond-alpha-rename:1213| 1)) (- |$cond-alpha-rename:1217|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1213| 1)) (- |$cond-alpha-rename:1217|)) 0))))) (not (or (<= |$cond-alpha-rename:1217| 0) (>= |$cond-alpha-rename:1217| |$cond-alpha-rename:1213|))) (not (= |$cond-alpha-rename:1213| 0)) (|fail$unknown:31| |$cond-alpha-rename:1278| 1) (|bot$unknown:29| |$cond-alpha-rename:1276| 1) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1217| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1 (- |$cond-alpha-rename:1213| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:783| |$cond-alpha-rename:1217| |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1 (- |$cond-alpha-rename:1213| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:782| (- |$cond-alpha-rename:773| 1) |$cond-alpha-rename:773| |$cond-alpha-rename:769| 1 (- |$cond-alpha-rename:769| 1) |$cond-alpha-rename:773| |$cond-alpha-rename:769| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:765| (- |$cond-alpha-rename:1217| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1 (- |$cond-alpha-rename:1213| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1225| (- |$cond-alpha-rename:1217| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1 (- |$cond-alpha-rename:1213| 1) |$cond-alpha-rename:1217| |$cond-alpha-rename:1213| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:773| |$cond-alpha-rename:772| |$cond-alpha-rename:771| |$cond-alpha-rename:770| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1217| |$cond-alpha-rename:756| |$cond-alpha-rename:755| |$cond-alpha-rename:754| |$cond-alpha-rename:1213| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1217| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1213| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1217| |$cond-alpha-rename:1216| |$cond-alpha-rename:1215| |$cond-alpha-rename:1214| |$cond-alpha-rename:1213| |$cond-alpha-rename:1212| |$cond-alpha-rename:1211| |$cond-alpha-rename:1210|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:783|) |$cond-alpha-rename:1217| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1213| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1279| Int) (|$cond-alpha-rename:1280| Int) (|$cond-alpha-rename:1281| Int) (|$cond-alpha-rename:1282| Int) (|$cond-alpha-rename:1283| Int) (|$cond-alpha-rename:1284| Int) (|$cond-alpha-rename:1285| Int) (|$cond-alpha-rename:1286| Int) (|$cond-alpha-rename:1294| Int) (|$cond-alpha-rename:750| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:754| Int) (|$cond-alpha-rename:755| Int) (|$cond-alpha-rename:756| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:770| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:773| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$knormal:91| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1286| |$cond-alpha-rename:1286|) (and (>= (+ (- |$cond-alpha-rename:1282| 1) (- |$cond-alpha-rename:1286|)) 0) (> (+ |$cond-alpha-rename:1282| (- |$cond-alpha-rename:1286|)) (+ (- |$cond-alpha-rename:1282| 1) (- |$cond-alpha-rename:1286|))))) (and (>= |$cond-alpha-rename:1286| 0) (> |$cond-alpha-rename:1286| |$cond-alpha-rename:1286|))) (= (- |$cond-alpha-rename:1282| 1) (- |$cond-alpha-rename:1282| 1)) (= (- |$cond-alpha-rename:1282| 1) (- |$cond-alpha-rename:1282| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:773| 0) (>= |$cond-alpha-rename:773| |$cond-alpha-rename:769|))) (not (or (<= |$cond-alpha-rename:1286| 0) (>= |$cond-alpha-rename:1286| |$cond-alpha-rename:1282|))) (not (= |$cond-alpha-rename:769| 0)) (not (= |$cond-alpha-rename:1282| 0)) (not (or (<= |$cond-alpha-rename:1286| 0) (>= |$cond-alpha-rename:1286| |$cond-alpha-rename:1282|))) (not (= |$cond-alpha-rename:1282| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:1286|) (+ (+ 0 0) |$cond-alpha-rename:1286|)) (>= (+ (+ 0 0) |$cond-alpha-rename:1286|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:1286|) (+ (+ 0 0) |$cond-alpha-rename:1286|)) (and (> (+ (+ 0 |$cond-alpha-rename:1282|) (- |$cond-alpha-rename:1286|)) (+ (+ 0 (- |$cond-alpha-rename:1282| 1)) (- |$cond-alpha-rename:1286|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1282| 1)) (- |$cond-alpha-rename:1286|)) 0)))) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$cond-alpha-rename:1286| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1 (- |$cond-alpha-rename:1282| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:783| |$cond-alpha-rename:1286| |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1 (- |$cond-alpha-rename:1282| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:782| (- |$cond-alpha-rename:773| 1) |$cond-alpha-rename:773| |$cond-alpha-rename:769| 1 (- |$cond-alpha-rename:769| 1) |$cond-alpha-rename:773| |$cond-alpha-rename:769| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:765| (- |$cond-alpha-rename:1286| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1 (- |$cond-alpha-rename:1282| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1294| (- |$cond-alpha-rename:1286| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1 (- |$cond-alpha-rename:1282| 1) |$cond-alpha-rename:1286| |$cond-alpha-rename:1282| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:773| |$cond-alpha-rename:772| |$cond-alpha-rename:771| |$cond-alpha-rename:770| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1286| |$cond-alpha-rename:756| |$cond-alpha-rename:755| |$cond-alpha-rename:754| |$cond-alpha-rename:1282| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1286| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1282| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1286| |$cond-alpha-rename:1285| |$cond-alpha-rename:1284| |$cond-alpha-rename:1283| |$cond-alpha-rename:1282| |$cond-alpha-rename:1281| |$cond-alpha-rename:1280| |$cond-alpha-rename:1279|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$cond-alpha-rename:783|) |$cond-alpha-rename:1286| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1282| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
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
      ( and (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (not (= |$alpha-17:n_1031| 0)) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
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
  (not (exists ( (|$cond-alpha-rename:481| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:487| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:496| Int) )
    ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:488| |$cond-alpha-rename:487| |$cond-alpha-rename:486| |$cond-alpha-rename:485| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:482| |$cond-alpha-rename:481|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:496| (- |$cond-alpha-rename:488| 1) |$cond-alpha-rename:488| |$cond-alpha-rename:484| 1 (- |$cond-alpha-rename:484| 1) |$cond-alpha-rename:488| |$cond-alpha-rename:484| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:484| 0)) (not (or (<= |$cond-alpha-rename:488| 0) (>= |$cond-alpha-rename:488| |$cond-alpha-rename:484|))) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:488|) (+ (+ 0 0) |$cond-alpha-rename:488|)) (>= (+ (+ 0 0) |$cond-alpha-rename:488|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:488|) (+ (+ 0 0) |$cond-alpha-rename:488|)) (and (> (+ (+ 0 |$cond-alpha-rename:484|) (- |$cond-alpha-rename:488|)) (+ (+ 0 (- |$cond-alpha-rename:484| 1)) (- |$cond-alpha-rename:488|))) (>= (+ (+ 0 (- |$cond-alpha-rename:484| 1)) (- |$cond-alpha-rename:488|)) 0))))) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) (>= |$alpha-30:k_1036| 0) (>= |$alpha-29:n_1035| 0) )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(check-sat)

(get-model)

(exit)

