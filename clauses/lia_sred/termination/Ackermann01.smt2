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
    let u =
    if prev_set_flag_ack_1074 then
             if ((0 * 1) + (0 * s_prev_ack_m_1072)) + (1 * s_prev_ack_n_1073)
                > ((0 * 1) + (0 * m_1031)) + (1 * n_1032) &&
                ((0 * 1) + (0 * m_1031)) + (1 * n_1032) >= 0 then
               ()
             else
               let u_2812 = fail ()
               in
                 bot()
           else
             ()
               in
           ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090
             x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074
             s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032
  
  let main_1033 m_1035 n_1036 =
    let set_flag_ack_1075 = false in
    let s_ack_m_1070 = 0 in
    let  s_ack_n_1071 = 0 in
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

(declare-fun |ack_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |main_1033$unknown:24|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-17:m_1031| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$knormal:89| Int) (|$knormal:91| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0) (|bot$unknown:20| |$knormal:89| 1) (|fail$unknown:22| |$knormal:91| 1) (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (not (= 0 0)) (> |$alpha-17:m_1031| 0) (> |$alpha-21:n_1032| 0) (not (and (> (+ (+ 0 0) 0) (+ (+ 0 0) |$alpha-21:n_1032|)) (>= (+ (+ 0 0) |$alpha-21:n_1032|) 0))) )
      (|ack_1030$unknown:9| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m_1031| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0) (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (not (= 0 0)) (> |$alpha-17:m_1031| 0) (> |$alpha-21:n_1032| 0) (>= (+ (+ 0 0) |$alpha-21:n_1032|) 0) (> (+ (+ 0 0) 0) (+ (+ 0 0) |$alpha-21:n_1032|)) )
      (|ack_1030$unknown:9| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m_1031| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0) (|main_1033$unknown:24| |$alpha-21:n_1032| |$alpha-17:m_1031|) (> |$alpha-17:m_1031| 0) (> |$alpha-21:n_1032| 0) (not (not (= 0 0))) )
      (|ack_1030$unknown:9| |$knormal:69| |$alpha-21:n_1032| 0 0 0 |$alpha-17:m_1031| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$knormal:109| Int) )
    (=>
      ( and (|ack_1030$unknown:9| |$knormal:109| |$alpha-25:n_1036| 0 0 0 |$alpha-24:m_1035| 0 0 0) (|main_1033$unknown:24| |$alpha-25:n_1036| |$alpha-24:m_1035|) (> |$alpha-24:m_1035| 0) (> |$alpha-25:n_1036| 0) )
      (|main_1033$unknown:25| |$knormal:109| |$alpha-25:n_1036| |$alpha-24:m_1035|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:20| Int) (|$knormal:37| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:18| |$knormal:20| (- |$alpha-10:n_1032| 1) |$alpha-10:n_1032| |$alpha-6:m_1031| 1 |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| 1) (|ack_without_checking_1087$unknown:18| |$knormal:37| |$knormal:20| |$alpha-10:n_1032| |$alpha-6:m_1031| 1 (- |$alpha-6:m_1031| 1) |$alpha-10:n_1032| |$alpha-6:m_1031| 1) (not (= |$alpha-6:m_1031| 0)) (not (= |$alpha-10:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:18| |$knormal:37| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:54| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:18| |$knormal:54| 1 0 |$alpha-6:m_1031| 1 (- |$alpha-6:m_1031| 1) 0 |$alpha-6:m_1031| 1) (not (= |$alpha-6:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:18| |$knormal:54| 0 |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) )
    (=>
      ( and true )
      (|ack_without_checking_1087$unknown:18| (+ |$alpha-10:n_1032| 1) |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| 0 |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
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
  (not (exists ( (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:66| Int) )
    ( and (not (and (> (+ (+ 0 0) 0) (+ (+ 0 0) |$cond-alpha-rename:66|)) (>= (+ (+ 0 0) |$cond-alpha-rename:66|) 0))) (> |$cond-alpha-rename:66| 0) (> |$cond-alpha-rename:62| 0) (not (= 0 0)) (|main_1033$unknown:24| |$cond-alpha-rename:66| |$cond-alpha-rename:62|) )
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) )
    (=>
      ( and (|main_1033$unknown:24| |$alpha-25:n_1036| |$alpha-24:m_1035|) (not (and (> |$alpha-25:n_1036| 0) (> |$alpha-24:m_1035| 0))) )
      (|main_1033$unknown:25| 0 |$alpha-25:n_1036| |$alpha-24:m_1035|)
    )
  )
)
(check-sat)

(get-model)

