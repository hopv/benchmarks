(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec ack_1030 ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090 x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074 s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032 =
       let u =if prev_set_flag_ack_1074 then
                if ((0 * 1) + (1 * s_prev_ack_m_1072)) + (0 * s_prev_ack_n_1073)
                   > ((0 * 1) + (1 * m_1031)) + (0 * n_1032) &&
                   ((0 * 1) + (1 * m_1031)) + (0 * n_1032) >= 0 ||
                   ((0 * 1) + (1 * s_prev_ack_m_1072)) + (0 * s_prev_ack_n_1073)
                   >= ((0 * 1) + (1 * m_1031)) + (0 * n_1032) &&
                   (((0 * 1) + (0 * s_prev_ack_m_1072)) + (1 * s_prev_ack_n_1073)
                    > ((0 * 1) + (0 * m_1031)) + (1 * n_1032) &&
                    ((0 * 1) + (0 * m_1031)) + (1 * n_1032) >= 0) then
                  ()
                else
                  let u_12272 = fail ()
                  in
                    bot()
              else () in
              ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090
                x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074
                s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032
  
     let rec ack_without_checking_1087 x_DO_NOT_CARE_1093 x_DO_NOT_CARE_1094 x_DO_NOT_CARE_1095 m_1031 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 n_1032 =
       let set_flag_ack_1075 = true
       in
       let s_ack_n_1071 = n_1032
       in
       let s_ack_m_1070 = m_1031
       in
         if m_1031 = 0 then
           n_1032 + 1
         else
           if n_1032 = 0 then
             ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071 (m_1031 - 1) set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071 1
           else
             ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071 (m_1031 - 1) set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071
               (ack_1030 ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 m_1031
                 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 (n_1032 - 1))
  
     let main_1033 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 u_1034
        m_1035
        n_1036
       =
         if n_1036 > 0 && m_1035 > 0 then
           ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
             m_1035 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 n_1036
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

(declare-fun |ack_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |ack_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|ack_without_checking_1087| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) true true true true true true true )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:52| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|ack_without_checking_1087| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:27| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:8| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:135| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$V-reftype:135| |$knormal:17|) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:135| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:132| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (= |$V-reftype:132| |$knormal:17|) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:132| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:137| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$V-reftype:137| |$knormal:17|) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:137| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|bot$unknown:29| |$knormal:68| |$knormal:67|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:8| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:67| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:67| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:70| |$knormal:69|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:66|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:8| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:65| Int) (|$knormal:66| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= (not (= 0 |$knormal:66|)) (or (not (= 0 |$knormal:35|)) (not (= 0 |$knormal:65|)))) (= (not (= 0 |$knormal:65|)) (and (not (= 0 |$knormal:46|)) (not (= 0 |$knormal:64|)))) (= (not (= 0 |$knormal:64|)) (and (not (= 0 |$knormal:57|)) (not (= 0 |$knormal:63|)))) (= (not (= 0 |$knormal:63|)) (>= |$knormal:62| 0)) (= |$knormal:62| (+ |$knormal:60| |$knormal:61|)) (= |$knormal:61| |$alpha-11:n_1032|) (= |$knormal:60| (+ |$knormal:58| |$knormal:59|)) (= |$knormal:59| 0) (= |$knormal:58| 0) (= (not (= 0 |$knormal:57|)) (> |$knormal:51| |$knormal:56|)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| |$alpha-11:n_1032|) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| 0) (= |$knormal:52| 0) (= |$knormal:51| (+ |$knormal:49| |$knormal:50|)) (= |$knormal:50| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:49| (+ |$knormal:47| |$knormal:48|)) (= |$knormal:48| 0) (= |$knormal:47| 0) (= (not (= 0 |$knormal:46|)) (>= |$knormal:40| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| |$alpha-7:m_1031|) (= |$knormal:41| 0) (= |$knormal:40| (+ |$knormal:38| |$knormal:39|)) (= |$knormal:39| 0) (= |$knormal:38| (+ |$knormal:36| |$knormal:37|)) (= |$knormal:37| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:36| 0) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| 0) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:m_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:m_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| 0) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_ack_m_1072|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:66|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|fail$unknown:30| |$knormal:69|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:8| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:147| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:107| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:147| |$knormal:107|) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:27| |$knormal:107| |$knormal:90| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:96| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:147| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:96| Int) )
    (=>
      ( and (= |$knormal:96| (- |$alpha-17:m_1031| 1)) (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:90| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:26| |$knormal:90| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:96| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:144| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:124| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:144| |$knormal:124|) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:27| |$knormal:124| |$knormal:122| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:113| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:144| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:140| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:140| (+ |$alpha-21:n_1032| 1)) (not (= 0 |$knormal:71|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:140| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:113| Int) (|$knormal:122| Int) (|$knormal:71| Int) (|$knormal:72| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$knormal:122| 1) (= |$knormal:113| (- |$alpha-17:m_1031| 1)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:71|))) (not (= 0 |$knormal:72|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:26| |$knormal:122| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:113| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:72|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:71|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:72|))) (not (not (= 0 |$knormal:71|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_1030$unknown:17| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:151| Int) (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) (|$knormal:142| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (= |$V-reftype:151| |$knormal:142|) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true (|ack_without_checking_1087$unknown:27| |$knormal:142| |$alpha-30:n_1036| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075| |$alpha-29:m_1035| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) )
      (|main_1033$unknown:38| |$V-reftype:151| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
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
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:127|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      (|ack_without_checking_1087$unknown:26| |$alpha-30:n_1036| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075| |$alpha-29:m_1035| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:125| Int) (|$knormal:126| Int) (|$knormal:127| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:127|)) (and (not (= 0 |$knormal:125|)) (not (= 0 |$knormal:126|)))) (= (not (= 0 |$knormal:126|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:125|)) (> |$alpha-30:n_1036| 0)) (= |$V-reftype:152| 0) (not (not (= 0 |$knormal:127|))) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      (|main_1033$unknown:38| |$V-reftype:152| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:75| Int) (|$knormal:143| Int) (|$knormal:145| Int) (|$knormal:148| Int) (|$knormal:151| Int) )
    (=>
      ( and (= |$knormal:151| 1) (= |$knormal:148| 0) (= |$knormal:145| 0) (= |$knormal:143| 0) )
      (|main_1033$unknown:37| |$V-reftype:63| |$V-reftype:75| |$knormal:151| |$knormal:148| |$knormal:145| |$knormal:143|)
    )
  )
)
(check-sat)

(get-model)

(exit)

