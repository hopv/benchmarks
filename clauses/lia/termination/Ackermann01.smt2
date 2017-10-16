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
  
  let main m_1035 n_1036 =
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
  (forall ( (|$V-reftype:81| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$V-reftype:81| |$knormal:69|) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:81| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (= |$V-reftype:78| |$knormal:69|) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:78| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:83| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (= |$V-reftype:83| |$knormal:69|) (not (not (= 0 |$alpha-18:prev_set_flag_ack_1074|))) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|ack_1030$unknown:9| |$V-reftype:83| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:89| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|bot$unknown:20| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:88| Int) (|$knormal:90| Int) (|$knormal:91| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= |$knormal:88| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|fail$unknown:22| |$knormal:91| |$knormal:90|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$alpha-23:u| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-23:u| 1) (not (= 0 |$knormal:87|)) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:71| Int) (|$knormal:72| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:80| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:86| Int) (|$knormal:87| Int) (|$knormal:90| Int) )
    (=>
      ( and (= |$knormal:90| 1) (= (not (= 0 |$knormal:87|)) (and (not (= 0 |$knormal:80|)) (not (= 0 |$knormal:86|)))) (= (not (= 0 |$knormal:86|)) (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= (not (= 0 |$knormal:80|)) (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not (not (= 0 |$knormal:87|))) (not (= 0 |$alpha-18:prev_set_flag_ack_1074|)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) true true true true true true true )
      (|fail$unknown:21| |$knormal:90|)
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
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-24:m_1035| Int) (|$alpha-25:n_1036| Int) (|$alpha-26:set_flag_ack_1075| Int) (|$alpha-27:s_ack_m_1070| Int) (|$alpha-28:s_ack_n_1071| Int) (|$knormal:92| Int) (|$knormal:93| Int) (|$knormal:94| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:94|)) (and (not (= 0 |$knormal:92|)) (not (= 0 |$knormal:93|)))) (= (not (= 0 |$knormal:93|)) (> |$alpha-24:m_1035| 0)) (= (not (= 0 |$knormal:92|)) (> |$alpha-25:n_1036| 0)) (= |$alpha-28:s_ack_n_1071| 0) (= |$alpha-27:s_ack_m_1070| 0) (= |$alpha-26:set_flag_ack_1075| 0) (not (= 0 |$knormal:94|)) )
      (|ack_1030$unknown:8| |$alpha-25:n_1036| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075| |$alpha-24:m_1035| |$alpha-28:s_ack_n_1071| |$alpha-27:s_ack_m_1070| |$alpha-26:set_flag_ack_1075|)
    )
  )
)
(check-sat)

(get-model)

(exit)

