(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1086 = 0
     let rec c0_COEFFICIENT_1085 = 0
     let succ_1030 set_flag_f_1181 s_f_n_1178 n_1031 = n_1031 + 1
  
     let g_1032 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 r_EXPARAM_1088 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 r_1033 set_flag_f_1181 s_f_n_1178 a_1034 =
       r_1033 set_flag_f_1181 s_f_n_1178
         (r_1033 set_flag_f_1181 s_f_n_1178 a_1034)
  
     let rec f_1035 f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036 =
       let u = if prev_set_flag_f_1180 then
                if (0 * 1) + (1 * s_prev_f_n_1179) > (0 * 1) + (1 * n_1036) &&
                   (0 * 1) + (1 * n_1036) >= 0 then
                  ()
                else
                  let u_15618 = fail ()
                  in
                    bot()
       else ()
         in
              f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036
  
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
             (f_1035 f_without_checking_1189 set_flag_f_1181 s_f_n_1178 (n_1036 - 1))
  
     let main_1037 n_1038 x_1039 =
       let x_DO_NOT_CARE_1211 = false in
       let x_DO_NOT_CARE_1212 = 0 in
       let set_flag_f_1181 = false in
       let s_f_n_1178 = 0 in
       if n_1038 >= 0 && x_1039 >= 0 then
         f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1038
           set_flag_f_1181 s_f_n_1178 x_1039
       else
         0
")

(set-logic HORN)

(declare-fun |main_1037$unknown:41|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:23|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:32| 1) (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:6| |$cond-alpha-rename:5|) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29|) (|f_without_checking_1189$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|fail$unknown:25| |$knormal:34| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:31| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:9| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:32| 1) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:9| |$cond-alpha-rename:8|) (|fail$unknown:25| |$knormal:34| 1) (not (= 0 1)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) )
      (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:36| Int) )
    (=>
      ( and (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |$cond-alpha-rename:34|) (|f_without_checking_1189$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$cond-alpha-rename:36| 0)) )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) )
    (=>
      ( and (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39|) (|f_without_checking_1189$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (not (not (= 0 1))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$cond-alpha-rename:41| 0)) )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:18| |$cond-alpha-rename:17|) (not (= 0 1)) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) )
      (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:24| |$cond-alpha-rename:23|) (not (not (= 0 1))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) )
      (|f_1035$unknown:5| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:8| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (|f_1035$unknown:5| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1189|) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (not (= |$alpha-23:n_1036| 0)) )
      (|f_without_checking_1189$unknown:19| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1189|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|f_1035$unknown:16| |$cond-alpha-rename:116| |$cond-alpha-rename:117| |$V-reftype:68| |$V-reftype:66| (- |$cond-alpha-rename:109| 1) |$cond-alpha-rename:109| 1) (|f_1035$unknown:16| |$cond-alpha-rename:117| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| (- |$cond-alpha-rename:109| 1) |$cond-alpha-rename:109| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:109| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:109| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:109| |$cond-alpha-rename:108| |$cond-alpha-rename:107|) (not (= |$cond-alpha-rename:109| 0)) (not (= |$cond-alpha-rename:109| 0)) (not (= |$cond-alpha-rename:109| 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:109|) 0) (+ (* 0 |$cond-alpha-rename:109|) 0)) (= (+ (* 0 |$cond-alpha-rename:109|) 0) (+ (* 0 |$cond-alpha-rename:109|) 0)) )
      (|f_without_checking_1189$unknown:23| |$cond-alpha-rename:116| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$cond-alpha-rename:109| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (= |$alpha-23:n_1036| 0) )
      (|f_without_checking_1189$unknown:23| (+ |$V-reftype:82| 1) |$V-reftype:82| |$V-reftype:80| |$V-reftype:78| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$knormal:71| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:23| |$knormal:71| |$alpha-29:x_1039| 0 0 |$alpha-28:n_1038| 0 0) (|main_1037$unknown:40| |$alpha-29:x_1039| |$alpha-28:n_1038|) (>= |$alpha-29:x_1039| 0) (>= |$alpha-28:n_1038| 0) )
      (|main_1037$unknown:41| |$knormal:71| |$alpha-29:x_1039| |$alpha-28:n_1038|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) )
    ( and (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:45| |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (not (= 0 1)) (not (= |$cond-alpha-rename:45| 0)) (not (and (> (+ 0 |$cond-alpha-rename:45|) (+ 0 (- |$cond-alpha-rename:45| 1))) (>= (+ 0 (- |$cond-alpha-rename:45| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) )
    (=>
      ( and (|main_1037$unknown:40| |$alpha-29:x_1039| |$alpha-28:n_1038|) (>= |$alpha-29:x_1039| 0) (>= |$alpha-28:n_1038| 0) )
      (|f_without_checking_1189$unknown:19| |$alpha-28:n_1038| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) )
    (=>
      ( and (|main_1037$unknown:40| |$alpha-29:x_1039| |$alpha-28:n_1038|) (not (and (>= |$alpha-28:n_1038| 0) (>= |$alpha-29:x_1039| 0))) )
      (|main_1037$unknown:41| 0 |$alpha-29:x_1039| |$alpha-28:n_1038|)
    )
  )
)
(check-sat)

(get-model)

