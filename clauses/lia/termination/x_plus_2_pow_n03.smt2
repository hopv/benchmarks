(set-info :origin "Verification conditions for the caml program
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec c1_COEFFICIENT_1086 = 0
  let rec c0_COEFFICIENT_1085 = 0
  let succ_1030 set_flag_f_1181 s_f_n_1178 n_1031 = n_1031 + 1
  let g_1032 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 r_EXPARAM_1088 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 r_1033 set_flag_f_1181 s_f_n_1178 a_1034 =
    r_1033 set_flag_f_1181 s_f_n_1178
      (r_1033 set_flag_f_1181 s_f_n_1178 a_1034)
  let rec f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1036 =
    let set_flag_f_1181 = true
    in
    let s_f_n_1178 = n_1036
    in
      if n_1036 = 0 then
        succ_1030
      else
        g_1032 set_flag_f_1181 s_f_n_1178
          ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086)
          set_flag_f_1181 s_f_n_1178
          (f_without_checking_1189 set_flag_f_1181 s_f_n_1178 (n_1036 - 1))
  let rec f_1035 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036 =
    let u =if prev_set_flag_f_1180 then
             if (0 * 1) + (1 * s_prev_f_n_1179) > (0 * 1) + (1 * n_1036) &&
                (0 * 1) + (1 * n_1036) >= 0 then
               ()
             else
               let u_14295 = fail ()
               in
                 bot()
    else
      ()in
           f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036
  
  let main_1037 n_1038 x_1039 =
    let x_DO_NOT_CARE_1211 = false in
    let x_DO_NOT_CARE_1212 = 0 in
    let set_flag_f_1181 = false in
    let s_f_n_1178 = 0 in
    if n_1038 >= 0 && x_1039 >= 0 then
      f_1035 set_flag_f_1181 s_f_n_1178 n_1038 set_flag_f_1181 s_f_n_1178
        x_1039
    else
      0
")

(set-logic HORN)

(declare-fun |g_1032$unknown:23|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |g_1032$unknown:19|
  ( Int ) Bool
)

(declare-fun |g_1032$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:25|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:24|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:37|
  ( Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |g_1032$unknown:31|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:30|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:29|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:28|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:35|
  ( Int ) Bool
)

(declare-fun |main_1037$unknown:34|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |main_1037$unknown:32|
  ( Int ) Bool
)

(declare-fun |fail$unknown:17|
  ( Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:10|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:15|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:14|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:3|
  ( Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:71| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (= |$V-reftype:71| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:2| |$V-reftype:71| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:51| Bool) (|$knormal:54| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:10| Int) (|$knormal:55| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:13| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:55| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:24| Int) (|$V-reftype:12| Int) (|$knormal:54| Int) (|$knormal:51| Bool) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:51| Bool) (|$knormal:54| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:53| Int) (|$knormal:52| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$V-reftype:14| Int) (|$knormal:55| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:55| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:53| Int) (|$knormal:52| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$knormal:54| Int) (|$knormal:51| Bool) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:55| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:53| Int) (|$knormal:52| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:54| Int) (|$knormal:51| Bool) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:10| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:51| Bool) (|$knormal:54| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:55| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:11| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:55| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:53| Int) (|$knormal:52| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:54| Int) (|$knormal:51| Bool) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:53| |$knormal:52|) (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|f_without_checking_1189$unknown:12| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$alpha-26:u| Int) (|$V-reftype:10| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:51| Bool) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:13| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:u| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:13| |$V-reftype:10| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:51| Bool) (|$V-reftype:12| Int) (|$V-reftype:24| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:24| Int) (|$V-reftype:12| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$alpha-26:u| Int) (|$V-reftype:14| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$knormal:51| Bool) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:u| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:51| Bool) (|$V-reftype:29| Int) (|$V-reftype:28| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$alpha-26:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:6| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:55| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:54| Int) (|$knormal:51| Bool) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|fail$unknown:18| |$knormal:55| |$knormal:54|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:52| 1) (= |$knormal:54| 1) )
      (|bot$unknown:1| |$knormal:52|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:51| Bool) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-26:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:10| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$alpha-26:u| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:51| Bool) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:11| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$knormal:48| Int) (|$knormal:46| Bool) (|$knormal:43| Int) (|$knormal:40| Int) (|$knormal:51| Bool) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-26:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:47| Int) (|$knormal:50| Bool) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) |$knormal:51| (= |$alpha-26:u| 1) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) )
      (|f_without_checking_1189$unknown:12| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Bool) (|$knormal:47| Int) (|$knormal:45| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$knormal:41| Int) (|$knormal:51| Bool) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:46| Bool) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:54| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (not (= |$alpha-22:prev_set_flag_f_1180| 0)) (not |$knormal:51|) (= |$knormal:40| 0) (= |$knormal:41| |$alpha-23:s_prev_f_n_1179|) (= |$knormal:42| (+ |$knormal:40| |$knormal:41|)) (= |$knormal:43| 0) (= |$knormal:44| |$alpha-24:n_1036|) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:46| (> |$knormal:42| |$knormal:45|)) (= |$knormal:47| 0) (= |$knormal:48| |$alpha-24:n_1036|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:50| (>= |$knormal:49| 0)) (= |$knormal:51| (and |$knormal:46| |$knormal:50|)) (= |$knormal:54| 1) )
      (|fail$unknown:17| |$knormal:54|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:10| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:u| Int) (|$alpha-24:n_1036| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-22:prev_set_flag_f_1180| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:11| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (|f_1035$unknown:3| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:4| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) (= |$alpha-22:prev_set_flag_f_1180| 0) (= |$alpha-26:u| 1) )
      (|f_without_checking_1189$unknown:12| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$knormal:58| Bool) (|$alpha-27:n_1038| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:69| Int) (|$alpha-28:x_1039| Int) (|$alpha-31:set_flag_f_1181| Int) (|$V-reftype:105| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$knormal:56| Bool) (|$knormal:57| Bool) )
    (=>
      ( and (|f_1035$unknown:9| |$knormal:69| |$alpha-28:x_1039| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|) (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$V-reftype:105| |$knormal:69|) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|main_1037$unknown:34| |$V-reftype:105| |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$V-reftype:23| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:23| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) |$knormal:14| (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) )
      (|succ_1030$unknown:35| |$V-reftype:23|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:19| Int) (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$V-reftype:23| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:23| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:28| |$V-reftype:23| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$V-reftype:52| Int) (|$V-reftype:25| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:25| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:29| |$V-reftype:25| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:19| Int) (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$V-reftype:54| Int) (|$V-reftype:52| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$V-reftype:27| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:15| |$V-reftype:27| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:30| |$V-reftype:27| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-20:set_flag_f_1181| Int) (|$V-reftype:54| Int) (|$V-reftype:52| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$knormal:25| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:15| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|g_1032$unknown:31| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|f_without_checking_1189$unknown:16| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$V-reftype:25| Int) (|$V-reftype:64| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:25| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) |$knormal:14| (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) )
      (|succ_1030$unknown:36| |$V-reftype:25| |$V-reftype:64|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$V-reftype:27| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:15| |$V-reftype:27| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) |$knormal:14| (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) )
      (|succ_1030$unknown:37| |$V-reftype:27| |$V-reftype:66| |$V-reftype:64|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$V-reftype:69| Int) (|$V-reftype:68| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:13| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:14| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:15| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|succ_1030$unknown:38| |$V-reftype:69| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64|) |$knormal:14| (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) )
      (|f_without_checking_1189$unknown:16| |$V-reftype:69| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$knormal:25| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:19| Int) (|$V-reftype:26| Int) (|$V-reftype:29| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$V-reftype:28| Int) (|$knormal:21| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$knormal:21| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:24| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:25| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:26| |$V-reftype:28| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:27| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$knormal:25| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$V-reftype:43| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|g_1032$unknown:24| |$V-reftype:43| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|f_without_checking_1189$unknown:13| |$V-reftype:43| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$V-reftype:26| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:21| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$knormal:25| Int) (|$V-reftype:47| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|g_1032$unknown:24| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:25| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:26| |$V-reftype:47| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|f_without_checking_1189$unknown:15| |$V-reftype:47| |$V-reftype:26| |$knormal:21| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$knormal:25| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$knormal:21| Int) (|$alpha-20:set_flag_f_1181| Int) (|$V-reftype:45| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|g_1032$unknown:24| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (|g_1032$unknown:25| |$V-reftype:45| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|f_without_checking_1189$unknown:14| |$V-reftype:45| |$knormal:21| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:19| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:19| Int) (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:20| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:21| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:19| Int) (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:15| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:22| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) )
      (|g_1032$unknown:23| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) )
      (|f_without_checking_1189$unknown:10| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:set_flag_f_1181| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-15:set_flag_f_1181| Int) (|$knormal:14| Bool) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) )
      (|f_without_checking_1189$unknown:11| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$knormal:14| Bool) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-20:set_flag_f_1181| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:10| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:11| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (|f_without_checking_1189$unknown:12| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|) (not |$knormal:14|) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-20:set_flag_f_1181| 1) (= |$knormal:14| (= |$alpha-17:n_1036| 0)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) )
      (|f_without_checking_1189$unknown:12| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:17| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:74| Int) (|$alpha-12:set_flag_f_1181| Int) (|$knormal:7| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$knormal:13| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:13| |$knormal:7| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (= |$V-reftype:74| |$knormal:13|) )
      (|g_1032$unknown:31| |$V-reftype:74| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1181| Int) (|$alpha-14:a_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$knormal:7| Int) (|$alpha-13:s_f_n_1178| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:24| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:s_f_n_1178| Int) (|$knormal:7| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-14:a_1034| Int) (|$alpha-12:set_flag_f_1181| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:25| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1181| Int) (|$alpha-14:a_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$knormal:7| Int) (|$alpha-13:s_f_n_1178| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:26| |$knormal:7| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:s_f_n_1178| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-14:a_1034| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:24| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:a_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:25| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:s_f_n_1178| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-14:a_1034| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:20| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:21| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:22| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:23| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:28| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:29| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:30| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) )
      (|g_1032$unknown:26| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_n_1178| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$knormal:58| Bool) (|$alpha-28:x_1039| Int) (|$alpha-27:n_1038| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-31:set_flag_f_1181| Int) (|$knormal:56| Bool) (|$knormal:57| Bool) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:3| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Bool) (|$knormal:56| Bool) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:58| Bool) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-32:s_f_n_1178| Int) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:4| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_n_1178| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$knormal:58| Bool) (|$alpha-28:x_1039| Int) (|$alpha-27:n_1038| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-31:set_flag_f_1181| Int) (|$knormal:56| Bool) (|$knormal:57| Bool) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:5| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Bool) (|$knormal:56| Bool) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:58| Bool) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-32:s_f_n_1178| Int) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:6| |$alpha-31:set_flag_f_1181| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_n_1178| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$knormal:58| Bool) (|$alpha-28:x_1039| Int) (|$alpha-27:n_1038| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-31:set_flag_f_1181| Int) (|$knormal:56| Bool) (|$knormal:57| Bool) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:7| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Bool) (|$knormal:56| Bool) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:58| Bool) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-32:s_f_n_1178| Int) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) |$knormal:58| (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|f_1035$unknown:8| |$alpha-28:x_1039| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_n_1178| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$V-reftype:106| Int) (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:58| Bool) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-31:set_flag_f_1181| Int) (|$knormal:56| Bool) (|$knormal:57| Bool) )
    (=>
      ( and (|main_1037$unknown:32| |$alpha-27:n_1038|) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) (not |$knormal:58|) (= |$V-reftype:106| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-32:s_f_n_1178| 0) (= |$knormal:56| (>= |$alpha-27:n_1038| 0)) (= |$knormal:57| (>= |$alpha-28:x_1039| 0)) (= |$knormal:58| (and |$knormal:56| |$knormal:57|)) )
      (|main_1037$unknown:34| |$V-reftype:106| |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-4:s_f_n_1178| Int) (|$alpha-3:set_flag_f_1181| Int) (|$V-reftype:73| Int) )
    (=>
      ( and (|succ_1030$unknown:35| |$alpha-3:set_flag_f_1181|) (|succ_1030$unknown:36| |$alpha-4:s_f_n_1178| |$alpha-3:set_flag_f_1181|) (|succ_1030$unknown:37| |$alpha-5:n_1031| |$alpha-4:s_f_n_1178| |$alpha-3:set_flag_f_1181|) (= |$V-reftype:73| (+ |$alpha-5:n_1031| 1)) )
      (|succ_1030$unknown:38| |$V-reftype:73| |$alpha-5:n_1031| |$alpha-4:s_f_n_1178| |$alpha-3:set_flag_f_1181|)
    )
  )
)
(check-sat)

