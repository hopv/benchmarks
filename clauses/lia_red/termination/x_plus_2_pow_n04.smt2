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

(declare-fun |main_1037$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:19|
  ( Int Int Int ) Bool
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
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:176| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:174| 1) (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (|fail$unknown:25| |$cond-alpha-rename:176| 1) (not (= 0 1)) (not (= |$V-reftype:34| 0)) (not (and (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0))) (not (= |$alpha-23:n_1036| 0)) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:178| |$cond-alpha-rename:177|) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (>= (+ 0 (- |$V-reftype:34| 1)) 0) (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (not (= 0 1)) (not (= |$V-reftype:34| 0)) (not (= |$alpha-23:n_1036| 0)) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:193| |$cond-alpha-rename:192|) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (not (= |$V-reftype:34| 0)) (not (= |$alpha-23:n_1036| 0)) (not (not (= 0 1))) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:957| Int) (|$cond-alpha-rename:959| Int) (|$cond-alpha-rename:960| Int) )
    ( and (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:957| |$cond-alpha-rename:960| |$cond-alpha-rename:959|) (not (= 0 1)) (not (= |$cond-alpha-rename:957| 0)) (not (and (> (+ 0 |$cond-alpha-rename:957|) (+ 0 (- |$cond-alpha-rename:957| 1))) (>= (+ 0 (- |$cond-alpha-rename:957| 1)) 0))) )
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
(check-sat)

(get-model)

