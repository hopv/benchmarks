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

(declare-fun |append_without_checking_1072$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:331| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$cond-alpha-rename:305| |$cond-alpha-rename:304| |$cond-alpha-rename:303| |$cond-alpha-rename:302| |$cond-alpha-rename:301| |$cond-alpha-rename:300|) (|bot$unknown:29| |$cond-alpha-rename:329| 1) (|fail$unknown:31| |$cond-alpha-rename:331| 1) (not (= 0 1)) (not (<= |$cond-alpha-rename:303| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:303|) 0) (+ (+ 0 (- |$cond-alpha-rename:303| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:303| 1)) 0) 0))) (not (<= |$alpha-17:xs_1031| 0)) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:307| |$cond-alpha-rename:307| |$cond-alpha-rename:303| 1 (- |$cond-alpha-rename:303| 1) |$cond-alpha-rename:307| |$cond-alpha-rename:303| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:339| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:339| |$cond-alpha-rename:338| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:335| |$cond-alpha-rename:334| |$cond-alpha-rename:333| |$cond-alpha-rename:332|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:335| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:335|) 0) (+ (+ 0 (- |$cond-alpha-rename:335| 1)) 0)) (not (<= |$cond-alpha-rename:335| 0)) (not (<= |$alpha-17:xs_1031| 0)) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:339| |$cond-alpha-rename:339| |$cond-alpha-rename:335| 1 (- |$cond-alpha-rename:335| 1) |$cond-alpha-rename:339| |$cond-alpha-rename:335| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:363| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) )
    (=>
      ( and (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:367| |$cond-alpha-rename:366| |$cond-alpha-rename:365| |$cond-alpha-rename:364| |$cond-alpha-rename:363| |$cond-alpha-rename:362| |$cond-alpha-rename:361| |$cond-alpha-rename:360|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:363| 0)) (not (<= |$alpha-17:xs_1031| 0)) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:367| |$cond-alpha-rename:367| |$cond-alpha-rename:363| 1 (- |$cond-alpha-rename:363| 1) |$cond-alpha-rename:367| |$cond-alpha-rename:363| 1)
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
  (not (exists ( (|$cond-alpha-rename:9202| Int) (|$cond-alpha-rename:9203| Int) (|$cond-alpha-rename:9204| Int) (|$cond-alpha-rename:9205| Int) (|$cond-alpha-rename:9206| Int) (|$cond-alpha-rename:9207| Int) (|$cond-alpha-rename:9208| Int) (|$cond-alpha-rename:9209| Int) )
    ( and (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:9209| |$cond-alpha-rename:9208| |$cond-alpha-rename:9207| |$cond-alpha-rename:9206| |$cond-alpha-rename:9205| |$cond-alpha-rename:9204| |$cond-alpha-rename:9203| |$cond-alpha-rename:9202|) (not (= 0 1)) (not (<= |$cond-alpha-rename:9205| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:9205|) 0) (+ (+ 0 (- |$cond-alpha-rename:9205| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:9205| 1)) 0) 0))) )
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

