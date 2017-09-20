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

(declare-fun |main_1033$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bin_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:60| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
      (|bin_without_checking_1089$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:35| Int) (|$knormal:17| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| |$cond-alpha-rename:152| |$cond-alpha-rename:151| |$cond-alpha-rename:150| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:163| (- |$cond-alpha-rename:155| 1) |$cond-alpha-rename:155| |$cond-alpha-rename:151| 1 (- |$cond-alpha-rename:151| 1) |$cond-alpha-rename:155| |$cond-alpha-rename:151| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:35| (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:151| 0)) (not (or (<= |$cond-alpha-rename:155| 0) (>= |$cond-alpha-rename:155| |$cond-alpha-rename:151|))) (not (= |$cond-alpha-rename:23| 0)) (not (or (<= |$cond-alpha-rename:27| 0) (>= |$cond-alpha-rename:27| |$cond-alpha-rename:23|))) (not (and (> (+ (+ 0 |$cond-alpha-rename:23|) (- |$cond-alpha-rename:27|)) (+ (+ 0 (- |$cond-alpha-rename:23| 1)) (- |$cond-alpha-rename:27|))) (>= (+ (+ 0 (- |$cond-alpha-rename:23| 1)) (- |$cond-alpha-rename:27|)) 0))) )
      (|bin_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:51| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:166| |$cond-alpha-rename:165|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:180| (- |$cond-alpha-rename:172| 1) |$cond-alpha-rename:172| |$cond-alpha-rename:168| 1 (- |$cond-alpha-rename:168| 1) |$cond-alpha-rename:172| |$cond-alpha-rename:168| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:51| (- |$cond-alpha-rename:43| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:39| 1)) (- |$cond-alpha-rename:43|)) 0) (> (+ (+ 0 |$cond-alpha-rename:39|) (- |$cond-alpha-rename:43|)) (+ (+ 0 (- |$cond-alpha-rename:39| 1)) (- |$cond-alpha-rename:43|))) (not (= |$cond-alpha-rename:168| 0)) (not (or (<= |$cond-alpha-rename:172| 0) (>= |$cond-alpha-rename:172| |$cond-alpha-rename:168|))) (not (= |$cond-alpha-rename:39| 0)) (not (or (<= |$cond-alpha-rename:43| 0) (>= |$cond-alpha-rename:43| |$cond-alpha-rename:39|))) )
      (|bin_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:67| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$cond-alpha-rename:59| |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1 (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:182|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:197| (- |$cond-alpha-rename:189| 1) |$cond-alpha-rename:189| |$cond-alpha-rename:185| 1 (- |$cond-alpha-rename:185| 1) |$cond-alpha-rename:189| |$cond-alpha-rename:185| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:67| (- |$cond-alpha-rename:59| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1 (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| |$cond-alpha-rename:59| |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1 (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1) (not (not (= 0 1))) (not (= |$cond-alpha-rename:185| 0)) (not (or (<= |$cond-alpha-rename:189| 0) (>= |$cond-alpha-rename:189| |$cond-alpha-rename:185|))) (not (= |$cond-alpha-rename:55| 0)) (not (or (<= |$cond-alpha-rename:59| 0) (>= |$cond-alpha-rename:59| |$cond-alpha-rename:55|))) )
      (|bin_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:59| |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1 (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:59| |$cond-alpha-rename:55| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:83| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:83| (- |$cond-alpha-rename:75| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1 (- |$cond-alpha-rename:71| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:71| 0)) (not (or (<= |$cond-alpha-rename:75| 0) (>= |$cond-alpha-rename:75| |$cond-alpha-rename:71|))) (not (and (> (+ (+ 0 |$cond-alpha-rename:71|) (- |$cond-alpha-rename:75|)) (+ (+ 0 (- |$cond-alpha-rename:71| 1)) (- |$cond-alpha-rename:75|))) (>= (+ (+ 0 (- |$cond-alpha-rename:71| 1)) (- |$cond-alpha-rename:75|)) 0))) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:75| |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1 (- |$cond-alpha-rename:71| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:99| (- |$cond-alpha-rename:91| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1 (- |$cond-alpha-rename:87| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:87| 1)) (- |$cond-alpha-rename:91|)) 0) (> (+ (+ 0 |$cond-alpha-rename:87|) (- |$cond-alpha-rename:91|)) (+ (+ 0 (- |$cond-alpha-rename:87| 1)) (- |$cond-alpha-rename:91|))) (not (= |$cond-alpha-rename:87| 0)) (not (or (<= |$cond-alpha-rename:91| 0) (>= |$cond-alpha-rename:91| |$cond-alpha-rename:87|))) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1 (- |$cond-alpha-rename:87| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:131| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:131| (- |$cond-alpha-rename:123| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1 (- |$cond-alpha-rename:119| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1) (not (not (= 0 1))) (not (= |$cond-alpha-rename:119| 0)) (not (or (<= |$cond-alpha-rename:123| 0) (>= |$cond-alpha-rename:123| |$cond-alpha-rename:119|))) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:123| |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1 (- |$cond-alpha-rename:119| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:60| Int) (|$knormal:79| Int) )
    (=>
      ( and (|bin_1030$unknown:18| |$knormal:79| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:27| |$knormal:60| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:60| |$knormal:79|) |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (= |$alpha-17:n_1031| 0) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
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
  (forall ( (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:98| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:27| |$knormal:98| |$alpha-30:k_1036| 0 0 0 |$alpha-29:n_1035| 0 0 0) (>= |$alpha-30:k_1036| 0) (>= |$alpha-29:n_1035| 0) )
      (|main_1033$unknown:38| |$knormal:98| |$alpha-30:k_1036| |$alpha-29:n_1035| 1 0 0 0)
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
  (not (exists ( (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:222| Int) )
    ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:214| |$cond-alpha-rename:213| |$cond-alpha-rename:212| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:209| |$cond-alpha-rename:208| |$cond-alpha-rename:207|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:222| (- |$cond-alpha-rename:214| 1) |$cond-alpha-rename:214| |$cond-alpha-rename:210| 1 (- |$cond-alpha-rename:210| 1) |$cond-alpha-rename:214| |$cond-alpha-rename:210| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:210| 0)) (not (or (<= |$cond-alpha-rename:214| 0) (>= |$cond-alpha-rename:214| |$cond-alpha-rename:210|))) (not (and (> (+ (+ 0 |$cond-alpha-rename:210|) (- |$cond-alpha-rename:214|)) (+ (+ 0 (- |$cond-alpha-rename:210| 1)) (- |$cond-alpha-rename:214|))) (>= (+ (+ 0 (- |$cond-alpha-rename:210| 1)) (- |$cond-alpha-rename:214|)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (>= |$alpha-30:k_1036| 0) (>= |$alpha-29:n_1035| 0) )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| 0 0 0 |$alpha-29:n_1035| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (not (and (>= |$alpha-29:n_1035| 0) (>= |$alpha-30:k_1036| 0))) )
      (|main_1033$unknown:38| 0 |$alpha-30:k_1036| |$alpha-29:n_1035| 1 0 0 0)
    )
  )
)
(check-sat)

(get-model)

