

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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|ack_without_checking_1087| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) true true true true true true true )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:52| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|ack_without_checking_1087| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:27| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:8| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |ack_without_checking_1087|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:104| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$V-reftype:104| |$knormal:17|) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:104| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (= |$V-reftype:101| |$knormal:17|) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:101| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$V-reftype:106| |$knormal:17|) (not (not (= 0 |$alpha-8:prev_set_flag_ack_1074|))) (|ack_1030$unknown:9| |$knormal:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:18| |$V-reftype:106| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:8| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:8| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_ack_n_1073| Int) (|$alpha-11:n_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1089| Int) (|$alpha-5:x_DO_NOT_CARE_1090| Int) (|$alpha-6:x_DO_NOT_CARE_1091| Int) (|$alpha-7:m_1031| Int) (|$alpha-8:prev_set_flag_ack_1074| Int) (|$alpha-9:s_prev_ack_m_1072| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| |$alpha-11:n_1032|) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| 0) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| |$alpha-11:n_1032|) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| 0) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| |$alpha-10:s_prev_ack_n_1073|) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| 0) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_ack_1074|)) (|ack_1030$unknown:17| |$alpha-11:n_1032| |$alpha-10:s_prev_ack_n_1073| |$alpha-9:s_prev_ack_m_1072| |$alpha-8:prev_set_flag_ack_1074| |$alpha-7:m_1031| |$alpha-6:x_DO_NOT_CARE_1091| |$alpha-5:x_DO_NOT_CARE_1090| |$alpha-4:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|fail$unknown:30| |$knormal:38|)
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
  (forall ( (|$V-reftype:116| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:116| |$knormal:76|) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$knormal:59| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:65| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:116| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) (|$knormal:59| Int) (|$knormal:65| Int) )
    (=>
      ( and (= |$knormal:65| (- |$alpha-17:m_1031| 1)) (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true (|ack_1030$unknown:18| |$knormal:59| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) )
      (|ack_without_checking_1087$unknown:26| |$knormal:59| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:65| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:113| |$knormal:93|) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:27| |$knormal:93| |$knormal:91| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:82| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:113| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (= |$V-reftype:109| (+ |$alpha-21:n_1032| 1)) (not (= 0 |$knormal:40|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:27| |$V-reftype:109| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:82| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:91| 1) (= |$knormal:82| (- |$alpha-17:m_1031| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:41|)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_without_checking_1087$unknown:26| |$knormal:91| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$knormal:82| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:set_flag_ack_1075| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:57| Int) )
    (=>
      ( and (= |$knormal:57| (- |$alpha-21:n_1032| 1)) (= (not (= 0 |$knormal:41|)) (= |$alpha-21:n_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:m_1031| 0)) (= |$alpha-22:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:41|))) (not (not (= 0 |$knormal:40|))) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) true true true true true true true )
      (|ack_1030$unknown:17| |$knormal:57| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| |$alpha-22:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:120| Int) (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:111| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (= |$V-reftype:120| |$knormal:111|) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true (|ack_without_checking_1087$unknown:27| |$knormal:111| |$alpha-30:n_1036| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075| |$alpha-29:m_1035| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) )
      (|main_1033$unknown:38| |$V-reftype:120| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
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
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (not (= 0 |$knormal:96|)) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      (|ack_without_checking_1087$unknown:26| |$alpha-30:n_1036| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075| |$alpha-29:m_1035| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:121| Int) (|$alpha-25:set_flag_ack_1075| Int) (|$alpha-26:s_ack_m_1070| Int) (|$alpha-27:s_ack_n_1071| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:m_1035| Int) (|$alpha-30:n_1036| Int) (|$knormal:94| Int) (|$knormal:95| Int) (|$knormal:96| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:96|)) (and (not (= 0 |$knormal:94|)) (not (= 0 |$knormal:95|)))) (= (not (= 0 |$knormal:95|)) (> |$alpha-29:m_1035| 0)) (= (not (= 0 |$knormal:94|)) (> |$alpha-30:n_1036| 0)) (= |$V-reftype:121| 0) (not (not (= 0 |$knormal:96|))) (|main_1033$unknown:37| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|) true true true true true )
      (|main_1033$unknown:38| |$V-reftype:121| |$alpha-30:n_1036| |$alpha-29:m_1035| |$alpha-28:u_1034| |$alpha-27:s_ack_n_1071| |$alpha-26:s_ack_m_1070| |$alpha-25:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:75| Int) (|$knormal:112| Int) (|$knormal:114| Int) (|$knormal:117| Int) (|$knormal:120| Int) )
    (=>
      ( and (= |$knormal:120| 1) (= |$knormal:117| 0) (= |$knormal:114| 0) (= |$knormal:112| 0) )
      (|main_1033$unknown:37| |$V-reftype:63| |$V-reftype:75| |$knormal:120| |$knormal:117| |$knormal:114| |$knormal:112|)
    )
  )
)
(check-sat)

(get-model)

(exit)

