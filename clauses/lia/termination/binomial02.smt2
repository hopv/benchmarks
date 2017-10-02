(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec bin_1030 bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
       let u = if prev_set_flag_bin_1076 then
                if ((0 * 1) + (1 * s_prev_bin_n_1074)) + (-s_prev_bin_k_1075) >
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) &&
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) >= 0 then
                  ()
                else
                  let u_3940 = fail ()
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
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034 n_1035 k_1036 =
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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:896| Int) (|$cond-alpha-rename:897| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:899| Int) (|$cond-alpha-rename:900| Int) (|$cond-alpha-rename:901| Int) (|$cond-alpha-rename:902| Int) (|$cond-alpha-rename:903| Int) (|$cond-alpha-rename:911| Int) (|$cond-alpha-rename:931| Int) (|$cond-alpha-rename:933| Int) (|$knormal:60| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:899|) (- |$cond-alpha-rename:903|)) (+ (+ 0 (- |$cond-alpha-rename:899| 1)) (- |$cond-alpha-rename:903|))) (>= (+ (+ 0 (- |$cond-alpha-rename:899| 1)) (- |$cond-alpha-rename:903|)) 0))) (not (or (<= |$cond-alpha-rename:903| 0) (>= |$cond-alpha-rename:903| |$cond-alpha-rename:899|))) (not (= |$cond-alpha-rename:899| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:933| 1) (|bot$unknown:29| |$cond-alpha-rename:931| 1) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:911| (- |$cond-alpha-rename:903| 1) |$cond-alpha-rename:903| |$cond-alpha-rename:899| 1 (- |$cond-alpha-rename:899| 1) |$cond-alpha-rename:903| |$cond-alpha-rename:899| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:903| |$cond-alpha-rename:902| |$cond-alpha-rename:901| |$cond-alpha-rename:900| |$cond-alpha-rename:899| |$cond-alpha-rename:898| |$cond-alpha-rename:897| |$cond-alpha-rename:896|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:903| |$cond-alpha-rename:903| |$cond-alpha-rename:899| 1 (- |$cond-alpha-rename:899| 1) |$cond-alpha-rename:903| |$cond-alpha-rename:899| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:934| Int) (|$cond-alpha-rename:935| Int) (|$cond-alpha-rename:936| Int) (|$cond-alpha-rename:937| Int) (|$cond-alpha-rename:938| Int) (|$cond-alpha-rename:939| Int) (|$cond-alpha-rename:940| Int) (|$cond-alpha-rename:941| Int) (|$cond-alpha-rename:949| Int) (|$knormal:60| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:941| 0) (>= |$cond-alpha-rename:941| |$cond-alpha-rename:937|))) (not (= |$cond-alpha-rename:937| 0)) (> (+ (+ 0 |$cond-alpha-rename:937|) (- |$cond-alpha-rename:941|)) (+ (+ 0 (- |$cond-alpha-rename:937| 1)) (- |$cond-alpha-rename:941|))) (>= (+ (+ 0 (- |$cond-alpha-rename:937| 1)) (- |$cond-alpha-rename:941|)) 0) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:949| (- |$cond-alpha-rename:941| 1) |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1 (- |$cond-alpha-rename:937| 1) |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:938| |$cond-alpha-rename:937| |$cond-alpha-rename:936| |$cond-alpha-rename:935| |$cond-alpha-rename:934|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:941| |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1 (- |$cond-alpha-rename:937| 1) |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$cond-alpha-rename:968| Int) (|$cond-alpha-rename:969| Int) (|$cond-alpha-rename:970| Int) (|$cond-alpha-rename:971| Int) (|$cond-alpha-rename:972| Int) (|$cond-alpha-rename:973| Int) (|$cond-alpha-rename:974| Int) (|$cond-alpha-rename:975| Int) (|$cond-alpha-rename:983| Int) (|$knormal:60| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$cond-alpha-rename:975| 0) (>= |$cond-alpha-rename:975| |$cond-alpha-rename:971|))) (not (= |$cond-alpha-rename:971| 0)) (not (not (= 0 1))) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:983| (- |$cond-alpha-rename:975| 1) |$cond-alpha-rename:975| |$cond-alpha-rename:971| 1 (- |$cond-alpha-rename:971| 1) |$cond-alpha-rename:975| |$cond-alpha-rename:971| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:975| |$cond-alpha-rename:974| |$cond-alpha-rename:973| |$cond-alpha-rename:972| |$cond-alpha-rename:971| |$cond-alpha-rename:970| |$cond-alpha-rename:969| |$cond-alpha-rename:968|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:975| |$cond-alpha-rename:975| |$cond-alpha-rename:971| 1 (- |$cond-alpha-rename:971| 1) |$cond-alpha-rename:975| |$cond-alpha-rename:971| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:711| Int) (|$cond-alpha-rename:712| Int) (|$cond-alpha-rename:713| Int) (|$cond-alpha-rename:715| Int) (|$cond-alpha-rename:716| Int) (|$cond-alpha-rename:717| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:727| Int) (|$cond-alpha-rename:728| Int) (|$cond-alpha-rename:729| Int) (|$cond-alpha-rename:730| Int) (|$cond-alpha-rename:731| Int) (|$cond-alpha-rename:732| Int) (|$cond-alpha-rename:733| Int) (|$cond-alpha-rename:734| Int) (|$cond-alpha-rename:742| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:984| Int) (|$cond-alpha-rename:985| Int) (|$cond-alpha-rename:986| Int) (|$cond-alpha-rename:987| Int) (|$cond-alpha-rename:988| Int) (|$cond-alpha-rename:989| Int) (|$cond-alpha-rename:990| Int) (|$cond-alpha-rename:991| Int) (|$cond-alpha-rename:999| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:987| 1) (- |$cond-alpha-rename:987| 1)) (= (- |$cond-alpha-rename:987| 1) (- |$cond-alpha-rename:987| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:734| 0) (>= |$cond-alpha-rename:734| |$cond-alpha-rename:730|))) (not (or (<= |$cond-alpha-rename:991| 0) (>= |$cond-alpha-rename:991| |$cond-alpha-rename:987|))) (not (and (>= (+ (- |$cond-alpha-rename:987| 1) (- |$cond-alpha-rename:991|)) 0) (> (+ |$cond-alpha-rename:987| (- |$cond-alpha-rename:991|)) (+ (- |$cond-alpha-rename:987| 1) (- |$cond-alpha-rename:991|))))) (not (= |$cond-alpha-rename:730| 0)) (not (= |$cond-alpha-rename:987| 0)) (not (or (<= |$cond-alpha-rename:991| 0) (>= |$cond-alpha-rename:991| |$cond-alpha-rename:987|))) (not (= |$cond-alpha-rename:987| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:987|) (- |$cond-alpha-rename:991|)) (+ (+ 0 (- |$cond-alpha-rename:987| 1)) (- |$cond-alpha-rename:991|))) (>= (+ (+ 0 (- |$cond-alpha-rename:987| 1)) (- |$cond-alpha-rename:991|)) 0))) (|fail$unknown:31| |$cond-alpha-rename:766| 1) (|fail$unknown:31| |$cond-alpha-rename:1021| 1) (|bot$unknown:29| |$cond-alpha-rename:764| 1) (|bot$unknown:29| |$cond-alpha-rename:1019| 1) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$cond-alpha-rename:991| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1 (- |$cond-alpha-rename:987| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:999| (- |$cond-alpha-rename:991| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1 (- |$cond-alpha-rename:987| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:744| |$cond-alpha-rename:991| |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1 (- |$cond-alpha-rename:987| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:742| (- |$cond-alpha-rename:734| 1) |$cond-alpha-rename:734| |$cond-alpha-rename:730| 1 (- |$cond-alpha-rename:730| 1) |$cond-alpha-rename:734| |$cond-alpha-rename:730| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:726| (- |$cond-alpha-rename:991| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1 (- |$cond-alpha-rename:987| 1) |$cond-alpha-rename:991| |$cond-alpha-rename:987| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:991| |$cond-alpha-rename:990| |$cond-alpha-rename:989| |$cond-alpha-rename:988| |$cond-alpha-rename:987| |$cond-alpha-rename:986| |$cond-alpha-rename:985| |$cond-alpha-rename:984|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:734| |$cond-alpha-rename:733| |$cond-alpha-rename:732| |$cond-alpha-rename:731| |$cond-alpha-rename:730| |$cond-alpha-rename:729| |$cond-alpha-rename:728| |$cond-alpha-rename:727|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:991| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:715| |$cond-alpha-rename:987| |$cond-alpha-rename:713| |$cond-alpha-rename:712| |$cond-alpha-rename:711|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:991| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:987| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:60| |$cond-alpha-rename:744|) |$cond-alpha-rename:991| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:987| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1024| Int) (|$cond-alpha-rename:1025| Int) (|$cond-alpha-rename:1026| Int) (|$cond-alpha-rename:1027| Int) (|$cond-alpha-rename:1028| Int) (|$cond-alpha-rename:1029| Int) (|$cond-alpha-rename:1037| Int) (|$cond-alpha-rename:711| Int) (|$cond-alpha-rename:712| Int) (|$cond-alpha-rename:713| Int) (|$cond-alpha-rename:715| Int) (|$cond-alpha-rename:716| Int) (|$cond-alpha-rename:717| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:727| Int) (|$cond-alpha-rename:728| Int) (|$cond-alpha-rename:729| Int) (|$cond-alpha-rename:730| Int) (|$cond-alpha-rename:731| Int) (|$cond-alpha-rename:732| Int) (|$cond-alpha-rename:733| Int) (|$cond-alpha-rename:734| Int) (|$cond-alpha-rename:742| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:766| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1025| 1) (- |$cond-alpha-rename:1025| 1)) (= (- |$cond-alpha-rename:1025| 1) (- |$cond-alpha-rename:1025| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:734| 0) (>= |$cond-alpha-rename:734| |$cond-alpha-rename:730|))) (not (or (<= |$cond-alpha-rename:1029| 0) (>= |$cond-alpha-rename:1029| |$cond-alpha-rename:1025|))) (not (and (>= (+ (- |$cond-alpha-rename:1025| 1) (- |$cond-alpha-rename:1029|)) 0) (> (+ |$cond-alpha-rename:1025| (- |$cond-alpha-rename:1029|)) (+ (- |$cond-alpha-rename:1025| 1) (- |$cond-alpha-rename:1029|))))) (not (= |$cond-alpha-rename:730| 0)) (not (= |$cond-alpha-rename:1025| 0)) (not (or (<= |$cond-alpha-rename:1029| 0) (>= |$cond-alpha-rename:1029| |$cond-alpha-rename:1025|))) (not (= |$cond-alpha-rename:1025| 0)) (> (+ (+ 0 |$cond-alpha-rename:1025|) (- |$cond-alpha-rename:1029|)) (+ (+ 0 (- |$cond-alpha-rename:1025| 1)) (- |$cond-alpha-rename:1029|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1025| 1)) (- |$cond-alpha-rename:1029|)) 0) (|fail$unknown:31| |$cond-alpha-rename:766| 1) (|bot$unknown:29| |$cond-alpha-rename:764| 1) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$cond-alpha-rename:1029| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1 (- |$cond-alpha-rename:1025| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:744| |$cond-alpha-rename:1029| |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1 (- |$cond-alpha-rename:1025| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:742| (- |$cond-alpha-rename:734| 1) |$cond-alpha-rename:734| |$cond-alpha-rename:730| 1 (- |$cond-alpha-rename:730| 1) |$cond-alpha-rename:734| |$cond-alpha-rename:730| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:726| (- |$cond-alpha-rename:1029| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1 (- |$cond-alpha-rename:1025| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1037| (- |$cond-alpha-rename:1029| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1 (- |$cond-alpha-rename:1025| 1) |$cond-alpha-rename:1029| |$cond-alpha-rename:1025| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:734| |$cond-alpha-rename:733| |$cond-alpha-rename:732| |$cond-alpha-rename:731| |$cond-alpha-rename:730| |$cond-alpha-rename:729| |$cond-alpha-rename:728| |$cond-alpha-rename:727|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1029| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:715| |$cond-alpha-rename:1025| |$cond-alpha-rename:713| |$cond-alpha-rename:712| |$cond-alpha-rename:711|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1029| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1025| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1029| |$cond-alpha-rename:1028| |$cond-alpha-rename:1027| |$cond-alpha-rename:1026| |$cond-alpha-rename:1025| |$cond-alpha-rename:1024| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:60| |$cond-alpha-rename:744|) |$cond-alpha-rename:1029| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1025| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1072| Int) (|$cond-alpha-rename:1073| Int) (|$cond-alpha-rename:1074| Int) (|$cond-alpha-rename:1075| Int) (|$cond-alpha-rename:1076| Int) (|$cond-alpha-rename:1077| Int) (|$cond-alpha-rename:1078| Int) (|$cond-alpha-rename:1079| Int) (|$cond-alpha-rename:1087| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1109| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:773| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$cond-alpha-rename:784| Int) (|$cond-alpha-rename:785| Int) (|$cond-alpha-rename:786| Int) (|$cond-alpha-rename:787| Int) (|$cond-alpha-rename:788| Int) (|$cond-alpha-rename:789| Int) (|$cond-alpha-rename:790| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:800| Int) (|$knormal:60| Int) )
    (=>
      ( and (> (+ |$cond-alpha-rename:1075| (- |$cond-alpha-rename:1079|)) (+ (- |$cond-alpha-rename:1075| 1) (- |$cond-alpha-rename:1079|))) (>= (+ (- |$cond-alpha-rename:1075| 1) (- |$cond-alpha-rename:1079|)) 0) (= (- |$cond-alpha-rename:1075| 1) (- |$cond-alpha-rename:1075| 1)) (= (- |$cond-alpha-rename:1075| 1) (- |$cond-alpha-rename:1075| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:790| 0) (>= |$cond-alpha-rename:790| |$cond-alpha-rename:786|))) (not (or (<= |$cond-alpha-rename:1079| 0) (>= |$cond-alpha-rename:1079| |$cond-alpha-rename:1075|))) (not (= |$cond-alpha-rename:786| 0)) (not (= |$cond-alpha-rename:1075| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1075|) (- |$cond-alpha-rename:1079|)) (+ (+ 0 (- |$cond-alpha-rename:1075| 1)) (- |$cond-alpha-rename:1079|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1075| 1)) (- |$cond-alpha-rename:1079|)) 0))) (not (or (<= |$cond-alpha-rename:1079| 0) (>= |$cond-alpha-rename:1079| |$cond-alpha-rename:1075|))) (not (= |$cond-alpha-rename:1075| 0)) (|fail$unknown:31| |$cond-alpha-rename:1109| 1) (|bot$unknown:29| |$cond-alpha-rename:1107| 1) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$cond-alpha-rename:1079| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1 (- |$cond-alpha-rename:1075| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:800| |$cond-alpha-rename:1079| |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1 (- |$cond-alpha-rename:1075| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:798| (- |$cond-alpha-rename:790| 1) |$cond-alpha-rename:790| |$cond-alpha-rename:786| 1 (- |$cond-alpha-rename:786| 1) |$cond-alpha-rename:790| |$cond-alpha-rename:786| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:782| (- |$cond-alpha-rename:1079| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1 (- |$cond-alpha-rename:1075| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1087| (- |$cond-alpha-rename:1079| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1 (- |$cond-alpha-rename:1075| 1) |$cond-alpha-rename:1079| |$cond-alpha-rename:1075| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:790| |$cond-alpha-rename:789| |$cond-alpha-rename:788| |$cond-alpha-rename:787| |$cond-alpha-rename:786| |$cond-alpha-rename:785| |$cond-alpha-rename:784| |$cond-alpha-rename:783|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1079| |$cond-alpha-rename:773| |$cond-alpha-rename:772| |$cond-alpha-rename:771| |$cond-alpha-rename:1075| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1079| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1075| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1079| |$cond-alpha-rename:1078| |$cond-alpha-rename:1077| |$cond-alpha-rename:1076| |$cond-alpha-rename:1075| |$cond-alpha-rename:1074| |$cond-alpha-rename:1073| |$cond-alpha-rename:1072|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:60| |$cond-alpha-rename:800|) |$cond-alpha-rename:1079| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1075| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$cond-alpha-rename:1110| Int) (|$cond-alpha-rename:1111| Int) (|$cond-alpha-rename:1112| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:1114| Int) (|$cond-alpha-rename:1115| Int) (|$cond-alpha-rename:1116| Int) (|$cond-alpha-rename:1117| Int) (|$cond-alpha-rename:1125| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:773| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$cond-alpha-rename:784| Int) (|$cond-alpha-rename:785| Int) (|$cond-alpha-rename:786| Int) (|$cond-alpha-rename:787| Int) (|$cond-alpha-rename:788| Int) (|$cond-alpha-rename:789| Int) (|$cond-alpha-rename:790| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:800| Int) (|$knormal:60| Int) )
    (=>
      ( and (> (+ |$cond-alpha-rename:1113| (- |$cond-alpha-rename:1117|)) (+ (- |$cond-alpha-rename:1113| 1) (- |$cond-alpha-rename:1117|))) (>= (+ (- |$cond-alpha-rename:1113| 1) (- |$cond-alpha-rename:1117|)) 0) (= (- |$cond-alpha-rename:1113| 1) (- |$cond-alpha-rename:1113| 1)) (= (- |$cond-alpha-rename:1113| 1) (- |$cond-alpha-rename:1113| 1)) (= 1 1) (= 1 1) (not (or (<= |$cond-alpha-rename:790| 0) (>= |$cond-alpha-rename:790| |$cond-alpha-rename:786|))) (not (or (<= |$cond-alpha-rename:1117| 0) (>= |$cond-alpha-rename:1117| |$cond-alpha-rename:1113|))) (not (= |$cond-alpha-rename:786| 0)) (not (= |$cond-alpha-rename:1113| 0)) (not (or (<= |$cond-alpha-rename:1117| 0) (>= |$cond-alpha-rename:1117| |$cond-alpha-rename:1113|))) (not (= |$cond-alpha-rename:1113| 0)) (> (+ (+ 0 |$cond-alpha-rename:1113|) (- |$cond-alpha-rename:1117|)) (+ (+ 0 (- |$cond-alpha-rename:1113| 1)) (- |$cond-alpha-rename:1117|))) (>= (+ (+ 0 (- |$cond-alpha-rename:1113| 1)) (- |$cond-alpha-rename:1117|)) 0) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$cond-alpha-rename:1117| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1 (- |$cond-alpha-rename:1113| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:800| |$cond-alpha-rename:1117| |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1 (- |$cond-alpha-rename:1113| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:798| (- |$cond-alpha-rename:790| 1) |$cond-alpha-rename:790| |$cond-alpha-rename:786| 1 (- |$cond-alpha-rename:786| 1) |$cond-alpha-rename:790| |$cond-alpha-rename:786| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:782| (- |$cond-alpha-rename:1117| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1 (- |$cond-alpha-rename:1113| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:1125| (- |$cond-alpha-rename:1117| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1 (- |$cond-alpha-rename:1113| 1) |$cond-alpha-rename:1117| |$cond-alpha-rename:1113| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:790| |$cond-alpha-rename:789| |$cond-alpha-rename:788| |$cond-alpha-rename:787| |$cond-alpha-rename:786| |$cond-alpha-rename:785| |$cond-alpha-rename:784| |$cond-alpha-rename:783|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1117| |$cond-alpha-rename:773| |$cond-alpha-rename:772| |$cond-alpha-rename:771| |$cond-alpha-rename:1113| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1117| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1113| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:1117| |$cond-alpha-rename:1116| |$cond-alpha-rename:1115| |$cond-alpha-rename:1114| |$cond-alpha-rename:1113| |$cond-alpha-rename:1112| |$cond-alpha-rename:1111| |$cond-alpha-rename:1110|) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:60| |$cond-alpha-rename:800|) |$cond-alpha-rename:1117| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$cond-alpha-rename:1113| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
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
    ( and (not (and (> (+ (+ 0 |$cond-alpha-rename:492|) (- |$cond-alpha-rename:496|)) (+ (+ 0 (- |$cond-alpha-rename:492| 1)) (- |$cond-alpha-rename:496|))) (>= (+ (+ 0 (- |$cond-alpha-rename:492| 1)) (- |$cond-alpha-rename:496|)) 0))) (not (or (<= |$cond-alpha-rename:496| 0) (>= |$cond-alpha-rename:496| |$cond-alpha-rename:492|))) (not (= |$cond-alpha-rename:492| 0)) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:504| (- |$cond-alpha-rename:496| 1) |$cond-alpha-rename:496| |$cond-alpha-rename:492| 1 (- |$cond-alpha-rename:492| 1) |$cond-alpha-rename:496| |$cond-alpha-rename:492| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:496| |$cond-alpha-rename:495| |$cond-alpha-rename:494| |$cond-alpha-rename:493| |$cond-alpha-rename:492| |$cond-alpha-rename:491| |$cond-alpha-rename:490| |$cond-alpha-rename:489|) )
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

