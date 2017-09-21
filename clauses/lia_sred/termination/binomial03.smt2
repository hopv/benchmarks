(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
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
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (k_1032 - 1)
             +
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 k_1032
  
     let rec bin_1030 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
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
                  let u_6000 = fail ()
                  in
                    bot()
               else () in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034 n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_1030 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 n_1035
             set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:29|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-17:n_1031| Int) (|$alpha-21:k_1032| Int) (|$knormal:107| Int) (|$knormal:109| Int) (|$knormal:56| Int) )
    (=>
      ( and (>= |$alpha-21:k_1032| 0) (>= |$alpha-17:n_1031| 0) (not (or (and (>= |$alpha-21:k_1032| 0) (> 0 |$alpha-21:k_1032|)) (and (>= 0 |$alpha-21:k_1032|) (and (>= (+ |$alpha-17:n_1031| (- |$alpha-21:k_1032|)) 0) (> (+ 0 (- 0)) (+ |$alpha-17:n_1031| (- |$alpha-21:k_1032|))))))) (not (= 0 0)) (|fail$unknown:22| |$knormal:109| 1) (|bot$unknown:20| |$knormal:107| 1) (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0) )
      (|bin_1030$unknown:9| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1031| Int) (|$alpha-21:k_1032| Int) (|$knormal:56| Int) )
    (=>
      ( and (or (and (>= |$alpha-21:k_1032| 0) (> 0 |$alpha-21:k_1032|)) (and (>= 0 |$alpha-21:k_1032|) (and (>= (+ |$alpha-17:n_1031| (- |$alpha-21:k_1032|)) 0) (> (+ 0 (- 0)) (+ |$alpha-17:n_1031| (- |$alpha-21:k_1032|)))))) (>= |$alpha-21:k_1032| 0) (>= |$alpha-17:n_1031| 0) (not (= 0 0)) (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0) )
      (|bin_1030$unknown:9| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1031| Int) (|$alpha-21:k_1032| Int) (|$knormal:56| Int) )
    (=>
      ( and (>= |$alpha-21:k_1032| 0) (>= |$alpha-17:n_1031| 0) (not (not (= 0 0))) (|bin_without_checking_1089$unknown:18| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0) )
      (|bin_1030$unknown:9| |$knormal:56| |$alpha-21:k_1032| 0 0 0 |$alpha-17:n_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1035| Int) (|$alpha-29:k_1036| Int) (|$knormal:127| Int) )
    (=>
      ( and (>= |$alpha-29:k_1036| 0) (>= |$alpha-28:n_1035| 0) (|bin_1030$unknown:9| |$knormal:127| |$alpha-29:k_1036| 0 0 0 |$alpha-28:n_1035| 0 0 0) )
      (|main_1033$unknown:29| |$knormal:127| |$alpha-29:k_1036| |$alpha-28:n_1035| 1 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-10:k_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-6:n_1031| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-9:s_bin_k_1073| Int) (|$knormal:23| Int) (|$knormal:40| Int) )
    (=>
      ( and (not (or (<= |$alpha-10:k_1032| 0) (>= |$alpha-10:k_1032| |$alpha-6:n_1031|))) (not (= |$alpha-6:n_1031| 0)) (|bin_without_checking_1089$unknown:18| |$knormal:40| |$alpha-10:k_1032| |$alpha-10:k_1032| |$alpha-6:n_1031| 1 (- |$alpha-6:n_1031| 1) |$alpha-10:k_1032| |$alpha-6:n_1031| 1) (|bin_without_checking_1089$unknown:18| |$knormal:23| (- |$alpha-10:k_1032| 1) |$alpha-10:k_1032| |$alpha-6:n_1031| 1 (- |$alpha-6:n_1031| 1) |$alpha-10:k_1032| |$alpha-6:n_1031| 1) )
      (|bin_without_checking_1089$unknown:18| (+ |$knormal:23| |$knormal:40|) |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:k_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-9:s_bin_k_1073| Int) )
    (=>
      ( and true )
      (|bin_without_checking_1089$unknown:18| 1 |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| 0 |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:k_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1096| Int) (|$alpha-5:x_DO_NOT_CARE_1097| Int) (|$alpha-6:n_1031| Int) (|$alpha-7:set_flag_bin_1077| Int) (|$alpha-8:s_bin_n_1072| Int) (|$alpha-9:s_bin_k_1073| Int) )
    (=>
      ( and (not (= |$alpha-6:n_1031| 0)) (or (<= |$alpha-10:k_1032| 0) (>= |$alpha-10:k_1032| |$alpha-6:n_1031|)) )
      (|bin_without_checking_1089$unknown:18| 1 |$alpha-10:k_1032| |$alpha-9:s_bin_k_1073| |$alpha-8:s_bin_n_1072| |$alpha-7:set_flag_bin_1077| |$alpha-6:n_1031| |$alpha-5:x_DO_NOT_CARE_1097| |$alpha-4:x_DO_NOT_CARE_1096| |$alpha-3:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:20| |$knormal:2| 1) )
      (|bot$unknown:20| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1035| Int) (|$alpha-29:k_1036| Int) )
    (=>
      ( and (not (and (>= |$alpha-28:n_1035| 0) (>= |$alpha-29:k_1036| 0))) )
      (|main_1033$unknown:29| 0 |$alpha-29:k_1036| |$alpha-28:n_1035| 1 0 0 0)
    )
  )
)
(check-sat)

(get-model)

