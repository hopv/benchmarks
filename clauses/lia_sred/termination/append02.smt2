(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec append_1030 append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075 x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058 s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032 =
       let u = if prev_set_flag_append_1058 then
                if ((0 * 1) + (1 * s_prev_append_xs_1056)) +
                   (0 * s_prev_append_ys_1057) >
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
                  ()
                else
                  let u_3245 = fail ()
                  in
                    bot()
               else () in
              append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075
                x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058
                s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032
  
     let rec append_without_checking_1072 x_DO_NOT_CARE_1078 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 xs_1031 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 ys_1032 =
       let set_flag_append_1059 = true
       in
       let s_append_ys_1055 = ys_1032
       in
       let s_append_xs_1054 = xs_1031
       in
         if xs_1031 <= 0 then
           ys_1032
         else
           let xs'_1033 = xs_1031 - 1
           in
             1 +
             append_1030 append_without_checking_1072 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
               xs'_1033 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
               ys_1032
  
     let main_1034 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 u_1035  l1_1036 l2_1037 =
         append_without_checking_1072 set_flag_append_1059 s_append_xs_1054
           s_append_ys_1055 l1_1036 set_flag_append_1059 s_append_xs_1054
           s_append_ys_1055 l2_1037
  
  let main =
       main_1034 false 0 0 ()
")

(set-logic HORN)

(declare-fun |append_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |append_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|append_without_checking_1072| Int) )
    (=>
      ( and (|append_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (not (<= |$alpha-17:xs_1031| 0)) )
      (|append_without_checking_1072$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) (|$knormal:17| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|append_1030$unknown:8| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1 (- |$cond-alpha-rename:17| 1) |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$cond-alpha-rename:96| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:21| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|append_without_checking_1072$unknown:27| |$knormal:17| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1 (- |$cond-alpha-rename:17| 1) |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (<= |$cond-alpha-rename:97| 0)) (not (<= |$cond-alpha-rename:17| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:17|) 0) (+ (+ 0 (- |$cond-alpha-rename:17| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:17| 1)) 0) 0))) )
      (|append_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1 (- |$cond-alpha-rename:17| 1) |$cond-alpha-rename:21| |$cond-alpha-rename:17| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$knormal:17| Int) )
    (=>
      ( and (|append_1030$unknown:8| |$cond-alpha-rename:31| |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1 (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|append_without_checking_1072$unknown:27| |$knormal:17| |$cond-alpha-rename:31| |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1 (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:27| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:27|) 0) (+ (+ 0 (- |$cond-alpha-rename:27| 1)) 0)) (not (<= |$cond-alpha-rename:107| 0)) (not (<= |$cond-alpha-rename:27| 0)) )
      (|append_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:31| |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1 (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:31| |$cond-alpha-rename:27| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) (|$knormal:17| Int) )
    (=>
      ( and (|append_1030$unknown:8| |$cond-alpha-rename:41| |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1 (- |$cond-alpha-rename:37| 1) |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |$cond-alpha-rename:34|) (|append_without_checking_1072$unknown:27| |$knormal:17| |$cond-alpha-rename:41| |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1 (- |$cond-alpha-rename:37| 1) |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:117| 0)) (not (<= |$cond-alpha-rename:37| 0)) )
      (|append_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:41| |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1 (- |$cond-alpha-rename:37| 1) |$cond-alpha-rename:41| |$cond-alpha-rename:37| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:51| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:51| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$cond-alpha-rename:48| |$cond-alpha-rename:47| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (<= |$cond-alpha-rename:47| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:47|) 0) (+ (+ 0 (- |$cond-alpha-rename:47| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:47| 1)) 0) 0))) )
      (|append_1030$unknown:8| |$cond-alpha-rename:51| |$cond-alpha-rename:51| |$cond-alpha-rename:47| 1 (- |$cond-alpha-rename:47| 1) |$cond-alpha-rename:51| |$cond-alpha-rename:47| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:55| |$cond-alpha-rename:54|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:57| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:57|) 0) (+ (+ 0 (- |$cond-alpha-rename:57| 1)) 0)) (not (<= |$cond-alpha-rename:57| 0)) )
      (|append_1030$unknown:8| |$cond-alpha-rename:61| |$cond-alpha-rename:61| |$cond-alpha-rename:57| 1 (- |$cond-alpha-rename:57| 1) |$cond-alpha-rename:61| |$cond-alpha-rename:57| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:81| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75| |$cond-alpha-rename:74|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:77| 0)) )
      (|append_1030$unknown:8| |$cond-alpha-rename:81| |$cond-alpha-rename:81| |$cond-alpha-rename:77| 1 (- |$cond-alpha-rename:77| 1) |$cond-alpha-rename:81| |$cond-alpha-rename:77| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$knormal:57| Int) )
    (=>
      ( and (|append_1030$unknown:18| |$knormal:57| |$alpha-21:ys_1032| |$alpha-21:ys_1032| |$alpha-17:xs_1031| 1 (- |$alpha-17:xs_1031| 1) |$alpha-21:ys_1032| |$alpha-17:xs_1031| 1) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (not (<= |$alpha-17:xs_1031| 0)) )
      (|append_without_checking_1072$unknown:27| (+ 1 |$knormal:57|) |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (<= |$alpha-17:xs_1031| 0) )
      (|append_without_checking_1072$unknown:27| |$alpha-21:ys_1032| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|)
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
  (not (exists ( (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) )
    ( and (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$cond-alpha-rename:132|) (not (= 0 1)) (not (<= |$cond-alpha-rename:135| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:135|) 0) (+ (+ 0 (- |$cond-alpha-rename:135| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:135| 1)) 0) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and true )
      (|append_without_checking_1072$unknown:26| |$alpha-31:l2_1037| 0 0 0 |$alpha-30:l1_1036| 0 0 0)
    )
  )
)
(check-sat)

(get-model)

