(set-info :origin "Verification conditions for the caml program
  let rec bot _ = bot ()
  let fail _ = assert false
  
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
            (ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
              s_ack_n_1071 m_1031 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
              (n_1032 - 1))
  
  let rec ack_1030 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090 x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074 s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032 =
    let u =if prev_set_flag_ack_1074 then
      let u_1176 = fail ()
      in
      bot()
           else () in
      ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090
        x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074
        s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032
  
  let main_1033 m_1035 n_1036 =
    let set_flag_ack_1075 = false in
    let s_ack_m_1070 = 0 in
    let s_ack_n_1071 = 0 in
      if n_1036 > 0 && m_1035 > 0 then
        ack_1030 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 m_1035
          set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 n_1036
      else
        0
")

(set-logic HORN)

(declare-fun |main_1033$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:19|
  ( Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:61| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-17:m_1031| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$cond-alpha-rename:31| Bool) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Bool) (|$cond-alpha-rename:30| Bool) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (= |$cond-alpha-rename:31| (and |$cond-alpha-rename:29| |$cond-alpha-rename:30|)) (= |$cond-alpha-rename:30| (> |$alpha-17:m_1031| 0)) (= |$cond-alpha-rename:29| (> |$alpha-21:n_1032| 0)) (= |$cond-alpha-rename:28| 0) (= |$cond-alpha-rename:27| 0) (= |$cond-alpha-rename:26| 0) (= |$alpha-20:s_prev_ack_n_1073| |$cond-alpha-rename:28|) (= |$alpha-19:s_prev_ack_m_1072| |$cond-alpha-rename:27|) (= |$alpha-18:prev_set_flag_ack_1074| |$cond-alpha-rename:26|) (= |$alpha-16:x_DO_NOT_CARE_1091| |$cond-alpha-rename:28|) (= |$alpha-15:x_DO_NOT_CARE_1090| |$cond-alpha-rename:27|) (= |$alpha-14:x_DO_NOT_CARE_1089| |$cond-alpha-rename:26|) (= |$V-reftype:61| |$knormal:69|) |$cond-alpha-rename:31| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_1030$unknown:9| |$V-reftype:61| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$cond-alpha-rename:37| Bool) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-17:m_1031| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Bool) (|$cond-alpha-rename:36| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:37| (and |$cond-alpha-rename:35| |$cond-alpha-rename:36|)) (= |$cond-alpha-rename:36| (> |$alpha-17:m_1031| 0)) (= |$cond-alpha-rename:35| (> |$alpha-21:n_1032| 0)) (= |$cond-alpha-rename:34| 0) (= |$cond-alpha-rename:33| 0) (= |$cond-alpha-rename:32| 0) (= |$alpha-20:s_prev_ack_n_1073| |$cond-alpha-rename:34|) (= |$alpha-19:s_prev_ack_m_1072| |$cond-alpha-rename:33|) (= |$alpha-18:prev_set_flag_ack_1074| |$cond-alpha-rename:32|) (= |$alpha-16:x_DO_NOT_CARE_1091| |$cond-alpha-rename:34|) (= |$alpha-15:x_DO_NOT_CARE_1090| |$cond-alpha-rename:33|) (= |$alpha-14:x_DO_NOT_CARE_1089| |$cond-alpha-rename:32|) (= |$V-reftype:63| |$knormal:69|) (= |$alpha-18:prev_set_flag_ack_1074| 0) |$cond-alpha-rename:37| (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_1030$unknown:9| |$V-reftype:63| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:42| Bool) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:43| Bool) (|$alpha-17:m_1031| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (= |$cond-alpha-rename:43| (and |$cond-alpha-rename:41| |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:42| (> |$alpha-17:m_1031| 0)) (= |$cond-alpha-rename:41| (> |$alpha-21:n_1032| 0)) (= |$cond-alpha-rename:40| 0) (= |$cond-alpha-rename:39| 0) (= |$cond-alpha-rename:38| 0) (= |$alpha-20:s_prev_ack_n_1073| |$cond-alpha-rename:40|) (= |$alpha-19:s_prev_ack_m_1072| |$cond-alpha-rename:39|) (= |$alpha-18:prev_set_flag_ack_1074| |$cond-alpha-rename:38|) (= |$alpha-16:x_DO_NOT_CARE_1091| |$cond-alpha-rename:40|) (= |$alpha-15:x_DO_NOT_CARE_1090| |$cond-alpha-rename:39|) (= |$alpha-14:x_DO_NOT_CARE_1089| |$cond-alpha-rename:38|) |$cond-alpha-rename:43| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) )
      (|ack_without_checking_1087$unknown:17| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:70| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-18:prev_set_flag_ack_1074| Bool) (|$alpha-21:n_1032| Int) (|$knormal:73| Int) (|$knormal:72| Int) (|$alpha-17:m_1031| Int) (|$cond-alpha-rename:49| Bool) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:48| Bool) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (= |$cond-alpha-rename:49| (and |$cond-alpha-rename:47| |$cond-alpha-rename:48|)) (= |$cond-alpha-rename:48| (> |$alpha-17:m_1031| 0)) (= |$cond-alpha-rename:47| (> |$alpha-21:n_1032| 0)) (= |$cond-alpha-rename:46| 0) (= |$cond-alpha-rename:45| 0) (= |$cond-alpha-rename:44| 0) (= |$alpha-20:s_prev_ack_n_1073| |$cond-alpha-rename:46|) (= |$alpha-19:s_prev_ack_m_1072| |$cond-alpha-rename:45|) (= |$alpha-18:prev_set_flag_ack_1074| (not (= |$cond-alpha-rename:44| 0))) (= |$alpha-16:x_DO_NOT_CARE_1091| |$cond-alpha-rename:46|) (= |$alpha-15:x_DO_NOT_CARE_1090| |$cond-alpha-rename:45|) (= |$alpha-14:x_DO_NOT_CARE_1089| |$cond-alpha-rename:44|) |$cond-alpha-rename:49| |$alpha-18:prev_set_flag_ack_1074| (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (|fail$unknown:22| |$knormal:73| |$knormal:72|) )
      (|bot$unknown:19| |$knormal:70|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:60| Bool) (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:56| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:61| Bool) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) )
    (=>
      ( and (= |$cond-alpha-rename:61| (and |$cond-alpha-rename:59| |$cond-alpha-rename:60|)) (= |$cond-alpha-rename:60| (> |$alpha-17:m_1031| 0)) (= |$cond-alpha-rename:59| (> |$alpha-21:n_1032| 0)) (= |$cond-alpha-rename:58| 0) (= |$cond-alpha-rename:57| 0) (= |$cond-alpha-rename:56| 0) (= |$alpha-20:s_prev_ack_n_1073| |$cond-alpha-rename:58|) (= |$alpha-19:s_prev_ack_m_1072| |$cond-alpha-rename:57|) (= |$alpha-18:prev_set_flag_ack_1074| |$cond-alpha-rename:56|) (= |$alpha-16:x_DO_NOT_CARE_1091| |$cond-alpha-rename:58|) (= |$alpha-15:x_DO_NOT_CARE_1090| |$cond-alpha-rename:57|) (= |$alpha-14:x_DO_NOT_CARE_1089| |$cond-alpha-rename:56|) (= |$alpha-18:prev_set_flag_ack_1074| 0) |$cond-alpha-rename:61| (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) )
      (|ack_without_checking_1087$unknown:17| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:91| Int) (|$alpha-25:n_1036| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-24:m_1035| Int) (|$knormal:76| Bool) (|$knormal:74| Bool) (|$knormal:75| Bool) )
    (=>
      ( and (= |$knormal:76| (and |$knormal:74| |$knormal:75|)) (= |$knormal:75| (> |$alpha-24:m_1035| 0)) (= |$knormal:74| (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (= |$V-reftype:70| |$knormal:91|) |$knormal:76| (|main_1033$unknown:24| |$alpha-25:n_1036| |$alpha-24:m_1035|) true (|ack_1030$unknown:9| |$knormal:91| |$alpha-25:n_1036| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075| |$alpha-24:m_1035| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075|) )
      (|main_1033$unknown:25| |$V-reftype:70| |$alpha-25:n_1036| |$alpha-24:m_1035|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:37| Int) (|$knormal:18| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-10:n_1032| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-6:m_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:26| Int) (|$knormal:3| Bool) (|$V-reftype:58| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:58| |$knormal:37|) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:37| |$knormal:20| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:58| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-10:n_1032| Int) (|$alpha-6:m_1031| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$knormal:20| Int) (|$knormal:4| Bool) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true (= |$cond-alpha-rename:1| |$alpha-10:n_1032|) (= |$cond-alpha-rename:2| |$alpha-6:m_1031|) (= |$cond-alpha-rename:3| |$alpha-11:set_flag_ack_1075|) (= |$cond-alpha-rename:4| |$alpha-10:n_1032|) (= |$cond-alpha-rename:5| |$alpha-6:m_1031|) (= |$cond-alpha-rename:6| |$alpha-11:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:20| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$cond-alpha-rename:3| |$knormal:26| |$cond-alpha-rename:4| |$cond-alpha-rename:5| |$cond-alpha-rename:6|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$knormal:4| Bool) (|$knormal:43| Int) (|$knormal:52| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-10:n_1032| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-6:m_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$knormal:54| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:55| |$knormal:54|) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:18| |$knormal:54| |$knormal:52| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:55| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-10:n_1032| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-6:m_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$V-reftype:51| (+ |$alpha-10:n_1032| 1)) |$knormal:3| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:51| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:43| Int) (|$knormal:3| Bool) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-10:n_1032| Int) (|$alpha-6:m_1031| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true (= |$cond-alpha-rename:7| |$alpha-10:n_1032|) (= |$cond-alpha-rename:8| |$alpha-6:m_1031|) (= |$cond-alpha-rename:9| |$alpha-11:set_flag_ack_1075|) (= |$cond-alpha-rename:10| |$alpha-10:n_1032|) (= |$cond-alpha-rename:11| |$alpha-6:m_1031|) (= |$cond-alpha-rename:12| |$alpha-11:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:52| |$cond-alpha-rename:7| |$cond-alpha-rename:8| |$cond-alpha-rename:9| |$knormal:43| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-8:s_ack_m_1070| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-10:n_1032| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$knormal:4| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) true true true true true true true (= |$cond-alpha-rename:13| |$alpha-10:n_1032|) (= |$cond-alpha-rename:14| |$alpha-6:m_1031|) (= |$cond-alpha-rename:15| |$alpha-11:set_flag_ack_1075|) (= |$cond-alpha-rename:16| |$alpha-6:m_1031|) (= |$cond-alpha-rename:17| |$alpha-10:n_1032|) (= |$cond-alpha-rename:18| |$alpha-6:m_1031|) (= |$cond-alpha-rename:19| |$alpha-11:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:18| |$cond-alpha-rename:13| |$cond-alpha-rename:14| |$cond-alpha-rename:15| |$cond-alpha-rename:16| |$cond-alpha-rename:17| |$cond-alpha-rename:18| |$cond-alpha-rename:19|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:47| |$knormal:2|) (|bot$unknown:20| |$knormal:2| |$knormal:1|) (|bot$unknown:19| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:20| |$V-reftype:47| |$alpha-1:$$tmp::1|)
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
(assert
  (not (exists ( (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:76| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:72| Bool) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:81| Bool) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) )
    ( and (= |$cond-alpha-rename:81| (and |$cond-alpha-rename:79| |$cond-alpha-rename:80|)) (= |$cond-alpha-rename:80| (> |$cond-alpha-rename:71| 0)) (= |$cond-alpha-rename:79| (> |$cond-alpha-rename:75| 0)) (= |$cond-alpha-rename:78| 0) (= |$cond-alpha-rename:77| 0) (= |$cond-alpha-rename:76| 0) (= |$cond-alpha-rename:74| |$cond-alpha-rename:78|) (= |$cond-alpha-rename:73| |$cond-alpha-rename:77|) (= |$cond-alpha-rename:72| (not (= |$cond-alpha-rename:76| 0))) (= |$cond-alpha-rename:70| |$cond-alpha-rename:78|) (= |$cond-alpha-rename:69| |$cond-alpha-rename:77|) (= |$cond-alpha-rename:68| |$cond-alpha-rename:76|) (= |$alpha-2:$$tmp::2| 1) |$cond-alpha-rename:81| |$cond-alpha-rename:72| (|main_1033$unknown:24| |$cond-alpha-rename:75| |$cond-alpha-rename:71|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$knormal:76| Bool) (|$knormal:74| Bool) (|$knormal:75| Bool) )
    (=>
      ( and (= |$knormal:76| (and |$knormal:74| |$knormal:75|)) (= |$knormal:75| (> |$alpha-24:m_1035| 0)) (= |$knormal:74| (> |$alpha-25:n_1036| 0)) (= |$V-reftype:71| 0) (not |$knormal:76|) (|main_1033$unknown:24| |$alpha-25:n_1036| |$alpha-24:m_1035|) true )
      (|main_1033$unknown:25| |$V-reftype:71| |$alpha-25:n_1036| |$alpha-24:m_1035|)
    )
  )
)
(check-sat)

(get-model)

