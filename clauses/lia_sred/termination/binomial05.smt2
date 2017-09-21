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
                  let u_9550 = fail ()
                  in
                    bot()
               else
                 ()
                   in
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
             bin_1030 bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (n_1031 - 1)
               set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (k_1032 - 1)
             +
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 k_1032
  
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

(declare-fun |main_1033$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
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

(declare-fun |bin_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
      (|bin_without_checking_1089$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$knormal:17| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (not (or (and (>= |$cond-alpha-rename:27| (- |$cond-alpha-rename:27| 1)) (and (>= (+ (- |$cond-alpha-rename:23| 1) (- (- |$cond-alpha-rename:27| 1))) 0) (> (+ |$cond-alpha-rename:23| (- |$cond-alpha-rename:27|)) (+ (- |$cond-alpha-rename:23| 1) (- (- |$cond-alpha-rename:27| 1)))))) (and (>= (- |$cond-alpha-rename:27| 1) 0) (> |$cond-alpha-rename:27| (- |$cond-alpha-rename:27| 1))))) (not (or (<= |$cond-alpha-rename:27| 0) (>= |$cond-alpha-rename:27| |$cond-alpha-rename:23|))) (not (= |$cond-alpha-rename:23| 0)) (not (or (<= |$cond-alpha-rename:202| 0) (>= |$cond-alpha-rename:202| |$cond-alpha-rename:198|))) (not (= |$cond-alpha-rename:198| 0)) (|fail$unknown:31| |$knormal:70| 1) (|bot$unknown:29| |$knormal:68| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:202| |$cond-alpha-rename:201| |$cond-alpha-rename:200| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:196| |$cond-alpha-rename:195|) (|bin_1030$unknown:8| (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) )
      (|bin_1030$unknown:18| |$knormal:17| (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$knormal:17| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:40| (- |$cond-alpha-rename:40| 1)) (and (>= (+ (- |$cond-alpha-rename:36| 1) (- (- |$cond-alpha-rename:40| 1))) 0) (> (+ |$cond-alpha-rename:36| (- |$cond-alpha-rename:40|)) (+ (- |$cond-alpha-rename:36| 1) (- (- |$cond-alpha-rename:40| 1)))))) (and (>= (- |$cond-alpha-rename:40| 1) 0) (> |$cond-alpha-rename:40| (- |$cond-alpha-rename:40| 1)))) (not (or (<= |$cond-alpha-rename:40| 0) (>= |$cond-alpha-rename:40| |$cond-alpha-rename:36|))) (not (= |$cond-alpha-rename:36| 0)) (not (or (<= |$cond-alpha-rename:216| 0) (>= |$cond-alpha-rename:216| |$cond-alpha-rename:212|))) (not (= |$cond-alpha-rename:212| 0)) (|bin_without_checking_1089$unknown:27| |$knormal:17| (- |$cond-alpha-rename:40| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1 (- |$cond-alpha-rename:36| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$cond-alpha-rename:33|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:213| |$cond-alpha-rename:212| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:209|) (|bin_1030$unknown:8| (- |$cond-alpha-rename:40| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1 (- |$cond-alpha-rename:36| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1) )
      (|bin_1030$unknown:18| |$knormal:17| (- |$cond-alpha-rename:40| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1 (- |$cond-alpha-rename:36| 1) |$cond-alpha-rename:40| |$cond-alpha-rename:36| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$cond-alpha-rename:59|) (|bot$unknown:29| |$knormal:68| 1) (|fail$unknown:31| |$knormal:70| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:62| 0)) (not (or (<= |$cond-alpha-rename:66| 0) (>= |$cond-alpha-rename:66| |$cond-alpha-rename:62|))) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:66|) (+ (+ 0 0) (- |$cond-alpha-rename:66| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:66| 1)) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:66|) (+ (+ 0 0) (- |$cond-alpha-rename:66| 1))) (and (> (+ (+ 0 |$cond-alpha-rename:62|) (- |$cond-alpha-rename:66|)) (+ (+ 0 (- |$cond-alpha-rename:62| 1)) (- (- |$cond-alpha-rename:66| 1)))) (>= (+ (+ 0 (- |$cond-alpha-rename:62| 1)) (- (- |$cond-alpha-rename:66| 1))) 0))))) )
      (|bin_1030$unknown:8| (- |$cond-alpha-rename:66| 1) |$cond-alpha-rename:66| |$cond-alpha-rename:62| 1 (- |$cond-alpha-rename:62| 1) |$cond-alpha-rename:66| |$cond-alpha-rename:62| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (not (= 0 1)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:79|) (+ (+ 0 0) (- |$cond-alpha-rename:79| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:79| 1)) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:79|) (+ (+ 0 0) (- |$cond-alpha-rename:79| 1))) (and (> (+ (+ 0 |$cond-alpha-rename:75|) (- |$cond-alpha-rename:79|)) (+ (+ 0 (- |$cond-alpha-rename:75| 1)) (- (- |$cond-alpha-rename:79| 1)))) (>= (+ (+ 0 (- |$cond-alpha-rename:75| 1)) (- (- |$cond-alpha-rename:79| 1))) 0)))) (not (= |$cond-alpha-rename:75| 0)) (not (or (<= |$cond-alpha-rename:79| 0) (>= |$cond-alpha-rename:79| |$cond-alpha-rename:75|))) )
      (|bin_1030$unknown:8| (- |$cond-alpha-rename:79| 1) |$cond-alpha-rename:79| |$cond-alpha-rename:75| 1 (- |$cond-alpha-rename:75| 1) |$cond-alpha-rename:79| |$cond-alpha-rename:75| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:105| |$cond-alpha-rename:104| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:101| 0)) (not (or (<= |$cond-alpha-rename:105| 0) (>= |$cond-alpha-rename:105| |$cond-alpha-rename:101|))) )
      (|bin_1030$unknown:8| (- |$cond-alpha-rename:105| 1) |$cond-alpha-rename:105| |$cond-alpha-rename:101| 1 (- |$cond-alpha-rename:101| 1) |$cond-alpha-rename:105| |$cond-alpha-rename:101| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:110| Int) (|$knormal:93| Int) )
    (=>
      ( and (|bin_1030$unknown:18| |$knormal:93| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_without_checking_1089$unknown:27| |$knormal:110| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:93| |$knormal:110|) |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:93| Int) )
    (=>
      ( and (|bin_1030$unknown:18| |$knormal:93| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (not (= |$alpha-17:n_1031| 0)) (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) )
      (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1)
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
  (forall ( (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:129| Int) )
    (=>
      ( and (>= |$alpha-30:k_1036| 0) (>= |$alpha-29:n_1035| 0) (|bin_without_checking_1089$unknown:27| |$knormal:129| |$alpha-30:k_1036| 0 0 0 |$alpha-29:n_1035| 0 0 0) )
      (|main_1033$unknown:38| |$knormal:129| |$alpha-30:k_1036| |$alpha-29:n_1035| 1 0 0 0)
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
  (not (exists ( (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:316| Int) )
    ( and (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:316| |$cond-alpha-rename:315| |$cond-alpha-rename:314| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309|) (not (= 0 1)) (not (= |$cond-alpha-rename:312| 0)) (not (or (<= |$cond-alpha-rename:316| 0) (>= |$cond-alpha-rename:316| |$cond-alpha-rename:312|))) (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:316|) (+ (+ 0 0) (- |$cond-alpha-rename:316| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:316| 1)) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:316|) (+ (+ 0 0) (- |$cond-alpha-rename:316| 1))) (and (> (+ (+ 0 |$cond-alpha-rename:312|) (- |$cond-alpha-rename:316|)) (+ (+ 0 (- |$cond-alpha-rename:312| 1)) (- (- |$cond-alpha-rename:316| 1)))) (>= (+ (+ 0 (- |$cond-alpha-rename:312| 1)) (- (- |$cond-alpha-rename:316| 1))) 0))))) )
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

