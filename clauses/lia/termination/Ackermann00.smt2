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
  
  let main m_1035 n_1036 =
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

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |ack_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
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

(declare-fun |ack_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (= |$V-reftype:61| |$knormal:69|) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:61| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (= |$V-reftype:63| |$knormal:69|) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:63| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|bot$unknown:20| |$knormal:71| |$knormal:70|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:73| Int) )
    (=>
      ( and (= |$knormal:72| 1) (= |$knormal:70| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:73| |$knormal:72|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:72| Int) )
    (=>
      ( and (= |$knormal:72| 1) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|fail$unknown:21| |$knormal:72|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:37| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:58| |$knormal:37|) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:37| |$knormal:20| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:58| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:26| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) (|$knormal:54| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:55| |$knormal:54|) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) (|ack_without_checking_1087$unknown:18| |$knormal:54| |$knormal:52| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) true true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:55| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:51| (+ |$alpha-10:n_1032| 1)) (not (= 0 |$knormal:3|)) true true true true true true true true )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:51| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1032| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$knormal:18| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-10:n_1032| 0)) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:47| |$knormal:2|) (|bot$unknown:20| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:20| |$V-reftype:47| |$alpha-1:$$tmp::1|)
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
    ( and (|fail$unknown:21| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:76|)) (and (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:75|)))) (= (not (= 0 |$knormal:75|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:74|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:76|)) )
      (|ack_1030$unknown:8| |$alpha-25:n_1036| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075| |$alpha-24:m_1035| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075|)
    )
  )
)
(check-sat)

(get-model)

(exit)

