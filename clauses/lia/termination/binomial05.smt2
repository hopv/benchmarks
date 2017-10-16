(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec bin_1030 bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
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
                  let u_9550 = fail ()
                  in
                    bot()
               else
                 ()
                   in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
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
             bin_1030 bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (n_1031 - 1)
               set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (k_1032 - 1)
             +
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034  n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073
             n_1035 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:37|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:30|
  ( Int ) Bool
)

(declare-fun |bin_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bin_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) true true true true true true true )
      (|bin_without_checking_1089$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:52| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:27| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:8| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) true true true true true true true )
      (|bin_1030$unknown:9| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:135| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$V-reftype:135| |$knormal:17|) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:135| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:132| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (= |$V-reftype:132| |$knormal:17|) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:132| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:137| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$V-reftype:137| |$knormal:17|) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:137| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| (- |$alpha-11:k_1032|)) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| |$alpha-7:n_1031|) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| (- |$alpha-11:k_1032|)) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| |$alpha-7:n_1031|) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| |$alpha-11:k_1032|) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| 0) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| 0) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:k_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:k_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_bin_k_1075|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|fail$unknown:30| |$knormal:69|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:148| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:110| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:148| (+ |$knormal:93| |$knormal:110|)) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:27| |$knormal:110| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:100| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:148| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:100| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$knormal:100| (- |$alpha-17:n_1031| 1)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:93| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:100| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:140| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:140| 1) (not (= 0 |$knormal:71|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:140| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:144| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:144| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:74|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:144| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| (- |$alpha-21:k_1032| 1)) (= |$knormal:82| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:74|)) (or (not (= 0 |$knormal:72|)) (not (= 0 |$knormal:73|)))) (= (not (= 0 |$knormal:73|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:72|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:74|))) (not (not (= 0 |$knormal:71|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_1030$unknown:17| |$knormal:91| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:82| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) (|$knormal:129| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (= |$V-reftype:152| |$knormal:129|) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true (|bin_without_checking_1089$unknown:27| |$knormal:129| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) )
      (|main_1033$unknown:38| |$V-reftype:152| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:80| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:80| |$knormal:2|) (|bot$unknown:29| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:29| |$V-reftype:80| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
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
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:114|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:153| Int) (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:112| Int) (|$knormal:113| Int) (|$knormal:114| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:114|)) (and (not (= 0 |$knormal:112|)) (not (= 0 |$knormal:113|)))) (= (not (= 0 |$knormal:113|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:112|)) (>= |$alpha-29:n_1035| 0)) (= |$V-reftype:153| 0) (not (not (= 0 |$knormal:114|))) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      (|main_1033$unknown:38| |$V-reftype:153| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:75| Int) (|$knormal:130| Int) (|$knormal:132| Int) (|$knormal:135| Int) (|$knormal:138| Int) )
    (=>
      ( and (= |$knormal:138| 1) (= |$knormal:135| 0) (= |$knormal:132| 0) (= |$knormal:130| 0) )
      (|main_1033$unknown:37| |$V-reftype:63| |$V-reftype:75| |$knormal:138| |$knormal:135| |$knormal:132| |$knormal:130|)
    )
  )
)
(check-sat)

(get-model)

(exit)

