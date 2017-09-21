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

(declare-fun |zip_without_checking_1077$unknown:34|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:33|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zip_1030$unknown:15|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
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
  (forall ( (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:80| Int) (|$knormal:17| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (not (and (>= (- |$cond-alpha-rename:129| 1) 0) (> |$cond-alpha-rename:129| (- |$cond-alpha-rename:129| 1)))) (not (<= |$cond-alpha-rename:80| 0)) (not (<= |$cond-alpha-rename:76| 0)) (not (<= |$cond-alpha-rename:133| 0)) (not (<= |$cond-alpha-rename:129| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:133| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1 (- |$cond-alpha-rename:129| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| |$cond-alpha-rename:128| |$cond-alpha-rename:127| |$cond-alpha-rename:126|) (|zip_1030$unknown:15| (- |$cond-alpha-rename:133| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1 (- |$cond-alpha-rename:129| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1) (|fail$unknown:4| |$knormal:39| 1) (|bot$unknown:2| |$knormal:37| 1) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:133| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1 (- |$cond-alpha-rename:129| 1) |$cond-alpha-rename:133| |$cond-alpha-rename:129| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (not (and (>= (- |$cond-alpha-rename:140| 1) 0) (> |$cond-alpha-rename:140| (- |$cond-alpha-rename:140| 1)))) (not (<= |$cond-alpha-rename:144| 0)) (not (<= |$cond-alpha-rename:140| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137|) (|fail$unknown:4| |$knormal:39| 1) (|bot$unknown:2| |$knormal:37| 1) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:144| 1) |$cond-alpha-rename:144| |$cond-alpha-rename:140| 1 (- |$cond-alpha-rename:140| 1) |$cond-alpha-rename:144| |$cond-alpha-rename:140| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) )
    ( and (not (and (>= (- |$cond-alpha-rename:151| 1) 0) (> |$cond-alpha-rename:151| (- |$cond-alpha-rename:151| 1)))) (not (<= |$cond-alpha-rename:155| 0)) (not (<= |$cond-alpha-rename:151| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| |$cond-alpha-rename:152| |$cond-alpha-rename:151| |$cond-alpha-rename:150| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) )
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
  (forall ( (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$knormal:17| Int) )
    (=>
      ( and (> |$cond-alpha-rename:162| (- |$cond-alpha-rename:162| 1)) (>= (- |$cond-alpha-rename:162| 1) 0) (not (<= |$cond-alpha-rename:92| 0)) (not (<= |$cond-alpha-rename:88| 0)) (not (<= |$cond-alpha-rename:166| 0)) (not (<= |$cond-alpha-rename:162| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:166| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1 (- |$cond-alpha-rename:162| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:166| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| |$cond-alpha-rename:159|) (|zip_1030$unknown:15| (- |$cond-alpha-rename:166| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1 (- |$cond-alpha-rename:162| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:166| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1 (- |$cond-alpha-rename:162| 1) |$cond-alpha-rename:166| |$cond-alpha-rename:162| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (<= |$cond-alpha-rename:104| 0)) (not (<= |$cond-alpha-rename:100| 0)) (not (<= |$cond-alpha-rename:177| 0)) (not (<= |$cond-alpha-rename:173| 0)) (not (not (= 0 1))) (|zip_without_checking_1077$unknown:34| |$knormal:17| (- |$cond-alpha-rename:177| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1 (- |$cond-alpha-rename:173| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:177| |$cond-alpha-rename:176| |$cond-alpha-rename:175| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:104| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|zip_1030$unknown:15| (- |$cond-alpha-rename:177| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1 (- |$cond-alpha-rename:173| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1) )
      (|zip_1030$unknown:25| |$knormal:17| (- |$cond-alpha-rename:177| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1 (- |$cond-alpha-rename:173| 1) |$cond-alpha-rename:177| |$cond-alpha-rename:173| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:188| Int) )
    (=>
      ( and (> |$cond-alpha-rename:184| (- |$cond-alpha-rename:184| 1)) (>= (- |$cond-alpha-rename:184| 1) 0) (not (<= |$cond-alpha-rename:188| 0)) (not (<= |$cond-alpha-rename:184| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:188| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:181|) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:188| 1) |$cond-alpha-rename:188| |$cond-alpha-rename:184| 1 (- |$cond-alpha-rename:184| 1) |$cond-alpha-rename:188| |$cond-alpha-rename:184| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) )
    (=>
      ( and (not (<= |$cond-alpha-rename:199| 0)) (not (<= |$cond-alpha-rename:195| 0)) (not (not (= 0 1))) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:196| |$cond-alpha-rename:195| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:192|) )
      (|zip_1030$unknown:15| (- |$cond-alpha-rename:199| 1) |$cond-alpha-rename:199| |$cond-alpha-rename:195| 1 (- |$cond-alpha-rename:195| 1) |$cond-alpha-rename:199| |$cond-alpha-rename:195| 1)
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

