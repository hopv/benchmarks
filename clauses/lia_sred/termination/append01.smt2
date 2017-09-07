(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
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
             append_without_checking_1072 set_flag_append_1059 s_append_xs_1054
               s_append_ys_1055 xs'_1033 set_flag_append_1059 s_append_xs_1054
               s_append_ys_1055 ys_1032
  
     let rec append_1030 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075 x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058 s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032 =
       let u = if prev_set_flag_append_1058 then
                if ((0 * 1) + (1 * s_prev_append_xs_1056)) +
                   (0 * s_prev_append_ys_1057) >
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
                  ()
                else
                  let u_2459 = fail ()
                  in
                    bot()
               else () in
              append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075
                x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058
                s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032
  
     let main_1034 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 u_1035  l1_1036 l2_1037=
         append_1030 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
           l1_1036 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 l2_1037
  
  let main =
       main_1034 false 0 0 ()
")

(set-logic HORN)

(declare-fun |bot$unknown:19|
  ( Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:50| Int) (|$knormal:48| Int) (|$knormal:47| Int) (|$knormal:45| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:38| Int) (|$knormal:35| Int) (|$V-reftype:91| Int) (|$knormal:56| Int) (|$knormal:54| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-18:xs_1031| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-22:ys_1032| Int) (|$knormal:34| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:52| Bool) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:46| Int) (|$knormal:49| Int) (|$knormal:51| Bool) )
    (=>
      ( and (= |$knormal:55| 1) (= |$knormal:53| 1) (= |$knormal:52| (and |$knormal:45| |$knormal:51|)) (= |$knormal:51| (>= |$knormal:50| 0)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| |$alpha-18:xs_1031|) (= |$knormal:46| 0) (= |$knormal:45| (> |$knormal:39| |$knormal:44|)) (= |$knormal:44| (+ |$knormal:42| |$knormal:43|)) (= |$knormal:43| 0) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:41| |$alpha-18:xs_1031|) (= |$knormal:40| 0) (= |$knormal:39| (+ |$knormal:37| |$knormal:38|)) (= |$knormal:38| 0) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-20:s_prev_append_xs_1056|) (= |$knormal:35| 0) (= |$cond-alpha-rename:17| 1) (= |$cond-alpha-rename:16| 0) (= |$cond-alpha-rename:15| 0) (= |$cond-alpha-rename:14| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:16|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:15|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:14|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:16|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:15|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:14|) (= |$V-reftype:91| |$knormal:34|) (not |$knormal:52|) (not (= |$alpha-19:prev_set_flag_append_1058| 0)) (|fail$unknown:22| |$knormal:56| |$knormal:55|) (|bot$unknown:20| |$knormal:54| |$knormal:53|) (|append_without_checking_1072$unknown:18| |$knormal:34| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:9| |$V-reftype:91| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$knormal:48| Int) (|$knormal:47| Int) (|$knormal:45| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:38| Int) (|$knormal:35| Int) (|$V-reftype:88| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-18:xs_1031| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-22:ys_1032| Int) (|$knormal:34| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$knormal:52| Bool) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:46| Int) (|$knormal:49| Int) (|$knormal:51| Bool) )
    (=>
      ( and (= |$knormal:52| (and |$knormal:45| |$knormal:51|)) (= |$knormal:51| (>= |$knormal:50| 0)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| |$alpha-18:xs_1031|) (= |$knormal:46| 0) (= |$knormal:45| (> |$knormal:39| |$knormal:44|)) (= |$knormal:44| (+ |$knormal:42| |$knormal:43|)) (= |$knormal:43| 0) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:41| |$alpha-18:xs_1031|) (= |$knormal:40| 0) (= |$knormal:39| (+ |$knormal:37| |$knormal:38|)) (= |$knormal:38| 0) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-20:s_prev_append_xs_1056|) (= |$knormal:35| 0) (= |$cond-alpha-rename:21| 1) (= |$cond-alpha-rename:20| 0) (= |$cond-alpha-rename:19| 0) (= |$cond-alpha-rename:18| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:20|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:19|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:18|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:20|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:19|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:18|) (= |$V-reftype:88| |$knormal:34|) |$knormal:52| (not (= |$alpha-19:prev_set_flag_append_1058| 0)) (|append_without_checking_1072$unknown:18| |$knormal:34| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:9| |$V-reftype:88| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$knormal:34| Int) (|$alpha-22:ys_1032| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-18:xs_1031| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) )
    (=>
      ( and (= |$cond-alpha-rename:25| 1) (= |$cond-alpha-rename:24| 0) (= |$cond-alpha-rename:23| 0) (= |$cond-alpha-rename:22| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:24|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:23|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:22|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:24|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:23|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:22|) (= |$V-reftype:93| |$knormal:34|) (= |$alpha-19:prev_set_flag_append_1058| 0) (|append_without_checking_1072$unknown:18| |$knormal:34| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) )
      (|append_1030$unknown:9| |$V-reftype:93| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Bool) (|$knormal:49| Int) (|$knormal:46| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$knormal:36| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:26| Int) (|$knormal:52| Bool) (|$knormal:55| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:56| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$knormal:35| Int) (|$knormal:38| Int) (|$knormal:40| Int) (|$alpha-18:xs_1031| Int) (|$knormal:43| Int) (|$knormal:45| Bool) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:50| Int) (|$alpha-22:ys_1032| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$knormal:53| 1) (= |$knormal:52| (and |$knormal:45| |$knormal:51|)) (= |$knormal:51| (>= |$knormal:50| 0)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| |$alpha-18:xs_1031|) (= |$knormal:46| 0) (= |$knormal:45| (> |$knormal:39| |$knormal:44|)) (= |$knormal:44| (+ |$knormal:42| |$knormal:43|)) (= |$knormal:43| 0) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:41| |$alpha-18:xs_1031|) (= |$knormal:40| 0) (= |$knormal:39| (+ |$knormal:37| |$knormal:38|)) (= |$knormal:38| 0) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-20:s_prev_append_xs_1056|) (= |$knormal:35| 0) (= |$cond-alpha-rename:29| 1) (= |$cond-alpha-rename:28| 0) (= |$cond-alpha-rename:27| 0) (= |$cond-alpha-rename:26| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:28|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:27|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:26|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:28|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:27|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:26|) (not |$knormal:52|) (not (= |$alpha-19:prev_set_flag_append_1058| 0)) (|fail$unknown:22| |$knormal:56| |$knormal:55|) (|bot$unknown:20| |$knormal:54| |$knormal:53|) )
      (|append_without_checking_1072$unknown:17| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$knormal:50| Int) (|$knormal:48| Int) (|$knormal:47| Int) (|$knormal:45| Bool) (|$knormal:43| Int) (|$alpha-18:xs_1031| Int) (|$knormal:40| Int) (|$knormal:38| Int) (|$knormal:35| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-19:prev_set_flag_append_1058| Bool) (|$knormal:56| Int) (|$knormal:55| Int) (|$knormal:52| Bool) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:46| Int) (|$knormal:49| Int) (|$knormal:51| Bool) )
    (=>
      ( and (= |$knormal:55| 1) (= |$knormal:53| 1) (= |$knormal:52| (and |$knormal:45| |$knormal:51|)) (= |$knormal:51| (>= |$knormal:50| 0)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| |$alpha-18:xs_1031|) (= |$knormal:46| 0) (= |$knormal:45| (> |$knormal:39| |$knormal:44|)) (= |$knormal:44| (+ |$knormal:42| |$knormal:43|)) (= |$knormal:43| 0) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:41| |$alpha-18:xs_1031|) (= |$knormal:40| 0) (= |$knormal:39| (+ |$knormal:37| |$knormal:38|)) (= |$knormal:38| 0) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-20:s_prev_append_xs_1056|) (= |$knormal:35| 0) (= |$cond-alpha-rename:33| 1) (= |$cond-alpha-rename:32| 0) (= |$cond-alpha-rename:31| 0) (= |$cond-alpha-rename:30| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:32|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:31|) (= |$alpha-19:prev_set_flag_append_1058| (not (= |$cond-alpha-rename:30| 0))) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:32|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:31|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:30|) (not |$knormal:52|) |$alpha-19:prev_set_flag_append_1058| (|fail$unknown:22| |$knormal:56| |$knormal:55|) )
      (|bot$unknown:19| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Bool) (|$knormal:49| Int) (|$knormal:46| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$knormal:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:34| Int) (|$knormal:52| Bool) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$knormal:35| Int) (|$knormal:38| Int) (|$knormal:40| Int) (|$alpha-18:xs_1031| Int) (|$knormal:43| Int) (|$knormal:45| Bool) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:50| Int) (|$alpha-22:ys_1032| Int) )
    (=>
      ( and (= |$knormal:52| (and |$knormal:45| |$knormal:51|)) (= |$knormal:51| (>= |$knormal:50| 0)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| |$alpha-18:xs_1031|) (= |$knormal:46| 0) (= |$knormal:45| (> |$knormal:39| |$knormal:44|)) (= |$knormal:44| (+ |$knormal:42| |$knormal:43|)) (= |$knormal:43| 0) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:41| |$alpha-18:xs_1031|) (= |$knormal:40| 0) (= |$knormal:39| (+ |$knormal:37| |$knormal:38|)) (= |$knormal:38| 0) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-20:s_prev_append_xs_1056|) (= |$knormal:35| 0) (= |$cond-alpha-rename:37| 1) (= |$cond-alpha-rename:36| 0) (= |$cond-alpha-rename:35| 0) (= |$cond-alpha-rename:34| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:36|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:35|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:34|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:36|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:35|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:34|) |$knormal:52| (not (= |$alpha-19:prev_set_flag_append_1058| 0)) )
      (|append_without_checking_1072$unknown:17| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:42| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-18:xs_1031| Int) )
    (=>
      ( and (= |$cond-alpha-rename:45| 1) (= |$cond-alpha-rename:44| 0) (= |$cond-alpha-rename:43| 0) (= |$cond-alpha-rename:42| 0) (= |$alpha-21:s_prev_append_ys_1057| |$cond-alpha-rename:44|) (= |$alpha-20:s_prev_append_xs_1056| |$cond-alpha-rename:43|) (= |$alpha-19:prev_set_flag_append_1058| |$cond-alpha-rename:42|) (= |$alpha-17:x_DO_NOT_CARE_1076| |$cond-alpha-rename:44|) (= |$alpha-16:x_DO_NOT_CARE_1075| |$cond-alpha-rename:43|) (= |$alpha-15:x_DO_NOT_CARE_1074| |$cond-alpha-rename:42|) (= |$alpha-19:prev_set_flag_append_1058| 0) )
      (|append_without_checking_1072$unknown:17| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-14:xs'_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1078| Int) (|$alpha-5:x_DO_NOT_CARE_1080| Int) (|$alpha-7:set_flag_append_1059| Int) (|$alpha-9:s_append_ys_1055| Int) (|$alpha-10:ys_1032| Int) (|$alpha-8:s_append_xs_1054| Int) (|$alpha-6:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1079| Int) (|$knormal:18| Int) (|$alpha-11:set_flag_append_1059| Int) (|$V-reftype:68| Int) )
    (=>
      ( and (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (= |$V-reftype:68| (+ 1 |$knormal:18|)) (not |$knormal:3|) (|append_without_checking_1072$unknown:18| |$knormal:18| |$alpha-10:ys_1032| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_append_1059| |$alpha-14:xs'_1033| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_append_1059|) (|append_without_checking_1072$unknown:17| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|) true true true true true true true )
      (|append_without_checking_1072$unknown:18| |$V-reftype:68| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-3:x_DO_NOT_CARE_1078| Int) (|$alpha-5:x_DO_NOT_CARE_1080| Int) (|$alpha-7:set_flag_append_1059| Int) (|$alpha-9:s_append_ys_1055| Int) (|$alpha-10:ys_1032| Int) (|$alpha-8:s_append_xs_1054| Int) (|$alpha-6:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1079| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$V-reftype:66| |$alpha-10:ys_1032|) |$knormal:3| (|append_without_checking_1072$unknown:17| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|) true true true true true true true )
      (|append_without_checking_1072$unknown:18| |$V-reftype:66| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x_DO_NOT_CARE_1078| Int) (|$alpha-5:x_DO_NOT_CARE_1080| Int) (|$alpha-7:set_flag_append_1059| Int) (|$alpha-9:s_append_ys_1055| Int) (|$alpha-10:ys_1032| Int) (|$alpha-6:xs_1031| Int) (|$alpha-11:set_flag_append_1059| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-8:s_append_xs_1054| Int) (|$alpha-4:x_DO_NOT_CARE_1079| Int) (|$knormal:3| Bool) (|$alpha-14:xs'_1033| Int) )
    (=>
      ( and (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not |$knormal:3|) (|append_without_checking_1072$unknown:17| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|) true true true true true true true (= |$cond-alpha-rename:1| |$alpha-10:ys_1032|) (= |$cond-alpha-rename:2| |$alpha-10:ys_1032|) (= |$cond-alpha-rename:3| |$alpha-6:xs_1031|) (= |$cond-alpha-rename:4| |$alpha-11:set_flag_append_1059|) (= |$cond-alpha-rename:5| |$alpha-10:ys_1032|) (= |$cond-alpha-rename:6| |$alpha-6:xs_1031|) (= |$cond-alpha-rename:7| |$alpha-11:set_flag_append_1059|) )
      (|append_without_checking_1072$unknown:17| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$cond-alpha-rename:3| |$cond-alpha-rename:4| |$alpha-14:xs'_1033| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$cond-alpha-rename:7|)
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
(check-sat)

(get-model)

