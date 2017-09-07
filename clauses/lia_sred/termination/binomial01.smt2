(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
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
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 k_1032
  
     let rec bin_1030 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
       let u = if prev_set_flag_bin_1076 then
                if ((0 * 1) + (1 * s_prev_bin_n_1074)) + (-s_prev_bin_k_1075) >
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) &&
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) >= 0 then
                  ()
                else
                  let u_2928 = fail ()
                  in
                    bot()
               else () in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034 n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_1030 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 n_1035
             set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:29|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:19|
  ( Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:72| Int) (|$knormal:71| Int) (|$knormal:68| Int) (|$knormal:66| Int) (|$knormal:65| Int) (|$knormal:62| Int) (|$knormal:59| Int) (|$knormal:58| Int) (|$cond-alpha-rename:25| Bool) (|$cond-alpha-rename:24| Bool) (|$V-reftype:97| Int) (|$cond-alpha-rename:26| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$alpha-20:s_prev_bin_k_1075| Int) (|$knormal:56| Int) (|$alpha-21:k_1032| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-17:n_1031| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:74| Bool) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$knormal:57| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:67| Bool) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:73| Bool) )
    (=>
      ( and (= |$knormal:77| 1) (= |$knormal:75| 1) (= |$knormal:74| (and |$knormal:67| |$knormal:73|)) (= |$knormal:73| (>= |$knormal:72| 0)) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| (- |$alpha-21:k_1032|)) (= |$knormal:70| (+ |$knormal:68| |$knormal:69|)) (= |$knormal:69| |$alpha-17:n_1031|) (= |$knormal:68| 0) (= |$knormal:67| (> |$knormal:61| |$knormal:66|)) (= |$knormal:66| (+ |$knormal:64| |$knormal:65|)) (= |$knormal:65| (- |$alpha-21:k_1032|)) (= |$knormal:64| (+ |$knormal:62| |$knormal:63|)) (= |$knormal:63| |$alpha-17:n_1031|) (= |$knormal:62| 0) (= |$knormal:61| (+ |$knormal:59| |$knormal:60|)) (= |$knormal:60| (- |$alpha-20:s_prev_bin_k_1075|)) (= |$knormal:59| (+ |$knormal:57| |$knormal:58|)) (= |$knormal:58| |$alpha-19:s_prev_bin_n_1074|) (= |$knormal:57| 0) (= |$cond-alpha-rename:26| (and |$cond-alpha-rename:24| |$cond-alpha-rename:25|)) (= |$cond-alpha-rename:25| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:24| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:23| 1) (= |$cond-alpha-rename:22| 0) (= |$cond-alpha-rename:21| 0) (= |$cond-alpha-rename:20| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:22|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:21|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:20|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:22|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:21|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:20|) (= |$V-reftype:97| |$knormal:56|) (not |$knormal:74|) |$cond-alpha-rename:26| (not (= |$alpha-18:prev_set_flag_bin_1076| 0)) (|fail$unknown:22| |$knormal:78| |$knormal:77|) (|bot$unknown:20| |$knormal:76| |$knormal:75|) (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|) )
      (|bin_1030$unknown:9| |$V-reftype:97| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$knormal:72| Int) (|$knormal:71| Int) (|$knormal:68| Int) (|$knormal:66| Int) (|$knormal:65| Int) (|$knormal:62| Int) (|$knormal:59| Int) (|$knormal:58| Int) (|$cond-alpha-rename:32| Bool) (|$cond-alpha-rename:31| Bool) (|$V-reftype:94| Int) (|$cond-alpha-rename:33| Bool) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$alpha-20:s_prev_bin_k_1075| Int) (|$knormal:56| Int) (|$alpha-21:k_1032| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-17:n_1031| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$knormal:74| Bool) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$knormal:57| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:67| Bool) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:73| Bool) )
    (=>
      ( and (= |$knormal:74| (and |$knormal:67| |$knormal:73|)) (= |$knormal:73| (>= |$knormal:72| 0)) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| (- |$alpha-21:k_1032|)) (= |$knormal:70| (+ |$knormal:68| |$knormal:69|)) (= |$knormal:69| |$alpha-17:n_1031|) (= |$knormal:68| 0) (= |$knormal:67| (> |$knormal:61| |$knormal:66|)) (= |$knormal:66| (+ |$knormal:64| |$knormal:65|)) (= |$knormal:65| (- |$alpha-21:k_1032|)) (= |$knormal:64| (+ |$knormal:62| |$knormal:63|)) (= |$knormal:63| |$alpha-17:n_1031|) (= |$knormal:62| 0) (= |$knormal:61| (+ |$knormal:59| |$knormal:60|)) (= |$knormal:60| (- |$alpha-20:s_prev_bin_k_1075|)) (= |$knormal:59| (+ |$knormal:57| |$knormal:58|)) (= |$knormal:58| |$alpha-19:s_prev_bin_n_1074|) (= |$knormal:57| 0) (= |$cond-alpha-rename:33| (and |$cond-alpha-rename:31| |$cond-alpha-rename:32|)) (= |$cond-alpha-rename:32| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:31| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:30| 1) (= |$cond-alpha-rename:29| 0) (= |$cond-alpha-rename:28| 0) (= |$cond-alpha-rename:27| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:29|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:28|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:27|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:29|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:28|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:27|) (= |$V-reftype:94| |$knormal:56|) |$knormal:74| |$cond-alpha-rename:33| (not (= |$alpha-18:prev_set_flag_bin_1076| 0)) (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|) )
      (|bin_1030$unknown:9| |$V-reftype:94| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:34| Int) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$alpha-20:s_prev_bin_k_1075| Int) (|$knormal:56| Int) (|$alpha-21:k_1032| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-17:n_1031| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$cond-alpha-rename:40| Bool) (|$V-reftype:99| Int) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:39| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:40| (and |$cond-alpha-rename:38| |$cond-alpha-rename:39|)) (= |$cond-alpha-rename:39| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:38| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:37| 1) (= |$cond-alpha-rename:36| 0) (= |$cond-alpha-rename:35| 0) (= |$cond-alpha-rename:34| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:36|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:35|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:34|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:36|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:35|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:34|) (= |$V-reftype:99| |$knormal:56|) (= |$alpha-18:prev_set_flag_bin_1076| 0) |$cond-alpha-rename:40| (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|) )
      (|bin_1030$unknown:9| |$V-reftype:99| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$knormal:73| Bool) (|$knormal:70| Int) (|$knormal:69| Int) (|$knormal:67| Bool) (|$knormal:64| Int) (|$knormal:63| Int) (|$knormal:61| Int) (|$knormal:60| Int) (|$knormal:57| Int) (|$alpha-21:k_1032| Int) (|$alpha-17:n_1031| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:41| Int) (|$knormal:74| Bool) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$cond-alpha-rename:47| Bool) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-20:s_prev_bin_k_1075| Int) (|$cond-alpha-rename:45| Bool) (|$cond-alpha-rename:46| Bool) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:68| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:77| 1) (= |$knormal:75| 1) (= |$knormal:74| (and |$knormal:67| |$knormal:73|)) (= |$knormal:73| (>= |$knormal:72| 0)) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| (- |$alpha-21:k_1032|)) (= |$knormal:70| (+ |$knormal:68| |$knormal:69|)) (= |$knormal:69| |$alpha-17:n_1031|) (= |$knormal:68| 0) (= |$knormal:67| (> |$knormal:61| |$knormal:66|)) (= |$knormal:66| (+ |$knormal:64| |$knormal:65|)) (= |$knormal:65| (- |$alpha-21:k_1032|)) (= |$knormal:64| (+ |$knormal:62| |$knormal:63|)) (= |$knormal:63| |$alpha-17:n_1031|) (= |$knormal:62| 0) (= |$knormal:61| (+ |$knormal:59| |$knormal:60|)) (= |$knormal:60| (- |$alpha-20:s_prev_bin_k_1075|)) (= |$knormal:59| (+ |$knormal:57| |$knormal:58|)) (= |$knormal:58| |$alpha-19:s_prev_bin_n_1074|) (= |$knormal:57| 0) (= |$cond-alpha-rename:47| (and |$cond-alpha-rename:45| |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:46| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:45| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:44| 1) (= |$cond-alpha-rename:43| 0) (= |$cond-alpha-rename:42| 0) (= |$cond-alpha-rename:41| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:43|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:42|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:41|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:43|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:42|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:41|) (not |$knormal:74|) |$cond-alpha-rename:47| (not (= |$alpha-18:prev_set_flag_bin_1076| 0)) (|fail$unknown:22| |$knormal:78| |$knormal:77|) (|bot$unknown:20| |$knormal:76| |$knormal:75|) )
      (|bin_without_checking_1089$unknown:17| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:71| Int) (|$knormal:68| Int) (|$knormal:66| Int) (|$knormal:65| Int) (|$knormal:62| Int) (|$knormal:59| Int) (|$knormal:58| Int) (|$cond-alpha-rename:53| Bool) (|$cond-alpha-rename:52| Bool) (|$alpha-20:s_prev_bin_k_1075| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$cond-alpha-rename:54| Bool) (|$knormal:77| Int) (|$knormal:78| Int) (|$alpha-18:prev_set_flag_bin_1076| Bool) (|$knormal:74| Bool) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:51| Int) (|$alpha-17:n_1031| Int) (|$alpha-21:k_1032| Int) (|$knormal:57| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:67| Bool) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:73| Bool) )
    (=>
      ( and (= |$knormal:77| 1) (= |$knormal:75| 1) (= |$knormal:74| (and |$knormal:67| |$knormal:73|)) (= |$knormal:73| (>= |$knormal:72| 0)) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| (- |$alpha-21:k_1032|)) (= |$knormal:70| (+ |$knormal:68| |$knormal:69|)) (= |$knormal:69| |$alpha-17:n_1031|) (= |$knormal:68| 0) (= |$knormal:67| (> |$knormal:61| |$knormal:66|)) (= |$knormal:66| (+ |$knormal:64| |$knormal:65|)) (= |$knormal:65| (- |$alpha-21:k_1032|)) (= |$knormal:64| (+ |$knormal:62| |$knormal:63|)) (= |$knormal:63| |$alpha-17:n_1031|) (= |$knormal:62| 0) (= |$knormal:61| (+ |$knormal:59| |$knormal:60|)) (= |$knormal:60| (- |$alpha-20:s_prev_bin_k_1075|)) (= |$knormal:59| (+ |$knormal:57| |$knormal:58|)) (= |$knormal:58| |$alpha-19:s_prev_bin_n_1074|) (= |$knormal:57| 0) (= |$cond-alpha-rename:54| (and |$cond-alpha-rename:52| |$cond-alpha-rename:53|)) (= |$cond-alpha-rename:53| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:52| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:51| 1) (= |$cond-alpha-rename:50| 0) (= |$cond-alpha-rename:49| 0) (= |$cond-alpha-rename:48| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:50|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:49|) (= |$alpha-18:prev_set_flag_bin_1076| (not (= |$cond-alpha-rename:48| 0))) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:50|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:49|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:48|) (not |$knormal:74|) |$cond-alpha-rename:54| |$alpha-18:prev_set_flag_bin_1076| (|fail$unknown:22| |$knormal:78| |$knormal:77|) )
      (|bot$unknown:19| |$knormal:75|)
    )
  )
)
(assert
  (forall ( (|$knormal:73| Bool) (|$knormal:70| Int) (|$knormal:69| Int) (|$knormal:67| Bool) (|$knormal:64| Int) (|$knormal:63| Int) (|$knormal:61| Int) (|$knormal:60| Int) (|$knormal:57| Int) (|$alpha-21:k_1032| Int) (|$alpha-17:n_1031| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:55| Int) (|$knormal:74| Bool) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$cond-alpha-rename:61| Bool) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-20:s_prev_bin_k_1075| Int) (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:60| Bool) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:62| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:68| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:74| (and |$knormal:67| |$knormal:73|)) (= |$knormal:73| (>= |$knormal:72| 0)) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| (- |$alpha-21:k_1032|)) (= |$knormal:70| (+ |$knormal:68| |$knormal:69|)) (= |$knormal:69| |$alpha-17:n_1031|) (= |$knormal:68| 0) (= |$knormal:67| (> |$knormal:61| |$knormal:66|)) (= |$knormal:66| (+ |$knormal:64| |$knormal:65|)) (= |$knormal:65| (- |$alpha-21:k_1032|)) (= |$knormal:64| (+ |$knormal:62| |$knormal:63|)) (= |$knormal:63| |$alpha-17:n_1031|) (= |$knormal:62| 0) (= |$knormal:61| (+ |$knormal:59| |$knormal:60|)) (= |$knormal:60| (- |$alpha-20:s_prev_bin_k_1075|)) (= |$knormal:59| (+ |$knormal:57| |$knormal:58|)) (= |$knormal:58| |$alpha-19:s_prev_bin_n_1074|) (= |$knormal:57| 0) (= |$cond-alpha-rename:61| (and |$cond-alpha-rename:59| |$cond-alpha-rename:60|)) (= |$cond-alpha-rename:60| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:59| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:58| 1) (= |$cond-alpha-rename:57| 0) (= |$cond-alpha-rename:56| 0) (= |$cond-alpha-rename:55| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:57|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:56|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:55|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:57|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:56|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:55|) |$knormal:74| |$cond-alpha-rename:61| (not (= |$alpha-18:prev_set_flag_bin_1076| 0)) )
      (|bin_without_checking_1089$unknown:17| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:74| Bool) (|$cond-alpha-rename:73| Bool) (|$alpha-20:s_prev_bin_k_1075| Int) (|$alpha-19:s_prev_bin_n_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1092| Int) (|$alpha-14:x_DO_NOT_CARE_1091| Int) (|$cond-alpha-rename:75| Bool) (|$alpha-18:prev_set_flag_bin_1076| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$alpha-17:n_1031| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (= |$cond-alpha-rename:75| (and |$cond-alpha-rename:73| |$cond-alpha-rename:74|)) (= |$cond-alpha-rename:74| (>= |$alpha-21:k_1032| 0)) (= |$cond-alpha-rename:73| (>= |$alpha-17:n_1031| 0)) (= |$cond-alpha-rename:72| 1) (= |$cond-alpha-rename:71| 0) (= |$cond-alpha-rename:70| 0) (= |$cond-alpha-rename:69| 0) (= |$alpha-20:s_prev_bin_k_1075| |$cond-alpha-rename:71|) (= |$alpha-19:s_prev_bin_n_1074| |$cond-alpha-rename:70|) (= |$alpha-18:prev_set_flag_bin_1076| |$cond-alpha-rename:69|) (= |$alpha-16:x_DO_NOT_CARE_1093| |$cond-alpha-rename:71|) (= |$alpha-15:x_DO_NOT_CARE_1092| |$cond-alpha-rename:70|) (= |$alpha-14:x_DO_NOT_CARE_1091| |$cond-alpha-rename:69|) (= |$alpha-18:prev_set_flag_bin_1076| 0) |$cond-alpha-rename:75| )
      (|bin_without_checking_1089$unknown:17| |$alpha-21:k_1032| |$alpha-20:s_prev_bin_k_1075| |$alpha-19:s_prev_bin_n_1074| |$alpha-18:prev_set_flag_bin_1076| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1093| |$alpha-15:x_DO_NOT_CARE_1092| |$alpha-14:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:u_1034| Int) (|$knormal:81| Bool) (|$alpha-28:n_1035| Int) (|$alpha-25:s_bin_n_1072| Int) (|$alpha-29:k_1036| Int) (|$knormal:96| Int) (|$alpha-26:s_bin_k_1073| Int) (|$alpha-24:set_flag_bin_1077| Int) (|$V-reftype:103| Int) (|$knormal:79| Bool) (|$knormal:80| Bool) )
    (=>
      ( and (= |$knormal:81| (and |$knormal:79| |$knormal:80|)) (= |$knormal:80| (>= |$alpha-29:k_1036| 0)) (= |$knormal:79| (>= |$alpha-28:n_1035| 0)) (= |$alpha-27:u_1034| 1) (= |$alpha-26:s_bin_k_1073| 0) (= |$alpha-25:s_bin_n_1072| 0) (= |$alpha-24:set_flag_bin_1077| 0) (= |$V-reftype:103| |$knormal:96|) |$knormal:81| (|bin_1030$unknown:9| |$knormal:96| |$alpha-29:k_1036| |$alpha-26:s_bin_k_1073| |$alpha-25:s_bin_n_1072| |$alpha-24:set_flag_bin_1077| |$alpha-28:n_1035| |$alpha-26:s_bin_k_1073| |$alpha-25:s_bin_n_1072| |$alpha-24:set_flag_bin_1077|) )
      (|main_1033$unknown:29| |$V-reftype:103| |$alpha-29:k_1036| |$alpha-28:n_1035| |$alpha-27:u_1034| |$alpha-26:s_bin_k_1073| |$alpha-25:s_bin_n_1072| |$alpha-24:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Bool) (|$V-reftype:74| Int) (|$knormal:3| Bool) (|$knormal:30| Int) (|$alpha-11:set_flag_bin_1077| Int) (|$knormal:23| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-10:k_1032| Int) (|$alpha-9:s_bin_k_1073| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$knormal:21| Int) (|$knormal:12| Int) (|$knormal:40| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (or |$knormal:4| |$knormal:5|)) (= |$knormal:5| (>= |$alpha-10:k_1032| |$alpha-6:n_1031|)) (= |$knormal:4| (<= |$alpha-10:k_1032| 0)) (= |$knormal:30| (- |$alpha-6:n_1031| 1)) (= |$knormal:3| (= |$alpha-6:n_1031| 0)) (= |$knormal:21| (- |$alpha-10:k_1032| 1)) (= |$knormal:12| (- |$alpha-6:n_1031| 1)) (= |$alpha-11:set_flag_bin_1077| 1) (= |$V-reftype:74| (+ |$knormal:23| |$knormal:40|)) (not |$knormal:6|) (not |$knormal:3|) (|bin_without_checking_1089$unknown:18| |$knormal:40| |$alpha-10:k_1032| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077| |$knormal:30| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:18| |$knormal:23| |$knormal:21| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077| |$knormal:12| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:17| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:18| |$V-reftype:74| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:12| Int) (|$knormal:21| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-9:s_bin_k_1073| Int) (|$alpha-10:k_1032| Int) (|$alpha-6:n_1031| Int) (|$alpha-11:set_flag_bin_1077| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$knormal:23| Int) (|$knormal:6| Bool) (|$knormal:30| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:6| (or |$knormal:4| |$knormal:5|)) (= |$knormal:5| (>= |$alpha-10:k_1032| |$alpha-6:n_1031|)) (= |$knormal:4| (<= |$alpha-10:k_1032| 0)) (= |$knormal:30| (- |$alpha-6:n_1031| 1)) (= |$knormal:3| (= |$alpha-6:n_1031| 0)) (= |$knormal:21| (- |$alpha-10:k_1032| 1)) (= |$knormal:12| (- |$alpha-6:n_1031| 1)) (= |$alpha-11:set_flag_bin_1077| 1) (not |$knormal:6|) (not |$knormal:3|) (|bin_without_checking_1089$unknown:18| |$knormal:23| |$knormal:21| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077| |$knormal:12| |$alpha-10:k_1032| |$alpha-6:n_1031| |$alpha-11:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:17| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|) true true true true true true true (= |$cond-alpha-rename:1| |$alpha-10:k_1032|) (= |$cond-alpha-rename:2| |$alpha-10:k_1032|) (= |$cond-alpha-rename:3| |$alpha-6:n_1031|) (= |$cond-alpha-rename:4| |$alpha-11:set_flag_bin_1077|) (= |$cond-alpha-rename:5| |$alpha-10:k_1032|) (= |$cond-alpha-rename:6| |$alpha-6:n_1031|) (= |$cond-alpha-rename:7| |$alpha-11:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:17| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$cond-alpha-rename:3| |$cond-alpha-rename:4| |$knormal:30| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$cond-alpha-rename:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-10:k_1032| Int) (|$alpha-9:s_bin_k_1073| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$V-reftype:66| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-6:n_1031| 0)) (= |$V-reftype:66| 1) |$knormal:3| (|bin_without_checking_1089$unknown:17| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:18| |$V-reftype:66| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Bool) (|$knormal:3| Bool) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-9:s_bin_k_1073| Int) (|$alpha-10:k_1032| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-6:n_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$knormal:6| Bool) (|$V-reftype:70| Int) )
    (=>
      ( and (= |$knormal:6| (or |$knormal:4| |$knormal:5|)) (= |$knormal:5| (>= |$alpha-10:k_1032| |$alpha-6:n_1031|)) (= |$knormal:4| (<= |$alpha-10:k_1032| 0)) (= |$knormal:3| (= |$alpha-6:n_1031| 0)) (= |$V-reftype:70| 1) (not |$knormal:3|) |$knormal:6| (|bin_without_checking_1089$unknown:17| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:18| |$V-reftype:70| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-8:s_bin_n_1072| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Int) (|$alpha-11:set_flag_bin_1077| Int) (|$alpha-6:n_1031| Int) (|$alpha-10:k_1032| Int) (|$alpha-9:s_bin_k_1073| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$knormal:6| Bool) (|$knormal:12| Int) (|$knormal:21| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:6| (or |$knormal:4| |$knormal:5|)) (= |$knormal:5| (>= |$alpha-10:k_1032| |$alpha-6:n_1031|)) (= |$knormal:4| (<= |$alpha-10:k_1032| 0)) (= |$knormal:3| (= |$alpha-6:n_1031| 0)) (= |$knormal:21| (- |$alpha-10:k_1032| 1)) (= |$knormal:12| (- |$alpha-6:n_1031| 1)) (= |$alpha-11:set_flag_bin_1077| 1) (not |$knormal:6|) (not |$knormal:3|) (|bin_without_checking_1089$unknown:17| |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|) true true true true true true true (= |$cond-alpha-rename:8| |$alpha-10:k_1032|) (= |$cond-alpha-rename:9| |$alpha-6:n_1031|) (= |$cond-alpha-rename:10| |$alpha-11:set_flag_bin_1077|) (= |$cond-alpha-rename:11| |$alpha-10:k_1032|) (= |$cond-alpha-rename:12| |$alpha-6:n_1031|) (= |$cond-alpha-rename:13| |$alpha-11:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:17| |$knormal:21| |$cond-alpha-rename:8| |$cond-alpha-rename:9| |$cond-alpha-rename:10| |$knormal:12| |$cond-alpha-rename:11| |$cond-alpha-rename:12| |$cond-alpha-rename:13|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:62| |$knormal:2|) (|bot$unknown:20| |$knormal:2| |$knormal:1|) (|bot$unknown:19| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:20| |$V-reftype:62| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:19| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:19| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:k_1036| Int) (|$alpha-28:n_1035| Int) (|$alpha-27:u_1034| Int) (|$alpha-25:s_bin_n_1072| Int) (|$V-reftype:104| Int) (|$knormal:81| Bool) (|$alpha-24:set_flag_bin_1077| Int) (|$alpha-26:s_bin_k_1073| Int) (|$knormal:79| Bool) (|$knormal:80| Bool) )
    (=>
      ( and (= |$knormal:81| (and |$knormal:79| |$knormal:80|)) (= |$knormal:80| (>= |$alpha-29:k_1036| 0)) (= |$knormal:79| (>= |$alpha-28:n_1035| 0)) (= |$alpha-27:u_1034| 1) (= |$alpha-26:s_bin_k_1073| 0) (= |$alpha-25:s_bin_n_1072| 0) (= |$alpha-24:set_flag_bin_1077| 0) (= |$V-reftype:104| 0) (not |$knormal:81|) )
      (|main_1033$unknown:29| |$V-reftype:104| |$alpha-29:k_1036| |$alpha-28:n_1035| |$alpha-27:u_1034| |$alpha-26:s_bin_k_1073| |$alpha-25:s_bin_n_1072| |$alpha-24:set_flag_bin_1077|)
    )
  )
)
(check-sat)

(get-model)

