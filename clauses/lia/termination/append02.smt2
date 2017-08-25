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

(declare-fun |main_1034$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:37|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:36|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:35|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:34|
  ( Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |main_1034$unknown:32|
  ( Int ) Bool
)

(declare-fun |fail$unknown:30|
  ( Int ) Bool
)

(declare-fun |bot$unknown:28|
  ( Int ) Bool
)

(declare-fun |append_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |append_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:15|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:14|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |append_1030$unknown:10|
  ( Int ) Bool
)

(declare-fun |append_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:6|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:5|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:25|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:24|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:23|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:19|
  ( Int ) Bool
)

(declare-fun |append_1030$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$V-reftype:1| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:1| |$V-reftype:1|) )
      (|append_without_checking_1072$unknown:19| |$V-reftype:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|append_without_checking_1072| Int) (|$V-reftype:3| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:2| |$V-reftype:3| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:20| |$V-reftype:3| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$V-reftype:45| Int) (|$V-reftype:43| Int) (|append_without_checking_1072| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:11| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:6| |$V-reftype:11| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:5| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:4| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:24| |$V-reftype:11| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$V-reftype:45| Int) (|$V-reftype:43| Int) (|append_without_checking_1072| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:47| Int) (|$V-reftype:13| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:7| |$V-reftype:13| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:6| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:5| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:4| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:25| |$V-reftype:13| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$V-reftype:49| Int) (|$V-reftype:47| Int) (|$V-reftype:41| Int) (|$V-reftype:39| Int) (|append_without_checking_1072| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:15| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:7| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:6| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:5| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:4| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$V-reftype:49| Int) (|$V-reftype:47| Int) (|$V-reftype:41| Int) (|$V-reftype:39| Int) (|append_without_checking_1072| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:51| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$V-reftype:52| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:27| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:8| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:7| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:6| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:5| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:4| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_1030$unknown:9| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$V-reftype:41| Int) (|$V-reftype:39| Int) (|append_without_checking_1072| Int) (|$V-reftype:43| Int) (|$V-reftype:9| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:5| |$V-reftype:9| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:4| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:23| |$V-reftype:9| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$V-reftype:41| Int) (|$V-reftype:39| Int) (|append_without_checking_1072| Int) (|$V-reftype:7| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:4| |$V-reftype:7| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:3| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:22| |$V-reftype:7| |$V-reftype:41| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|append_without_checking_1072| Int) (|$V-reftype:39| Int) (|$V-reftype:5| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:3| |$V-reftype:5| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:2| |$V-reftype:39| |append_without_checking_1072|) (|append_1030$unknown:1| |append_without_checking_1072|) )
      (|append_without_checking_1072$unknown:21| |$V-reftype:5| |$V-reftype:39| |append_without_checking_1072|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$V-reftype:104| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:17| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$V-reftype:104| |$knormal:17|) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:9| |$knormal:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:18| |$V-reftype:104| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:35| Bool) (|$knormal:17| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$V-reftype:101| Int) (|$alpha-13:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (= |$V-reftype:101| |$knormal:17|) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:9| |$knormal:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:18| |$V-reftype:101| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:17| Int) (|$V-reftype:106| Int) (|$alpha-13:u| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$V-reftype:106| |$knormal:17|) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:9| |$knormal:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:18| |$V-reftype:106| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:1| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:35| Bool) (|$knormal:38| Int) (|$knormal:36| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:2| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:3| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:35| Bool) (|$knormal:38| Int) (|$knormal:36| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:4| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:5| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:35| Bool) (|$knormal:38| Int) (|$knormal:36| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:6| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:7| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:35| Bool) (|$knormal:38| Int) (|$knormal:36| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:8| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:39| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:38| Int) (|$knormal:35| Bool) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|bot$unknown:28| |$knormal:36|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:35| Bool) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$alpha-13:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:1| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-13:u| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:35| Bool) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:2| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:35| Bool) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$alpha-13:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:3| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-13:u| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:35| Bool) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:4| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:35| Bool) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$alpha-13:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:5| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-13:u| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:35| Bool) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:6| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:31| Int) (|$knormal:30| Int) (|$knormal:28| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:18| Int) (|$knormal:35| Bool) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$alpha-13:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:32| Int) (|$knormal:34| Bool) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:7| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-13:u| Int) (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$knormal:35| Bool) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) |$knormal:35| (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:8| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:32| Int) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:25| Int) (|$knormal:24| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:35| Bool) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:28| Bool) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| (and |$knormal:28| |$knormal:34|)) (= |$knormal:34| (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:xs_1031|) (= |$knormal:29| 0) (= |$knormal:28| (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:xs_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_append_xs_1056|) (= |$knormal:18| 0) (not |$knormal:35|) (not (= |$alpha-8:prev_set_flag_append_1058| 0)) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|fail$unknown:30| |$knormal:38|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-13:u| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:1| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:u| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:2| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-13:u| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:3| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:u| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:4| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-13:u| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:5| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:u| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:6| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:ys_1032| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-7:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-13:u| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:7| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:u| Int) (|$alpha-10:s_prev_append_ys_1057| Int) (|$alpha-9:s_prev_append_xs_1056| Int) (|$alpha-6:x_DO_NOT_CARE_1076| Int) (|$alpha-5:x_DO_NOT_CARE_1075| Int) (|$alpha-4:x_DO_NOT_CARE_1074| Int) (|$alpha-7:xs_1031| Int) (|$alpha-8:prev_set_flag_append_1058| Int) (|$alpha-11:ys_1032| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$alpha-8:prev_set_flag_append_1058| 0) (|append_1030$unknown:17| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:16| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:15| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:14| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:13| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:12| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:11| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|) (|append_1030$unknown:10| |$alpha-4:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:8| |$alpha-11:ys_1032| |$alpha-10:s_prev_append_ys_1057| |$alpha-9:s_prev_append_xs_1056| |$alpha-8:prev_set_flag_append_1058| |$alpha-7:xs_1031| |$alpha-6:x_DO_NOT_CARE_1076| |$alpha-5:x_DO_NOT_CARE_1075| |$alpha-4:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Bool) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-25:xs'_1033| Int) (|$alpha-17:xs_1031| Int) (|$alpha-21:ys_1032| Int) (|$knormal:57| Int) (|$alpha-22:set_flag_append_1059| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$V-reftype:111| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (= |$V-reftype:111| (+ 1 |$knormal:57|)) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_1030$unknown:18| |$knormal:57| |$alpha-21:ys_1032| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:27| |$V-reftype:111| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$V-reftype:109| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-22:set_flag_append_1059| 1) (= |$V-reftype:109| |$alpha-21:ys_1032|) |$knormal:40| (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_without_checking_1072$unknown:27| |$V-reftype:109| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:10| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:11| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:12| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:13| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:14| |$alpha-22:set_flag_append_1059| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:15| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:xs'_1033| Int) (|$knormal:40| Bool) (|$alpha-21:ys_1032| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-17:xs_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-22:set_flag_append_1059| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:16| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:set_flag_append_1059| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-21:ys_1032| Int) (|$knormal:40| Bool) (|$alpha-25:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:40| (<= |$alpha-17:xs_1031| 0)) (= |$alpha-25:xs'_1033| (- |$alpha-17:xs_1031| 1)) (= |$alpha-22:set_flag_append_1059| 1) (not |$knormal:40|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:25| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:24| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:23| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:22| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:21| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:20| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) (|append_without_checking_1072$unknown:19| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_1030$unknown:17| |$alpha-21:ys_1032| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059| |$alpha-25:xs'_1033| |$alpha-21:ys_1032| |$alpha-17:xs_1031| |$alpha-22:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:112| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-28:s_append_ys_1055| Int) (|$knormal:73| Int) (|$alpha-31:l2_1037| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-30:l1_1036| Int) (|$alpha-29:u_1035| Int) )
    (=>
      ( and (= |$V-reftype:112| |$knormal:73|) (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) (|append_without_checking_1072$unknown:27| |$knormal:73| |$alpha-31:l2_1037| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) )
      (|main_1034$unknown:38| |$V-reftype:112| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:80| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:80| |$knormal:2|) (|bot$unknown:29| |$knormal:2| |$knormal:1|) (|bot$unknown:28| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:29| |$V-reftype:80| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:28| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:28| |$knormal:1|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:30| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-31:l2_1037| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-29:u_1035| Int) (|$alpha-30:l1_1036| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:19| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-29:u_1035| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:20| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:l2_1037| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-29:u_1035| Int) (|$alpha-30:l1_1036| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:21| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-29:u_1035| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:22| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:l2_1037| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-29:u_1035| Int) (|$alpha-30:l1_1036| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:23| |$alpha-26:set_flag_append_1059| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-29:u_1035| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:24| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:l2_1037| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-29:u_1035| Int) (|$alpha-30:l1_1036| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:25| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-29:u_1035| Int) (|$alpha-26:set_flag_append_1059| Int) (|$alpha-27:s_append_xs_1054| Int) (|$alpha-28:s_append_ys_1055| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:37| |$alpha-31:l2_1037| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:36| |$alpha-30:l1_1036| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:35| |$alpha-29:u_1035| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:34| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:33| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|) (|main_1034$unknown:32| |$alpha-26:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:26| |$alpha-31:l2_1037| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059| |$alpha-30:l1_1036| |$alpha-28:s_append_ys_1055| |$alpha-27:s_append_xs_1054| |$alpha-26:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$knormal:79| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:82| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:32| |$knormal:74|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:33| |$knormal:76| |$knormal:74|)
    )
  )
)
(assert
  (forall ( (|$knormal:79| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:82| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:34| |$knormal:79| |$knormal:76| |$knormal:74|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:35| |$knormal:82| |$knormal:79| |$knormal:76| |$knormal:74|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$V-reftype:61| Int) (|$knormal:79| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:82| Int) (|$V-reftype:63| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:36| |$V-reftype:61| |$knormal:82| |$knormal:79| |$knormal:76| |$knormal:74|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$V-reftype:61| Int) (|$knormal:79| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:82| Int) (|$V-reftype:63| Int) )
    (=>
      ( and (= |$knormal:82| 1) (= |$knormal:79| 0) (= |$knormal:76| 0) (= |$knormal:74| 0) )
      (|main_1034$unknown:37| |$V-reftype:63| |$V-reftype:75| |$knormal:82| |$knormal:79| |$knormal:76| |$knormal:74|)
    )
  )
)
(check-sat)

