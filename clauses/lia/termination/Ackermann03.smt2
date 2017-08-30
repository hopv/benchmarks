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
       let u = if prev_set_flag_ack_1074 then
                if ((0 * 1) + (0 * s_prev_ack_m_1072)) + (1 * s_prev_ack_n_1073)
                   > ((0 * 1) + (0 * m_1031)) + (1 * n_1032) &&
                   ((0 * 1) + (0 * m_1031)) + (1 * n_1032) >= 0 then
                  ()
                else
                  fail ()
              else
                ()
       in
              ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090
                x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074
                s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032
  
     let main_1033 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 u_1034  m_1035 n_1036 =
         if n_1036 > 0 && m_1035 > 0 then
           ack_1030 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 m_1035
             set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 n_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:19|
  ( Int ) Bool
)

(declare-fun |main_1033$unknown:29|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:28|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:27|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:26|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |main_1033$unknown:23|
  ( Int ) Bool
)

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:15|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:14|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:10|
  ( Int ) Bool
)

(declare-fun |ack_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:6|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:5|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |ack_1030$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |ack_1030$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$knormal:88| Int) (|$knormal:69| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:89| Int) (|$V-reftype:95| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$V-reftype:95| |$knormal:69|) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_1030$unknown:9| |$V-reftype:95| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:87| Bool) (|$knormal:69| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$V-reftype:93| Int) (|$alpha-22:u| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) (= |$V-reftype:93| |$knormal:69|) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_1030$unknown:9| |$V-reftype:93| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:69| Int) (|$V-reftype:97| Int) (|$alpha-22:u| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$V-reftype:97| |$knormal:69|) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_without_checking_1087$unknown:18| |$knormal:69| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_1030$unknown:9| |$V-reftype:97| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$knormal:88| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:89| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:89| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:88| Int) (|$knormal:87| Bool) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$knormal:88| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:89| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:89| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:88| Int) (|$knormal:87| Bool) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:13| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$knormal:88| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:89| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:89| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:88| Int) (|$knormal:87| Bool) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$knormal:88| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:89| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:89| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:88| Int) (|$knormal:87| Bool) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|fail$unknown:22| |$knormal:89| |$knormal:88|) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:17| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:87| Bool) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:u| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$alpha-22:u| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:87| Bool) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:87| Bool) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:u| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$alpha-22:u| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:87| Bool) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:13| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:87| Bool) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:u| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$alpha-22:u| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:87| Bool) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:85| Int) (|$knormal:84| Int) (|$knormal:82| Int) (|$knormal:80| Bool) (|$knormal:77| Int) (|$knormal:75| Int) (|$knormal:72| Int) (|$knormal:70| Int) (|$knormal:87| Bool) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$alpha-22:u| Int) (|$knormal:71| Int) (|$knormal:73| Int) (|$knormal:74| Int) (|$knormal:76| Int) (|$knormal:78| Int) (|$knormal:79| Int) (|$knormal:81| Int) (|$knormal:83| Int) (|$knormal:86| Bool) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$alpha-22:u| Int) (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$knormal:87| Bool) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) )
    (=>
      ( and (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (= |$alpha-22:u| 1) |$knormal:87| (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:17| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:86| Bool) (|$knormal:83| Int) (|$knormal:81| Int) (|$knormal:79| Int) (|$knormal:78| Int) (|$knormal:76| Int) (|$knormal:74| Int) (|$knormal:73| Int) (|$knormal:71| Int) (|$knormal:87| Bool) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:75| Int) (|$knormal:77| Int) (|$knormal:80| Bool) (|$knormal:82| Int) (|$knormal:84| Int) (|$knormal:85| Int) (|$knormal:88| Int) )
    (=>
      ( and (= |$knormal:88| 1) (= |$knormal:87| (and |$knormal:80| |$knormal:86|)) (= |$knormal:86| (>= |$knormal:85| 0)) (= |$knormal:85| (+ |$knormal:83| |$knormal:84|)) (= |$knormal:84| |$alpha-21:n_1032|) (= |$knormal:83| (+ |$knormal:81| |$knormal:82|)) (= |$knormal:82| 0) (= |$knormal:81| 0) (= |$knormal:80| (> |$knormal:74| |$knormal:79|)) (= |$knormal:79| (+ |$knormal:77| |$knormal:78|)) (= |$knormal:78| |$alpha-21:n_1032|) (= |$knormal:77| (+ |$knormal:75| |$knormal:76|)) (= |$knormal:76| 0) (= |$knormal:75| 0) (= |$knormal:74| (+ |$knormal:72| |$knormal:73|)) (= |$knormal:73| |$alpha-20:s_prev_ack_n_1073|) (= |$knormal:72| (+ |$knormal:70| |$knormal:71|)) (= |$knormal:71| 0) (= |$knormal:70| 0) (not |$knormal:87|) (not (= |$alpha-18:prev_set_flag_ack_1074| 0)) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|fail$unknown:21| |$knormal:88|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-22:u| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:u| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-22:u| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:u| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:13| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-22:u| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:u| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:n_1032| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-17:m_1031| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-22:u| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:u| Int) (|$alpha-20:s_prev_ack_n_1073| Int) (|$alpha-19:s_prev_ack_m_1072| Int) (|$alpha-16:x_DO_NOT_CARE_1091| Int) (|$alpha-15:x_DO_NOT_CARE_1090| Int) (|$alpha-14:x_DO_NOT_CARE_1089| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:prev_set_flag_ack_1074| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (= |$alpha-22:u| 1) (= |$alpha-18:prev_set_flag_ack_1074| 0) (|ack_1030$unknown:8| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:7| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:6| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:5| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:4| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:3| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:2| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|) (|ack_1030$unknown:1| |$alpha-14:x_DO_NOT_CARE_1089|) )
      (|ack_without_checking_1087$unknown:17| |$alpha-21:n_1032| |$alpha-20:s_prev_ack_n_1073| |$alpha-19:s_prev_ack_m_1072| |$alpha-18:prev_set_flag_ack_1074| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1091| |$alpha-15:x_DO_NOT_CARE_1090| |$alpha-14:x_DO_NOT_CARE_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Bool) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-25:s_ack_n_1071| Int) (|$knormal:107| Int) (|$alpha-28:n_1036| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$V-reftype:101| Int) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) (= |$V-reftype:101| |$knormal:107|) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) (|ack_1030$unknown:9| |$knormal:107| |$alpha-28:n_1036| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) )
      (|main_1033$unknown:29| |$V-reftype:101| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:37| Int) (|$knormal:18| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:26| Int) (|$knormal:3| Bool) (|$V-reftype:73| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:73| |$knormal:37|) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:37| |$knormal:20| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:73| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:20| Int) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:18| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:20| Int) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:18| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:13| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:20| Int) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:18| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:20| Int) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:18| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:20| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:26| (- |$alpha-6:m_1031| 1)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:18| |$knormal:20| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:20| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:26| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$knormal:4| Bool) (|$knormal:43| Int) (|$knormal:52| Int) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:54| Int) (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:70| |$knormal:54|) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:18| |$knormal:54| |$knormal:52| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:70| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$V-reftype:66| Int) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (= |$V-reftype:66| (+ |$alpha-10:n_1032| 1)) |$knormal:3| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:18| |$V-reftype:66| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Bool) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:43| Int) (|$knormal:3| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Bool) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:43| Int) (|$knormal:3| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:13| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Bool) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:43| Int) (|$knormal:3| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:4| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:3| Bool) (|$knormal:43| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:43| Int) (|$knormal:3| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:4| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:43| (- |$alpha-6:m_1031| 1)) (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:3|) |$knormal:4| (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:52| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$knormal:43| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:4| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:3| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:10| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:4| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:11| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:4| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:3| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:12| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:4| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:4| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:3| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:14| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:4| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:15| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:4| Bool) (|$alpha-9:s_ack_n_1071| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-6:m_1031| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-10:n_1032| Int) (|$knormal:3| Bool) (|$alpha-11:set_flag_ack_1075| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:16| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_ack_1075| Int) (|$knormal:3| Bool) (|$alpha-10:n_1032| Int) (|$alpha-7:set_flag_ack_1075| Int) (|$alpha-6:m_1031| Int) (|$alpha-3:x_DO_NOT_CARE_1093| Int) (|$alpha-4:x_DO_NOT_CARE_1094| Int) (|$alpha-5:x_DO_NOT_CARE_1095| Int) (|$alpha-8:s_ack_m_1070| Int) (|$alpha-9:s_ack_n_1071| Int) (|$knormal:4| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-10:n_1032| 0)) (= |$knormal:3| (= |$alpha-6:m_1031| 0)) (= |$knormal:18| (- |$alpha-10:n_1032| 1)) (= |$alpha-11:set_flag_ack_1075| 1) (not |$knormal:4|) (not |$knormal:3|) (|ack_without_checking_1087$unknown:17| |$alpha-10:n_1032| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:16| |$alpha-9:s_ack_n_1071| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:15| |$alpha-8:s_ack_m_1070| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:14| |$alpha-7:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:13| |$alpha-6:m_1031| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:12| |$alpha-5:x_DO_NOT_CARE_1095| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:11| |$alpha-4:x_DO_NOT_CARE_1094| |$alpha-3:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:10| |$alpha-3:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:17| |$knormal:18| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075| |$alpha-6:m_1031| |$alpha-10:n_1032| |$alpha-6:m_1031| |$alpha-11:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:62| |$knormal:2|) (|bot$unknown:20| |$knormal:2| |$knormal:1|) (|bot$unknown:19| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:20| |$V-reftype:62| |$alpha-1:$$tmp::1|)
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
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:21| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$knormal:92| Bool) (|$alpha-28:n_1036| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-26:u_1034| Int) (|$alpha-27:m_1035| Int) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:1| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:91| Bool) (|$knormal:90| Bool) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-28:n_1036| Int) (|$knormal:92| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:2| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Bool) (|$alpha-28:n_1036| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-26:u_1034| Int) (|$alpha-27:m_1035| Int) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:3| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:91| Bool) (|$knormal:90| Bool) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-28:n_1036| Int) (|$knormal:92| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:4| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Bool) (|$alpha-28:n_1036| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-26:u_1034| Int) (|$alpha-27:m_1035| Int) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:5| |$alpha-23:set_flag_ack_1075| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:91| Bool) (|$knormal:90| Bool) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-28:n_1036| Int) (|$knormal:92| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:6| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Bool) (|$alpha-28:n_1036| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-26:u_1034| Int) (|$alpha-27:m_1035| Int) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:7| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:91| Bool) (|$knormal:90| Bool) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-28:n_1036| Int) (|$knormal:92| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) |$knormal:92| (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|ack_1030$unknown:8| |$alpha-28:n_1036| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075| |$alpha-27:m_1035| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:102| Int) (|$alpha-27:m_1035| Int) (|$alpha-26:u_1034| Int) (|$alpha-23:set_flag_ack_1075| Int) (|$alpha-24:s_ack_m_1070| Int) (|$alpha-25:s_ack_n_1071| Int) (|$alpha-28:n_1036| Int) (|$knormal:92| Bool) (|$knormal:90| Bool) (|$knormal:91| Bool) )
    (=>
      ( and (= |$knormal:92| (and |$knormal:90| |$knormal:91|)) (= |$knormal:91| (> |$alpha-27:m_1035| 0)) (= |$knormal:90| (> |$alpha-28:n_1036| 0)) (= |$V-reftype:102| 0) (not |$knormal:92|) (|main_1033$unknown:28| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:27| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:26| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:25| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:24| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|) (|main_1033$unknown:23| |$alpha-23:set_flag_ack_1075|) )
      (|main_1033$unknown:29| |$V-reftype:102| |$alpha-28:n_1036| |$alpha-27:m_1035| |$alpha-26:u_1034| |$alpha-25:s_ack_n_1071| |$alpha-24:s_ack_m_1070| |$alpha-23:set_flag_ack_1075|)
    )
  )
)
(assert
  (forall ( (|$knormal:113| Int) (|$knormal:108| Int) (|$knormal:110| Int) (|$knormal:116| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:23| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Int) (|$knormal:110| Int) (|$knormal:108| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:24| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:113| Int) (|$knormal:108| Int) (|$knormal:110| Int) (|$knormal:116| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:25| |$knormal:113| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Int) (|$knormal:110| Int) (|$knormal:108| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:26| |$knormal:116| |$knormal:113| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$V-reftype:43| Int) (|$knormal:113| Int) (|$knormal:108| Int) (|$knormal:110| Int) (|$knormal:116| Int) (|$V-reftype:45| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:27| |$V-reftype:43| |$knormal:116| |$knormal:113| |$knormal:110| |$knormal:108|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$V-reftype:43| Int) (|$knormal:113| Int) (|$knormal:108| Int) (|$knormal:110| Int) (|$knormal:116| Int) (|$V-reftype:45| Int) )
    (=>
      ( and (= |$knormal:116| 1) (= |$knormal:113| 0) (= |$knormal:110| 0) (= |$knormal:108| 0) )
      (|main_1033$unknown:28| |$V-reftype:45| |$V-reftype:57| |$knormal:116| |$knormal:113| |$knormal:110| |$knormal:108|)
    )
  )
)
(check-sat)

(get-model)

