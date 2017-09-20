(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec ack_1030 ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090 x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074 s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032 =
    let u =
       if prev_set_flag_ack_1074 then
                if ((0 * 1) + (0 * s_prev_ack_m_1072)) + (1 * s_prev_ack_n_1073)
                   > ((0 * 1) + (0 * m_1031)) + (1 * n_1032) &&
                   ((0 * 1) + (0 * m_1031)) + (1 * n_1032) >= 0 then
                  ()
                else
                  let u_3767 = fail ()
                  in
                    bot()
       else
         ()
           in
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
  
     let main_1033 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 u_1034 m_1035 n_1036 =
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

(declare-fun |ack_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |ack_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|ack_without_checking_1087| Int) )
    (=>
      ( and (|ack_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$knormal:17| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|ack_1030$unknown:8| (- |$cond-alpha-rename:33| 1) |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1 |$cond-alpha-rename:29| |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |$cond-alpha-rename:26|) (|ack_without_checking_1087$unknown:27| |$knormal:17| (- |$cond-alpha-rename:33| 1) |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1 |$cond-alpha-rename:29| |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:117| 0)) (not (= |$cond-alpha-rename:121| 0)) (not (= |$cond-alpha-rename:29| 0)) (not (= |$cond-alpha-rename:33| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:33|) (+ (+ 0 0) (- |$cond-alpha-rename:33| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:33| 1)) 0))) )
      (|ack_1030$unknown:18| |$knormal:17| (- |$cond-alpha-rename:33| 1) |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1 |$cond-alpha-rename:29| |$cond-alpha-rename:33| |$cond-alpha-rename:29| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$knormal:17| Int) )
    (=>
      ( and (|ack_1030$unknown:8| (- |$cond-alpha-rename:44| 1) |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1 |$cond-alpha-rename:40| |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:132| |$cond-alpha-rename:131| |$cond-alpha-rename:130| |$cond-alpha-rename:129| |$cond-alpha-rename:128| |$cond-alpha-rename:127| |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:44| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37|) (|ack_without_checking_1087$unknown:27| |$knormal:17| (- |$cond-alpha-rename:44| 1) |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1 |$cond-alpha-rename:40| |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1) (not (= 0 1)) (>= (+ (+ 0 0) (- |$cond-alpha-rename:44| 1)) 0) (> (+ (+ 0 0) |$cond-alpha-rename:44|) (+ (+ 0 0) (- |$cond-alpha-rename:44| 1))) (not (= |$cond-alpha-rename:128| 0)) (not (= |$cond-alpha-rename:132| 0)) (not (= |$cond-alpha-rename:40| 0)) (not (= |$cond-alpha-rename:44| 0)) )
      (|ack_1030$unknown:18| |$knormal:17| (- |$cond-alpha-rename:44| 1) |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1 |$cond-alpha-rename:40| |$cond-alpha-rename:44| |$cond-alpha-rename:40| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) (|$knormal:17| Int) )
    (=>
      ( and (|ack_1030$unknown:8| (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1 |$cond-alpha-rename:51| |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$cond-alpha-rename:48|) (|ack_without_checking_1087$unknown:27| |$knormal:17| (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1 |$cond-alpha-rename:51| |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1) (not (not (= 0 1))) (not (= |$cond-alpha-rename:139| 0)) (not (= |$cond-alpha-rename:143| 0)) (not (= |$cond-alpha-rename:51| 0)) (not (= |$cond-alpha-rename:55| 0)) )
      (|ack_1030$unknown:18| |$knormal:17| (- |$cond-alpha-rename:55| 1) |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1 |$cond-alpha-rename:51| |$cond-alpha-rename:55| |$cond-alpha-rename:51| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$cond-alpha-rename:59|) (|bot$unknown:29| |$knormal:37| 1) (|fail$unknown:31| |$knormal:39| 1) (not (= 0 1)) (not (= |$cond-alpha-rename:62| 0)) (not (= |$cond-alpha-rename:66| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:66|) (+ (+ 0 0) (- |$cond-alpha-rename:66| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:66| 1)) 0))) )
      (|ack_1030$unknown:8| (- |$cond-alpha-rename:66| 1) |$cond-alpha-rename:66| |$cond-alpha-rename:62| 1 |$cond-alpha-rename:62| |$cond-alpha-rename:66| |$cond-alpha-rename:62| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (not (= 0 1)) (>= (+ (+ 0 0) (- |$cond-alpha-rename:77| 1)) 0) (> (+ (+ 0 0) |$cond-alpha-rename:77|) (+ (+ 0 0) (- |$cond-alpha-rename:77| 1))) (not (= |$cond-alpha-rename:73| 0)) (not (= |$cond-alpha-rename:77| 0)) )
      (|ack_1030$unknown:8| (- |$cond-alpha-rename:77| 1) |$cond-alpha-rename:77| |$cond-alpha-rename:73| 1 |$cond-alpha-rename:73| |$cond-alpha-rename:77| |$cond-alpha-rename:73| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$cond-alpha-rename:96| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$cond-alpha-rename:92|) (not (not (= 0 1))) (not (= |$cond-alpha-rename:95| 0)) (not (= |$cond-alpha-rename:99| 0)) )
      (|ack_1030$unknown:8| (- |$cond-alpha-rename:99| 1) |$cond-alpha-rename:99| |$cond-alpha-rename:95| 1 |$cond-alpha-rename:95| |$cond-alpha-rename:99| |$cond-alpha-rename:95| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:59| Int) (|$knormal:76| Int) )
    (=>
      ( and (|ack_1030$unknown:18| |$knormal:59| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$knormal:59| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:27| |$knormal:76| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:59| Int) )
    (=>
      ( and (|ack_1030$unknown:18| |$knormal:59| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:26| |$knormal:59| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:93| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:27| |$knormal:93| 1 |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (= |$alpha-21:n_1032| 0) (not (= |$alpha-17:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:27| |$knormal:93| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (= |$alpha-17:m_1031| 0) )
      (|ack_without_checking_1087$unknown:27| (+ |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (= |$alpha-21:n_1032| 0) (not (= |$alpha-17:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:26| 1 |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:111| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:27| |$knormal:111| |$alpha-30:n_1036| 0 0 0 |$alpha-29:m_1035| 0 0 0) (> |$alpha-29:m_1035| 0) (> |$alpha-30:n_1036| 0) )
      (|main_1033$unknown:38| |$knormal:111| |$alpha-30:n_1036| |$alpha-29:m_1035| 1 0 0 0)
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
  (not (exists ( (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) )
    ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157| |$cond-alpha-rename:156| |$cond-alpha-rename:155|) (not (= 0 1)) (not (= |$cond-alpha-rename:158| 0)) (not (= |$cond-alpha-rename:162| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:162|) (+ (+ 0 0) (- |$cond-alpha-rename:162| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:162| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) )
    (=>
      ( and (> |$alpha-29:m_1035| 0) (> |$alpha-30:n_1036| 0) )
      (|ack_without_checking_1087$unknown:26| |$alpha-30:n_1036| 0 0 0 |$alpha-29:m_1035| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) )
    (=>
      ( and (not (and (> |$alpha-30:n_1036| 0) (> |$alpha-29:m_1035| 0))) )
      (|main_1033$unknown:38| 0 |$alpha-30:n_1036| |$alpha-29:m_1035| 1 0 0 0)
    )
  )
)
(check-sat)

(get-model)

