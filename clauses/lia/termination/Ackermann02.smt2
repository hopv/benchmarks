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

(declare-fun |ack_without_checking_1087$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:921| Int) (|$cond-alpha-rename:944| Int) (|$cond-alpha-rename:946| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:921|) (+ (+ 0 0) (- |$cond-alpha-rename:921| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:921| 1)) 0))) (not (= |$cond-alpha-rename:921| 0)) (not (= |$cond-alpha-rename:917| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:946| 1) (|bot$unknown:29| |$cond-alpha-rename:944| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:921| |$cond-alpha-rename:920| |$cond-alpha-rename:919| |$cond-alpha-rename:918| |$cond-alpha-rename:917| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:921| 1) |$cond-alpha-rename:921| |$cond-alpha-rename:917| 1 |$cond-alpha-rename:917| |$cond-alpha-rename:921| |$cond-alpha-rename:917| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:947| Int) (|$cond-alpha-rename:948| Int) (|$cond-alpha-rename:949| Int) (|$cond-alpha-rename:950| Int) (|$cond-alpha-rename:951| Int) (|$cond-alpha-rename:952| Int) (|$cond-alpha-rename:953| Int) (|$cond-alpha-rename:954| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:954| 0)) (not (= |$cond-alpha-rename:950| 0)) (> (+ (+ 0 0) |$cond-alpha-rename:954|) (+ (+ 0 0) (- |$cond-alpha-rename:954| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:954| 1)) 0) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:954| |$cond-alpha-rename:953| |$cond-alpha-rename:952| |$cond-alpha-rename:951| |$cond-alpha-rename:950| |$cond-alpha-rename:949| |$cond-alpha-rename:948| |$cond-alpha-rename:947|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:954| 1) |$cond-alpha-rename:954| |$cond-alpha-rename:950| 1 |$cond-alpha-rename:950| |$cond-alpha-rename:954| |$cond-alpha-rename:950| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:976| Int) (|$cond-alpha-rename:977| Int) (|$cond-alpha-rename:978| Int) (|$cond-alpha-rename:979| Int) (|$cond-alpha-rename:980| Int) (|$cond-alpha-rename:981| Int) (|$cond-alpha-rename:982| Int) (|$cond-alpha-rename:983| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:983| 0)) (not (= |$cond-alpha-rename:979| 0)) (not (not (= 0 1))) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:983| |$cond-alpha-rename:982| |$cond-alpha-rename:981| |$cond-alpha-rename:980| |$cond-alpha-rename:979| |$cond-alpha-rename:978| |$cond-alpha-rename:977| |$cond-alpha-rename:976|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:983| 1) |$cond-alpha-rename:983| |$cond-alpha-rename:979| 1 |$cond-alpha-rename:979| |$cond-alpha-rename:983| |$cond-alpha-rename:979| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1017| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:640| Int) (|$cond-alpha-rename:641| Int) (|$cond-alpha-rename:642| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:987| Int) (|$cond-alpha-rename:988| Int) (|$cond-alpha-rename:989| Int) (|$cond-alpha-rename:990| Int) (|$cond-alpha-rename:991| Int) (|$cond-alpha-rename:992| Int) (|$cond-alpha-rename:993| Int) (|$cond-alpha-rename:994| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:994| 1) (- |$cond-alpha-rename:994| 1)) (= (- |$cond-alpha-rename:994| 1) (- |$cond-alpha-rename:994| 1)) (= 1 1) (= 1 1) (not (and (>= (- |$cond-alpha-rename:994| 1) 0) (> |$cond-alpha-rename:994| (- |$cond-alpha-rename:994| 1)))) (not (= |$cond-alpha-rename:658| 0)) (not (= |$cond-alpha-rename:654| 0)) (not (= |$cond-alpha-rename:994| 0)) (not (= |$cond-alpha-rename:990| 0)) (not (= |$cond-alpha-rename:994| 0)) (not (= |$cond-alpha-rename:990| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:994|) (+ (+ 0 0) (- |$cond-alpha-rename:994| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:994| 1)) 0))) (|fail$unknown:31| |$cond-alpha-rename:684| 1) (|fail$unknown:31| |$cond-alpha-rename:1019| 1) (|bot$unknown:29| |$cond-alpha-rename:682| 1) (|bot$unknown:29| |$cond-alpha-rename:1017| 1) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:662| |$cond-alpha-rename:994| |$cond-alpha-rename:990| 1 (- |$cond-alpha-rename:990| 1) |$cond-alpha-rename:994| |$cond-alpha-rename:990| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:662| (- |$cond-alpha-rename:994| 1) |$cond-alpha-rename:994| |$cond-alpha-rename:990| 1 |$cond-alpha-rename:990| |$cond-alpha-rename:994| |$cond-alpha-rename:990| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:994| |$cond-alpha-rename:993| |$cond-alpha-rename:992| |$cond-alpha-rename:991| |$cond-alpha-rename:990| |$cond-alpha-rename:989| |$cond-alpha-rename:988| |$cond-alpha-rename:987|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:658| |$cond-alpha-rename:657| |$cond-alpha-rename:656| |$cond-alpha-rename:655| |$cond-alpha-rename:654| |$cond-alpha-rename:653| |$cond-alpha-rename:652| |$cond-alpha-rename:651|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:994| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:644| |$cond-alpha-rename:990| |$cond-alpha-rename:642| |$cond-alpha-rename:641| |$cond-alpha-rename:640|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:994| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:990| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:994| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:990| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1020| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1024| Int) (|$cond-alpha-rename:1025| Int) (|$cond-alpha-rename:1026| Int) (|$cond-alpha-rename:1027| Int) (|$cond-alpha-rename:640| Int) (|$cond-alpha-rename:641| Int) (|$cond-alpha-rename:642| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:684| Int) (|$knormal:76| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1027| 1) (- |$cond-alpha-rename:1027| 1)) (= (- |$cond-alpha-rename:1027| 1) (- |$cond-alpha-rename:1027| 1)) (= 1 1) (= 1 1) (not (and (>= (- |$cond-alpha-rename:1027| 1) 0) (> |$cond-alpha-rename:1027| (- |$cond-alpha-rename:1027| 1)))) (not (= |$cond-alpha-rename:658| 0)) (not (= |$cond-alpha-rename:654| 0)) (not (= |$cond-alpha-rename:1027| 0)) (not (= |$cond-alpha-rename:1023| 0)) (not (= |$cond-alpha-rename:1027| 0)) (not (= |$cond-alpha-rename:1023| 0)) (> (+ (+ 0 0) |$cond-alpha-rename:1027|) (+ (+ 0 0) (- |$cond-alpha-rename:1027| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1027| 1)) 0) (|fail$unknown:31| |$cond-alpha-rename:684| 1) (|bot$unknown:29| |$cond-alpha-rename:682| 1) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:662| |$cond-alpha-rename:1027| |$cond-alpha-rename:1023| 1 (- |$cond-alpha-rename:1023| 1) |$cond-alpha-rename:1027| |$cond-alpha-rename:1023| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:662| (- |$cond-alpha-rename:1027| 1) |$cond-alpha-rename:1027| |$cond-alpha-rename:1023| 1 |$cond-alpha-rename:1023| |$cond-alpha-rename:1027| |$cond-alpha-rename:1023| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:658| |$cond-alpha-rename:657| |$cond-alpha-rename:656| |$cond-alpha-rename:655| |$cond-alpha-rename:654| |$cond-alpha-rename:653| |$cond-alpha-rename:652| |$cond-alpha-rename:651|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1027| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:644| |$cond-alpha-rename:1023| |$cond-alpha-rename:642| |$cond-alpha-rename:641| |$cond-alpha-rename:640|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1027| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1023| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1027| |$cond-alpha-rename:1026| |$cond-alpha-rename:1025| |$cond-alpha-rename:1024| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:1027| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1023| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1060| Int) (|$cond-alpha-rename:1061| Int) (|$cond-alpha-rename:1062| Int) (|$cond-alpha-rename:1063| Int) (|$cond-alpha-rename:1064| Int) (|$cond-alpha-rename:1065| Int) (|$cond-alpha-rename:1066| Int) (|$cond-alpha-rename:1067| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1092| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:690| Int) (|$cond-alpha-rename:691| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:703| Int) (|$cond-alpha-rename:707| Int) (|$knormal:76| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1067| (- |$cond-alpha-rename:1067| 1)) (>= (- |$cond-alpha-rename:1067| 1) 0) (= (- |$cond-alpha-rename:1067| 1) (- |$cond-alpha-rename:1067| 1)) (= (- |$cond-alpha-rename:1067| 1) (- |$cond-alpha-rename:1067| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:703| 0)) (not (= |$cond-alpha-rename:699| 0)) (not (= |$cond-alpha-rename:1067| 0)) (not (= |$cond-alpha-rename:1063| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:1067|) (+ (+ 0 0) (- |$cond-alpha-rename:1067| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1067| 1)) 0))) (not (= |$cond-alpha-rename:1067| 0)) (not (= |$cond-alpha-rename:1063| 0)) (|fail$unknown:31| |$cond-alpha-rename:1092| 1) (|bot$unknown:29| |$cond-alpha-rename:1090| 1) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:707| |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 (- |$cond-alpha-rename:1063| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:707| (- |$cond-alpha-rename:1067| 1) |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1 |$cond-alpha-rename:1063| |$cond-alpha-rename:1067| |$cond-alpha-rename:1063| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:703| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1067| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:1063| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1067| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1063| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1067| |$cond-alpha-rename:1066| |$cond-alpha-rename:1065| |$cond-alpha-rename:1064| |$cond-alpha-rename:1063| |$cond-alpha-rename:1062| |$cond-alpha-rename:1061| |$cond-alpha-rename:1060|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:1067| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1063| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1093| Int) (|$cond-alpha-rename:1094| Int) (|$cond-alpha-rename:1095| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:1098| Int) (|$cond-alpha-rename:1099| Int) (|$cond-alpha-rename:1100| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:690| Int) (|$cond-alpha-rename:691| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:703| Int) (|$cond-alpha-rename:707| Int) (|$knormal:76| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1100| (- |$cond-alpha-rename:1100| 1)) (>= (- |$cond-alpha-rename:1100| 1) 0) (= (- |$cond-alpha-rename:1100| 1) (- |$cond-alpha-rename:1100| 1)) (= (- |$cond-alpha-rename:1100| 1) (- |$cond-alpha-rename:1100| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:703| 0)) (not (= |$cond-alpha-rename:699| 0)) (not (= |$cond-alpha-rename:1100| 0)) (not (= |$cond-alpha-rename:1096| 0)) (not (= |$cond-alpha-rename:1100| 0)) (not (= |$cond-alpha-rename:1096| 0)) (> (+ (+ 0 0) |$cond-alpha-rename:1100|) (+ (+ 0 0) (- |$cond-alpha-rename:1100| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1100| 1)) 0) (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:707| |$cond-alpha-rename:1100| |$cond-alpha-rename:1096| 1 (- |$cond-alpha-rename:1096| 1) |$cond-alpha-rename:1100| |$cond-alpha-rename:1096| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:707| (- |$cond-alpha-rename:1100| 1) |$cond-alpha-rename:1100| |$cond-alpha-rename:1096| 1 |$cond-alpha-rename:1096| |$cond-alpha-rename:1100| |$cond-alpha-rename:1096| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:703| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1100| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:1096| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1100| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1096| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1100| |$cond-alpha-rename:1099| |$cond-alpha-rename:1098| |$cond-alpha-rename:1097| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:1094| |$cond-alpha-rename:1093|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:76| |$cond-alpha-rename:1100| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1096| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1133| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1137| Int) (|$cond-alpha-rename:1138| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:1140| Int) (|$cond-alpha-rename:1163| Int) (|$cond-alpha-rename:1165| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:750| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:754| Int) (|$cond-alpha-rename:755| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:793| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1140| 1) (- |$cond-alpha-rename:1140| 1)) (= (- |$cond-alpha-rename:1140| 1) (- |$cond-alpha-rename:1140| 1)) (= 1 1) (= 1 1) (not (and (>= (- |$cond-alpha-rename:1140| 1) 0) (> |$cond-alpha-rename:1140| (- |$cond-alpha-rename:1140| 1)))) (not (= |$cond-alpha-rename:767| 0)) (not (= |$cond-alpha-rename:763| 0)) (not (= |$cond-alpha-rename:1140| 0)) (not (= |$cond-alpha-rename:1136| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:1140|) (+ (+ 0 0) (- |$cond-alpha-rename:1140| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1140| 1)) 0))) (not (= |$cond-alpha-rename:1140| 0)) (not (= |$cond-alpha-rename:1136| 0)) (|fail$unknown:31| |$cond-alpha-rename:793| 1) (|fail$unknown:31| |$cond-alpha-rename:1165| 1) (|bot$unknown:29| |$cond-alpha-rename:791| 1) (|bot$unknown:29| |$cond-alpha-rename:1163| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:771| (- |$cond-alpha-rename:1140| 1) |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1 |$cond-alpha-rename:1136| |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1140| |$cond-alpha-rename:755| |$cond-alpha-rename:754| |$cond-alpha-rename:753| |$cond-alpha-rename:1136| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:749|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1140| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1136| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1140| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$cond-alpha-rename:1137| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134| |$cond-alpha-rename:1133|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:771| |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1 (- |$cond-alpha-rename:1136| 1) |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1166| Int) (|$cond-alpha-rename:1167| Int) (|$cond-alpha-rename:1168| Int) (|$cond-alpha-rename:1169| Int) (|$cond-alpha-rename:1170| Int) (|$cond-alpha-rename:1171| Int) (|$cond-alpha-rename:1172| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:750| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:754| Int) (|$cond-alpha-rename:755| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:793| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1173| 1) (- |$cond-alpha-rename:1173| 1)) (= (- |$cond-alpha-rename:1173| 1) (- |$cond-alpha-rename:1173| 1)) (= 1 1) (= 1 1) (not (and (>= (- |$cond-alpha-rename:1173| 1) 0) (> |$cond-alpha-rename:1173| (- |$cond-alpha-rename:1173| 1)))) (not (= |$cond-alpha-rename:767| 0)) (not (= |$cond-alpha-rename:763| 0)) (not (= |$cond-alpha-rename:1173| 0)) (not (= |$cond-alpha-rename:1169| 0)) (not (= |$cond-alpha-rename:1173| 0)) (not (= |$cond-alpha-rename:1169| 0)) (> (+ (+ 0 0) |$cond-alpha-rename:1173|) (+ (+ 0 0) (- |$cond-alpha-rename:1173| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1173| 1)) 0) (|fail$unknown:31| |$cond-alpha-rename:793| 1) (|bot$unknown:29| |$cond-alpha-rename:791| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:771| (- |$cond-alpha-rename:1173| 1) |$cond-alpha-rename:1173| |$cond-alpha-rename:1169| 1 |$cond-alpha-rename:1169| |$cond-alpha-rename:1173| |$cond-alpha-rename:1169| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1173| |$cond-alpha-rename:755| |$cond-alpha-rename:754| |$cond-alpha-rename:753| |$cond-alpha-rename:1169| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:749|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1173| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1169| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1173| |$cond-alpha-rename:1172| |$cond-alpha-rename:1171| |$cond-alpha-rename:1170| |$cond-alpha-rename:1169| |$cond-alpha-rename:1168| |$cond-alpha-rename:1167| |$cond-alpha-rename:1166|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:771| |$cond-alpha-rename:1173| |$cond-alpha-rename:1169| 1 (- |$cond-alpha-rename:1169| 1) |$cond-alpha-rename:1173| |$cond-alpha-rename:1169| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1206| Int) (|$cond-alpha-rename:1207| Int) (|$cond-alpha-rename:1208| Int) (|$cond-alpha-rename:1209| Int) (|$cond-alpha-rename:1210| Int) (|$cond-alpha-rename:1211| Int) (|$cond-alpha-rename:1212| Int) (|$cond-alpha-rename:1213| Int) (|$cond-alpha-rename:1236| Int) (|$cond-alpha-rename:1238| Int) (|$cond-alpha-rename:794| Int) (|$cond-alpha-rename:795| Int) (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:807| Int) (|$cond-alpha-rename:808| Int) (|$cond-alpha-rename:809| Int) (|$cond-alpha-rename:810| Int) (|$cond-alpha-rename:811| Int) (|$cond-alpha-rename:812| Int) (|$cond-alpha-rename:816| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1213| (- |$cond-alpha-rename:1213| 1)) (>= (- |$cond-alpha-rename:1213| 1) 0) (= (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1213| 1)) (= (- |$cond-alpha-rename:1213| 1) (- |$cond-alpha-rename:1213| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:812| 0)) (not (= |$cond-alpha-rename:808| 0)) (not (= |$cond-alpha-rename:1213| 0)) (not (= |$cond-alpha-rename:1209| 0)) (not (and (> (+ (+ 0 0) |$cond-alpha-rename:1213|) (+ (+ 0 0) (- |$cond-alpha-rename:1213| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1213| 1)) 0))) (not (= |$cond-alpha-rename:1213| 0)) (not (= |$cond-alpha-rename:1209| 0)) (|fail$unknown:31| |$cond-alpha-rename:1238| 1) (|bot$unknown:29| |$cond-alpha-rename:1236| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:816| (- |$cond-alpha-rename:1213| 1) |$cond-alpha-rename:1213| |$cond-alpha-rename:1209| 1 |$cond-alpha-rename:1209| |$cond-alpha-rename:1213| |$cond-alpha-rename:1209| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:812| |$cond-alpha-rename:811| |$cond-alpha-rename:810| |$cond-alpha-rename:809| |$cond-alpha-rename:808| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1213| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798| |$cond-alpha-rename:1209| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1213| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1209| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1213| |$cond-alpha-rename:1212| |$cond-alpha-rename:1211| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1208| |$cond-alpha-rename:1207| |$cond-alpha-rename:1206|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:816| |$cond-alpha-rename:1213| |$cond-alpha-rename:1209| 1 (- |$cond-alpha-rename:1209| 1) |$cond-alpha-rename:1213| |$cond-alpha-rename:1209| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1239| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1241| Int) (|$cond-alpha-rename:1242| Int) (|$cond-alpha-rename:1243| Int) (|$cond-alpha-rename:1244| Int) (|$cond-alpha-rename:1245| Int) (|$cond-alpha-rename:1246| Int) (|$cond-alpha-rename:794| Int) (|$cond-alpha-rename:795| Int) (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:807| Int) (|$cond-alpha-rename:808| Int) (|$cond-alpha-rename:809| Int) (|$cond-alpha-rename:810| Int) (|$cond-alpha-rename:811| Int) (|$cond-alpha-rename:812| Int) (|$cond-alpha-rename:816| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1246| (- |$cond-alpha-rename:1246| 1)) (>= (- |$cond-alpha-rename:1246| 1) 0) (= (- |$cond-alpha-rename:1246| 1) (- |$cond-alpha-rename:1246| 1)) (= (- |$cond-alpha-rename:1246| 1) (- |$cond-alpha-rename:1246| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:812| 0)) (not (= |$cond-alpha-rename:808| 0)) (not (= |$cond-alpha-rename:1246| 0)) (not (= |$cond-alpha-rename:1242| 0)) (not (= |$cond-alpha-rename:1246| 0)) (not (= |$cond-alpha-rename:1242| 0)) (> (+ (+ 0 0) |$cond-alpha-rename:1246|) (+ (+ 0 0) (- |$cond-alpha-rename:1246| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1246| 1)) 0) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:816| (- |$cond-alpha-rename:1246| 1) |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1 |$cond-alpha-rename:1242| |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:812| |$cond-alpha-rename:811| |$cond-alpha-rename:810| |$cond-alpha-rename:809| |$cond-alpha-rename:808| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1246| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798| |$cond-alpha-rename:1242| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1246| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1242| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1246| |$cond-alpha-rename:1245| |$cond-alpha-rename:1244| |$cond-alpha-rename:1243| |$cond-alpha-rename:1242| |$cond-alpha-rename:1241| |$cond-alpha-rename:1240| |$cond-alpha-rename:1239|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:816| |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1 (- |$cond-alpha-rename:1242| 1) |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$knormal:93| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:27| |$knormal:93| 1 0 |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) 0 |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:93| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| 0 |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:27| (+ |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| 0 |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| 1 0 |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) 0 |$alpha-17:m_1031| 1)
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
  (not (exists ( (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:406| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) )
    ( and (not (and (> (+ (+ 0 0) |$cond-alpha-rename:409|) (+ (+ 0 0) (- |$cond-alpha-rename:409| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:409| 1)) 0))) (not (= |$cond-alpha-rename:409| 0)) (not (= |$cond-alpha-rename:405| 0)) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:409| |$cond-alpha-rename:408| |$cond-alpha-rename:407| |$cond-alpha-rename:406| |$cond-alpha-rename:405| |$cond-alpha-rename:404| |$cond-alpha-rename:403| |$cond-alpha-rename:402|) )
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
(check-sat)

(get-model)

(exit)

