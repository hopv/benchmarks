(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec zip_1030 zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062 s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032 =
    let u =if prev_set_flag_zip_1062 then
             if ((0 * 1) + (1 * s_prev_zip_xs_1060)) +
                (0 * s_prev_zip_ys_1061) >
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
               ()
             else
               let u_3427 = fail ()
               in
                 bot()
           else () in
           zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080
             x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062
             s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032
  let rec zip_without_checking_1077 x_DO_NOT_CARE_1083 x_DO_NOT_CARE_1084 x_DO_NOT_CARE_1085 xs_1031 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys_1032 =
    let set_flag_zip_1063 = true
    in
    let s_zip_ys_1059 = ys_1032
    in
    let s_zip_xs_1058 = xs_1031
    in
      if xs_1031 <= 0 then
        0
      else
        let xs'_1033 = xs_1031 - 1
        in
          if ys_1032 <= 0 then
            0
          else
            let ys'_1034 = ys_1032 - 1
            in
              1 +
              zip_1030 zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 xs'_1033
                set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys'_1034
  
  let main_1035 l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059
        l1_1037 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |main_1035$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |zip_1030$unknown:25|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zip_1030$unknown:15|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:33|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:34|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$knormal:17| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:37| 1) (|fail$unknown:4| |$knormal:39| 1) (|zip_1030$unknown:15| (- |$cond-alpha-rename:82| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1 (- |$cond-alpha-rename:78| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:82| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1 (- |$cond-alpha-rename:78| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1) (not (= 0 1)) (not (<= |$cond-alpha-rename:42| 0)) (not (<= |$cond-alpha-rename:46| 0)) (not (<= |$cond-alpha-rename:78| 0)) (not (<= |$cond-alpha-rename:82| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:78|) 0) (+ (+ 0 (- |$cond-alpha-rename:78| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:78| 1)) 0) 0))) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:82| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1 (- |$cond-alpha-rename:78| 1) |$cond-alpha-rename:82| |$cond-alpha-rename:78| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:37| 1) (|fail$unknown:4| |$knormal:39| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:93| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86|) (not (= 0 1)) (not (<= |$cond-alpha-rename:89| 0)) (not (<= |$cond-alpha-rename:93| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:89|) 0) (+ (+ 0 (- |$cond-alpha-rename:89| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:89| 1)) 0) 0))) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:93| 1) |$cond-alpha-rename:93| |$cond-alpha-rename:89| 1 (- |$cond-alpha-rename:89| 1) |$cond-alpha-rename:93| |$cond-alpha-rename:89| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    ( and (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:104| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (not (= 0 1)) (not (<= |$cond-alpha-rename:100| 0)) (not (<= |$cond-alpha-rename:104| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:100|) 0) (+ (+ 0 (- |$cond-alpha-rename:100| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:100| 1)) 0) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-27:l1_1037| Int) (|$alpha-28:l2_1038| Int) )
    (=>
      ( and (|main_1035$unknown:6| |$alpha-28:l2_1038| |$alpha-27:l1_1037|) )
      (|zip_without_checking_1077$unknown:33| |$alpha-28:l2_1038| 0 0 0 |$alpha-27:l1_1037| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:58| Int) (|$V-reftype:60| Int) (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|zip_without_checking_1077| Int) )
    (=>
      ( and (|zip_1030$unknown:15| |$V-reftype:26| |$V-reftype:60| |$V-reftype:58| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$V-reftype:50| |zip_without_checking_1077|) (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| |$V-reftype:26| |$V-reftype:60| |$V-reftype:58| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$V-reftype:50| |zip_without_checking_1077|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$knormal:17| Int) )
    (=>
      ( and (|zip_1030$unknown:15| (- |$cond-alpha-rename:115| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1 (- |$cond-alpha-rename:111| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:112| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52| |$cond-alpha-rename:51|) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:115| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1 (- |$cond-alpha-rename:111| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:111| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:111|) 0) (+ (+ 0 (- |$cond-alpha-rename:111| 1)) 0)) (not (<= |$cond-alpha-rename:111| 0)) (not (<= |$cond-alpha-rename:115| 0)) (not (<= |$cond-alpha-rename:54| 0)) (not (<= |$cond-alpha-rename:58| 0)) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:115| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1 (- |$cond-alpha-rename:111| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:111| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$knormal:17| Int) )
    (=>
      ( and (|zip_1030$unknown:15| (- |$cond-alpha-rename:126| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1 (- |$cond-alpha-rename:122| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68| |$cond-alpha-rename:67| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:126| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1 (- |$cond-alpha-rename:122| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:122| 0)) (not (<= |$cond-alpha-rename:126| 0)) (not (<= |$cond-alpha-rename:66| 0)) (not (<= |$cond-alpha-rename:70| 0)) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:126| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1 (- |$cond-alpha-rename:122| 1) |$cond-alpha-rename:126| |$cond-alpha-rename:122| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:137| |$cond-alpha-rename:136| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:133| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:133|) 0) (+ (+ 0 (- |$cond-alpha-rename:133| 1)) 0)) (not (<= |$cond-alpha-rename:133| 0)) (not (<= |$cond-alpha-rename:137| 0)) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:137| 1) |$cond-alpha-rename:137| |$cond-alpha-rename:133| 1 (- |$cond-alpha-rename:133| 1) |$cond-alpha-rename:137| |$cond-alpha-rename:133| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:148| |$cond-alpha-rename:147| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:141|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:144| 0)) (not (<= |$cond-alpha-rename:148| 0)) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:148| 1) |$cond-alpha-rename:148| |$cond-alpha-rename:144| 1 (- |$cond-alpha-rename:144| 1) |$cond-alpha-rename:148| |$cond-alpha-rename:144| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:58| Int) )
    (=>
      ( and (|zip_1030$unknown:25| |$knormal:58| (- |$alpha-21:ys_1032| 1) |$alpha-21:ys_1032| |$alpha-17:xs_1031| 1 (- |$alpha-17:xs_1031| 1) |$alpha-21:ys_1032| |$alpha-17:xs_1031| 1) (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:34| (+ 1 |$knormal:58|) |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (<= |$alpha-17:xs_1031| 0) )
      (|zip_without_checking_1077$unknown:34| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (<= |$alpha-21:ys_1032| 0) (not (<= |$alpha-17:xs_1031| 0)) )
      (|zip_without_checking_1077$unknown:34| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(check-sat)

(get-model)

