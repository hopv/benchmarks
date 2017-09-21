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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:1069| Int) (|$cond-alpha-rename:1070| Int) (|$cond-alpha-rename:1071| Int) (|$cond-alpha-rename:1072| Int) (|$cond-alpha-rename:1073| Int) (|$cond-alpha-rename:1074| Int) (|$cond-alpha-rename:1075| Int) (|$cond-alpha-rename:1076| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:1132| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1072|) 0) (+ (+ 0 |$cond-alpha-rename:1072|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1072|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1072|) 0) (+ (+ 0 |$cond-alpha-rename:1072|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1076|) (+ (+ 0 0) (- |$cond-alpha-rename:1076| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1076| 1)) 0))))) (not (= |$cond-alpha-rename:1076| 0)) (not (= |$cond-alpha-rename:1072| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:1132| 1) (|bot$unknown:29| |$cond-alpha-rename:1130| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1076| |$cond-alpha-rename:1075| |$cond-alpha-rename:1074| |$cond-alpha-rename:1073| |$cond-alpha-rename:1072| |$cond-alpha-rename:1071| |$cond-alpha-rename:1070| |$cond-alpha-rename:1069|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:1076| 1) |$cond-alpha-rename:1076| |$cond-alpha-rename:1072| 1 |$cond-alpha-rename:1072| |$cond-alpha-rename:1076| |$cond-alpha-rename:1072| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:1133| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1137| Int) (|$cond-alpha-rename:1138| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:1140| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:1140| 0)) (not (= |$cond-alpha-rename:1136| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1136|) 0) (+ (+ 0 |$cond-alpha-rename:1136|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1136|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1136|) 0) (+ (+ 0 |$cond-alpha-rename:1136|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1140|) (+ (+ 0 0) (- |$cond-alpha-rename:1140| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1140| 1)) 0)))) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1140| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$cond-alpha-rename:1137| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134| |$cond-alpha-rename:1133|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:1140| 1) |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1 |$cond-alpha-rename:1136| |$cond-alpha-rename:1140| |$cond-alpha-rename:1136| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:1193| Int) (|$cond-alpha-rename:1194| Int) (|$cond-alpha-rename:1195| Int) (|$cond-alpha-rename:1196| Int) (|$cond-alpha-rename:1197| Int) (|$cond-alpha-rename:1198| Int) (|$cond-alpha-rename:1199| Int) (|$cond-alpha-rename:1200| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:1200| 0)) (not (= |$cond-alpha-rename:1196| 0)) (not (not (= 0 1))) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1200| |$cond-alpha-rename:1199| |$cond-alpha-rename:1198| |$cond-alpha-rename:1197| |$cond-alpha-rename:1196| |$cond-alpha-rename:1195| |$cond-alpha-rename:1194| |$cond-alpha-rename:1193|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$cond-alpha-rename:1200| 1) |$cond-alpha-rename:1200| |$cond-alpha-rename:1196| 1 |$cond-alpha-rename:1196| |$cond-alpha-rename:1200| |$cond-alpha-rename:1196| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1204| Int) (|$cond-alpha-rename:1205| Int) (|$cond-alpha-rename:1206| Int) (|$cond-alpha-rename:1207| Int) (|$cond-alpha-rename:1208| Int) (|$cond-alpha-rename:1209| Int) (|$cond-alpha-rename:1210| Int) (|$cond-alpha-rename:1211| Int) (|$cond-alpha-rename:1265| Int) (|$cond-alpha-rename:1267| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) (|$knormal:107| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1211| 1)) (= (- |$cond-alpha-rename:1211| 1) (- |$cond-alpha-rename:1211| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1207| |$cond-alpha-rename:1207|) (and (>= (- |$cond-alpha-rename:1211| 1) 0) (> |$cond-alpha-rename:1211| (- |$cond-alpha-rename:1211| 1)))) (and (>= |$cond-alpha-rename:1207| 0) (> |$cond-alpha-rename:1207| |$cond-alpha-rename:1207|)))) (not (= |$cond-alpha-rename:689| 0)) (not (= |$cond-alpha-rename:685| 0)) (not (= |$cond-alpha-rename:1211| 0)) (not (= |$cond-alpha-rename:1207| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1207|) 0) (+ (+ 0 |$cond-alpha-rename:1207|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1207|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1207|) 0) (+ (+ 0 |$cond-alpha-rename:1207|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1211|) (+ (+ 0 0) (- |$cond-alpha-rename:1211| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1211| 1)) 0))))) (not (= |$cond-alpha-rename:1211| 0)) (not (= |$cond-alpha-rename:1207| 0)) (|fail$unknown:31| |$cond-alpha-rename:746| 1) (|fail$unknown:31| |$cond-alpha-rename:1267| 1) (|bot$unknown:29| |$cond-alpha-rename:744| 1) (|bot$unknown:29| |$cond-alpha-rename:1265| 1) (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:693| |$cond-alpha-rename:1211| |$cond-alpha-rename:1207| 1 (- |$cond-alpha-rename:1207| 1) |$cond-alpha-rename:1211| |$cond-alpha-rename:1207| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| (- |$cond-alpha-rename:1211| 1) |$cond-alpha-rename:1211| |$cond-alpha-rename:1207| 1 |$cond-alpha-rename:1207| |$cond-alpha-rename:1211| |$cond-alpha-rename:1207| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1211| |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:1207| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1211| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1207| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1211| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1208| |$cond-alpha-rename:1207| |$cond-alpha-rename:1206| |$cond-alpha-rename:1205| |$cond-alpha-rename:1204|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:1211| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1207| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1268| Int) (|$cond-alpha-rename:1269| Int) (|$cond-alpha-rename:1270| Int) (|$cond-alpha-rename:1271| Int) (|$cond-alpha-rename:1272| Int) (|$cond-alpha-rename:1273| Int) (|$cond-alpha-rename:1274| Int) (|$cond-alpha-rename:1275| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) (|$knormal:107| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1275| 1) (- |$cond-alpha-rename:1275| 1)) (= (- |$cond-alpha-rename:1275| 1) (- |$cond-alpha-rename:1275| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1271| |$cond-alpha-rename:1271|) (and (>= (- |$cond-alpha-rename:1275| 1) 0) (> |$cond-alpha-rename:1275| (- |$cond-alpha-rename:1275| 1)))) (and (>= |$cond-alpha-rename:1271| 0) (> |$cond-alpha-rename:1271| |$cond-alpha-rename:1271|)))) (not (= |$cond-alpha-rename:689| 0)) (not (= |$cond-alpha-rename:685| 0)) (not (= |$cond-alpha-rename:1275| 0)) (not (= |$cond-alpha-rename:1271| 0)) (not (= |$cond-alpha-rename:1275| 0)) (not (= |$cond-alpha-rename:1271| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1271|) 0) (+ (+ 0 |$cond-alpha-rename:1271|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1271|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1271|) 0) (+ (+ 0 |$cond-alpha-rename:1271|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1275|) (+ (+ 0 0) (- |$cond-alpha-rename:1275| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1275| 1)) 0)))) (|fail$unknown:31| |$cond-alpha-rename:746| 1) (|bot$unknown:29| |$cond-alpha-rename:744| 1) (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:693| |$cond-alpha-rename:1275| |$cond-alpha-rename:1271| 1 (- |$cond-alpha-rename:1271| 1) |$cond-alpha-rename:1275| |$cond-alpha-rename:1271| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| (- |$cond-alpha-rename:1275| 1) |$cond-alpha-rename:1275| |$cond-alpha-rename:1271| 1 |$cond-alpha-rename:1271| |$cond-alpha-rename:1275| |$cond-alpha-rename:1271| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1275| |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:1271| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1275| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1271| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1275| |$cond-alpha-rename:1274| |$cond-alpha-rename:1273| |$cond-alpha-rename:1272| |$cond-alpha-rename:1271| |$cond-alpha-rename:1270| |$cond-alpha-rename:1269| |$cond-alpha-rename:1268|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:1275| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1271| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1339| Int) (|$cond-alpha-rename:1340| Int) (|$cond-alpha-rename:1341| Int) (|$cond-alpha-rename:1342| Int) (|$cond-alpha-rename:1343| Int) (|$cond-alpha-rename:1344| Int) (|$cond-alpha-rename:1345| Int) (|$cond-alpha-rename:1346| Int) (|$cond-alpha-rename:1400| Int) (|$cond-alpha-rename:1402| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:769| Int) (|$knormal:107| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1342| |$cond-alpha-rename:1342|) (and (>= (- |$cond-alpha-rename:1346| 1) 0) (> |$cond-alpha-rename:1346| (- |$cond-alpha-rename:1346| 1)))) (and (>= |$cond-alpha-rename:1342| 0) (> |$cond-alpha-rename:1342| |$cond-alpha-rename:1342|))) (= (- |$cond-alpha-rename:1346| 1) (- |$cond-alpha-rename:1346| 1)) (= (- |$cond-alpha-rename:1346| 1) (- |$cond-alpha-rename:1346| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:765| 0)) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1346| 0)) (not (= |$cond-alpha-rename:1342| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1342|) 0) (+ (+ 0 |$cond-alpha-rename:1342|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1342|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1342|) 0) (+ (+ 0 |$cond-alpha-rename:1342|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1346|) (+ (+ 0 0) (- |$cond-alpha-rename:1346| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1346| 1)) 0))))) (not (= |$cond-alpha-rename:1346| 0)) (not (= |$cond-alpha-rename:1342| 0)) (|fail$unknown:31| |$cond-alpha-rename:1402| 1) (|bot$unknown:29| |$cond-alpha-rename:1400| 1) (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:769| |$cond-alpha-rename:1346| |$cond-alpha-rename:1342| 1 (- |$cond-alpha-rename:1342| 1) |$cond-alpha-rename:1346| |$cond-alpha-rename:1342| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| (- |$cond-alpha-rename:1346| 1) |$cond-alpha-rename:1346| |$cond-alpha-rename:1342| 1 |$cond-alpha-rename:1342| |$cond-alpha-rename:1346| |$cond-alpha-rename:1342| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1346| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:1342| |$cond-alpha-rename:749| |$cond-alpha-rename:748| |$cond-alpha-rename:747|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1346| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1342| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1346| |$cond-alpha-rename:1345| |$cond-alpha-rename:1344| |$cond-alpha-rename:1343| |$cond-alpha-rename:1342| |$cond-alpha-rename:1341| |$cond-alpha-rename:1340| |$cond-alpha-rename:1339|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:1346| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1342| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1403| Int) (|$cond-alpha-rename:1404| Int) (|$cond-alpha-rename:1405| Int) (|$cond-alpha-rename:1406| Int) (|$cond-alpha-rename:1407| Int) (|$cond-alpha-rename:1408| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1410| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:769| Int) (|$knormal:107| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1406| |$cond-alpha-rename:1406|) (and (>= (- |$cond-alpha-rename:1410| 1) 0) (> |$cond-alpha-rename:1410| (- |$cond-alpha-rename:1410| 1)))) (and (>= |$cond-alpha-rename:1406| 0) (> |$cond-alpha-rename:1406| |$cond-alpha-rename:1406|))) (= (- |$cond-alpha-rename:1410| 1) (- |$cond-alpha-rename:1410| 1)) (= (- |$cond-alpha-rename:1410| 1) (- |$cond-alpha-rename:1410| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:765| 0)) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1410| 0)) (not (= |$cond-alpha-rename:1406| 0)) (not (= |$cond-alpha-rename:1410| 0)) (not (= |$cond-alpha-rename:1406| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1406|) 0) (+ (+ 0 |$cond-alpha-rename:1406|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1406|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1406|) 0) (+ (+ 0 |$cond-alpha-rename:1406|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1410|) (+ (+ 0 0) (- |$cond-alpha-rename:1410| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1410| 1)) 0)))) (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:769| |$cond-alpha-rename:1410| |$cond-alpha-rename:1406| 1 (- |$cond-alpha-rename:1406| 1) |$cond-alpha-rename:1410| |$cond-alpha-rename:1406| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| (- |$cond-alpha-rename:1410| 1) |$cond-alpha-rename:1410| |$cond-alpha-rename:1406| 1 |$cond-alpha-rename:1406| |$cond-alpha-rename:1410| |$cond-alpha-rename:1406| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1410| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:1406| |$cond-alpha-rename:749| |$cond-alpha-rename:748| |$cond-alpha-rename:747|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1410| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1406| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1410| |$cond-alpha-rename:1409| |$cond-alpha-rename:1408| |$cond-alpha-rename:1407| |$cond-alpha-rename:1406| |$cond-alpha-rename:1405| |$cond-alpha-rename:1404| |$cond-alpha-rename:1403|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:107| |$cond-alpha-rename:1410| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1406| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1474| Int) (|$cond-alpha-rename:1475| Int) (|$cond-alpha-rename:1476| Int) (|$cond-alpha-rename:1477| Int) (|$cond-alpha-rename:1478| Int) (|$cond-alpha-rename:1479| Int) (|$cond-alpha-rename:1480| Int) (|$cond-alpha-rename:1481| Int) (|$cond-alpha-rename:1535| Int) (|$cond-alpha-rename:1537| Int) (|$cond-alpha-rename:842| Int) (|$cond-alpha-rename:843| Int) (|$cond-alpha-rename:844| Int) (|$cond-alpha-rename:846| Int) (|$cond-alpha-rename:847| Int) (|$cond-alpha-rename:848| Int) (|$cond-alpha-rename:853| Int) (|$cond-alpha-rename:854| Int) (|$cond-alpha-rename:855| Int) (|$cond-alpha-rename:856| Int) (|$cond-alpha-rename:857| Int) (|$cond-alpha-rename:858| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:864| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:917| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1481| 1) (- |$cond-alpha-rename:1481| 1)) (= (- |$cond-alpha-rename:1481| 1) (- |$cond-alpha-rename:1481| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1477| |$cond-alpha-rename:1477|) (and (>= (- |$cond-alpha-rename:1481| 1) 0) (> |$cond-alpha-rename:1481| (- |$cond-alpha-rename:1481| 1)))) (and (>= |$cond-alpha-rename:1477| 0) (> |$cond-alpha-rename:1477| |$cond-alpha-rename:1477|)))) (not (= |$cond-alpha-rename:860| 0)) (not (= |$cond-alpha-rename:856| 0)) (not (= |$cond-alpha-rename:1481| 0)) (not (= |$cond-alpha-rename:1477| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1477|) 0) (+ (+ 0 |$cond-alpha-rename:1477|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1477|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1477|) 0) (+ (+ 0 |$cond-alpha-rename:1477|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1481|) (+ (+ 0 0) (- |$cond-alpha-rename:1481| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1481| 1)) 0))))) (not (= |$cond-alpha-rename:1481| 0)) (not (= |$cond-alpha-rename:1477| 0)) (|fail$unknown:31| |$cond-alpha-rename:917| 1) (|fail$unknown:31| |$cond-alpha-rename:1537| 1) (|bot$unknown:29| |$cond-alpha-rename:915| 1) (|bot$unknown:29| |$cond-alpha-rename:1535| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:864| (- |$cond-alpha-rename:1481| 1) |$cond-alpha-rename:1481| |$cond-alpha-rename:1477| 1 |$cond-alpha-rename:1477| |$cond-alpha-rename:1481| |$cond-alpha-rename:1477| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| |$cond-alpha-rename:857| |$cond-alpha-rename:856| |$cond-alpha-rename:855| |$cond-alpha-rename:854| |$cond-alpha-rename:853|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1481| |$cond-alpha-rename:848| |$cond-alpha-rename:847| |$cond-alpha-rename:846| |$cond-alpha-rename:1477| |$cond-alpha-rename:844| |$cond-alpha-rename:843| |$cond-alpha-rename:842|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1481| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1477| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1481| |$cond-alpha-rename:1480| |$cond-alpha-rename:1479| |$cond-alpha-rename:1478| |$cond-alpha-rename:1477| |$cond-alpha-rename:1476| |$cond-alpha-rename:1475| |$cond-alpha-rename:1474|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:864| |$cond-alpha-rename:1481| |$cond-alpha-rename:1477| 1 (- |$cond-alpha-rename:1477| 1) |$cond-alpha-rename:1481| |$cond-alpha-rename:1477| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1538| Int) (|$cond-alpha-rename:1539| Int) (|$cond-alpha-rename:1540| Int) (|$cond-alpha-rename:1541| Int) (|$cond-alpha-rename:1542| Int) (|$cond-alpha-rename:1543| Int) (|$cond-alpha-rename:1544| Int) (|$cond-alpha-rename:1545| Int) (|$cond-alpha-rename:842| Int) (|$cond-alpha-rename:843| Int) (|$cond-alpha-rename:844| Int) (|$cond-alpha-rename:846| Int) (|$cond-alpha-rename:847| Int) (|$cond-alpha-rename:848| Int) (|$cond-alpha-rename:853| Int) (|$cond-alpha-rename:854| Int) (|$cond-alpha-rename:855| Int) (|$cond-alpha-rename:856| Int) (|$cond-alpha-rename:857| Int) (|$cond-alpha-rename:858| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:864| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:917| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1545| 1) (- |$cond-alpha-rename:1545| 1)) (= (- |$cond-alpha-rename:1545| 1) (- |$cond-alpha-rename:1545| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1541| |$cond-alpha-rename:1541|) (and (>= (- |$cond-alpha-rename:1545| 1) 0) (> |$cond-alpha-rename:1545| (- |$cond-alpha-rename:1545| 1)))) (and (>= |$cond-alpha-rename:1541| 0) (> |$cond-alpha-rename:1541| |$cond-alpha-rename:1541|)))) (not (= |$cond-alpha-rename:860| 0)) (not (= |$cond-alpha-rename:856| 0)) (not (= |$cond-alpha-rename:1545| 0)) (not (= |$cond-alpha-rename:1541| 0)) (not (= |$cond-alpha-rename:1545| 0)) (not (= |$cond-alpha-rename:1541| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1541|) 0) (+ (+ 0 |$cond-alpha-rename:1541|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1541|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1541|) 0) (+ (+ 0 |$cond-alpha-rename:1541|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1545|) (+ (+ 0 0) (- |$cond-alpha-rename:1545| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1545| 1)) 0)))) (|fail$unknown:31| |$cond-alpha-rename:917| 1) (|bot$unknown:29| |$cond-alpha-rename:915| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:864| (- |$cond-alpha-rename:1545| 1) |$cond-alpha-rename:1545| |$cond-alpha-rename:1541| 1 |$cond-alpha-rename:1541| |$cond-alpha-rename:1545| |$cond-alpha-rename:1541| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| |$cond-alpha-rename:857| |$cond-alpha-rename:856| |$cond-alpha-rename:855| |$cond-alpha-rename:854| |$cond-alpha-rename:853|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1545| |$cond-alpha-rename:848| |$cond-alpha-rename:847| |$cond-alpha-rename:846| |$cond-alpha-rename:1541| |$cond-alpha-rename:844| |$cond-alpha-rename:843| |$cond-alpha-rename:842|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1545| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1541| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1545| |$cond-alpha-rename:1544| |$cond-alpha-rename:1543| |$cond-alpha-rename:1542| |$cond-alpha-rename:1541| |$cond-alpha-rename:1540| |$cond-alpha-rename:1539| |$cond-alpha-rename:1538|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:864| |$cond-alpha-rename:1545| |$cond-alpha-rename:1541| 1 (- |$cond-alpha-rename:1541| 1) |$cond-alpha-rename:1545| |$cond-alpha-rename:1541| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1609| Int) (|$cond-alpha-rename:1610| Int) (|$cond-alpha-rename:1611| Int) (|$cond-alpha-rename:1612| Int) (|$cond-alpha-rename:1613| Int) (|$cond-alpha-rename:1614| Int) (|$cond-alpha-rename:1615| Int) (|$cond-alpha-rename:1616| Int) (|$cond-alpha-rename:1670| Int) (|$cond-alpha-rename:1672| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:922| Int) (|$cond-alpha-rename:923| Int) (|$cond-alpha-rename:924| Int) (|$cond-alpha-rename:929| Int) (|$cond-alpha-rename:930| Int) (|$cond-alpha-rename:931| Int) (|$cond-alpha-rename:932| Int) (|$cond-alpha-rename:933| Int) (|$cond-alpha-rename:934| Int) (|$cond-alpha-rename:935| Int) (|$cond-alpha-rename:936| Int) (|$cond-alpha-rename:940| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1612| |$cond-alpha-rename:1612|) (and (>= (- |$cond-alpha-rename:1616| 1) 0) (> |$cond-alpha-rename:1616| (- |$cond-alpha-rename:1616| 1)))) (and (>= |$cond-alpha-rename:1612| 0) (> |$cond-alpha-rename:1612| |$cond-alpha-rename:1612|))) (= (- |$cond-alpha-rename:1616| 1) (- |$cond-alpha-rename:1616| 1)) (= (- |$cond-alpha-rename:1616| 1) (- |$cond-alpha-rename:1616| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:936| 0)) (not (= |$cond-alpha-rename:932| 0)) (not (= |$cond-alpha-rename:1616| 0)) (not (= |$cond-alpha-rename:1612| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1612|) 0) (+ (+ 0 |$cond-alpha-rename:1612|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1612|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1612|) 0) (+ (+ 0 |$cond-alpha-rename:1612|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1616|) (+ (+ 0 0) (- |$cond-alpha-rename:1616| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1616| 1)) 0))))) (not (= |$cond-alpha-rename:1616| 0)) (not (= |$cond-alpha-rename:1612| 0)) (|fail$unknown:31| |$cond-alpha-rename:1672| 1) (|bot$unknown:29| |$cond-alpha-rename:1670| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:940| (- |$cond-alpha-rename:1616| 1) |$cond-alpha-rename:1616| |$cond-alpha-rename:1612| 1 |$cond-alpha-rename:1612| |$cond-alpha-rename:1616| |$cond-alpha-rename:1612| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:936| |$cond-alpha-rename:935| |$cond-alpha-rename:934| |$cond-alpha-rename:933| |$cond-alpha-rename:932| |$cond-alpha-rename:931| |$cond-alpha-rename:930| |$cond-alpha-rename:929|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1616| |$cond-alpha-rename:924| |$cond-alpha-rename:923| |$cond-alpha-rename:922| |$cond-alpha-rename:1612| |$cond-alpha-rename:920| |$cond-alpha-rename:919| |$cond-alpha-rename:918|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1616| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1612| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1616| |$cond-alpha-rename:1615| |$cond-alpha-rename:1614| |$cond-alpha-rename:1613| |$cond-alpha-rename:1612| |$cond-alpha-rename:1611| |$cond-alpha-rename:1610| |$cond-alpha-rename:1609|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:940| |$cond-alpha-rename:1616| |$cond-alpha-rename:1612| 1 (- |$cond-alpha-rename:1612| 1) |$cond-alpha-rename:1616| |$cond-alpha-rename:1612| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1673| Int) (|$cond-alpha-rename:1674| Int) (|$cond-alpha-rename:1675| Int) (|$cond-alpha-rename:1676| Int) (|$cond-alpha-rename:1677| Int) (|$cond-alpha-rename:1678| Int) (|$cond-alpha-rename:1679| Int) (|$cond-alpha-rename:1680| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:922| Int) (|$cond-alpha-rename:923| Int) (|$cond-alpha-rename:924| Int) (|$cond-alpha-rename:929| Int) (|$cond-alpha-rename:930| Int) (|$cond-alpha-rename:931| Int) (|$cond-alpha-rename:932| Int) (|$cond-alpha-rename:933| Int) (|$cond-alpha-rename:934| Int) (|$cond-alpha-rename:935| Int) (|$cond-alpha-rename:936| Int) (|$cond-alpha-rename:940| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1676| |$cond-alpha-rename:1676|) (and (>= (- |$cond-alpha-rename:1680| 1) 0) (> |$cond-alpha-rename:1680| (- |$cond-alpha-rename:1680| 1)))) (and (>= |$cond-alpha-rename:1676| 0) (> |$cond-alpha-rename:1676| |$cond-alpha-rename:1676|))) (= (- |$cond-alpha-rename:1680| 1) (- |$cond-alpha-rename:1680| 1)) (= (- |$cond-alpha-rename:1680| 1) (- |$cond-alpha-rename:1680| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:936| 0)) (not (= |$cond-alpha-rename:932| 0)) (not (= |$cond-alpha-rename:1680| 0)) (not (= |$cond-alpha-rename:1676| 0)) (not (= |$cond-alpha-rename:1680| 0)) (not (= |$cond-alpha-rename:1676| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1676|) 0) (+ (+ 0 |$cond-alpha-rename:1676|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:1676|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1676|) 0) (+ (+ 0 |$cond-alpha-rename:1676|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1680|) (+ (+ 0 0) (- |$cond-alpha-rename:1680| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:1680| 1)) 0)))) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:940| (- |$cond-alpha-rename:1680| 1) |$cond-alpha-rename:1680| |$cond-alpha-rename:1676| 1 |$cond-alpha-rename:1676| |$cond-alpha-rename:1680| |$cond-alpha-rename:1676| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:936| |$cond-alpha-rename:935| |$cond-alpha-rename:934| |$cond-alpha-rename:933| |$cond-alpha-rename:932| |$cond-alpha-rename:931| |$cond-alpha-rename:930| |$cond-alpha-rename:929|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1680| |$cond-alpha-rename:924| |$cond-alpha-rename:923| |$cond-alpha-rename:922| |$cond-alpha-rename:1676| |$cond-alpha-rename:920| |$cond-alpha-rename:919| |$cond-alpha-rename:918|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1680| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1676| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1680| |$cond-alpha-rename:1679| |$cond-alpha-rename:1678| |$cond-alpha-rename:1677| |$cond-alpha-rename:1676| |$cond-alpha-rename:1675| |$cond-alpha-rename:1674| |$cond-alpha-rename:1673|) )
      (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:940| |$cond-alpha-rename:1680| |$cond-alpha-rename:1676| 1 (- |$cond-alpha-rename:1676| 1) |$cond-alpha-rename:1680| |$cond-alpha-rename:1676| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$knormal:124| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:27| |$knormal:124| 1 0 |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) 0 |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:124| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
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
    ( and (not (or (and (> (+ (+ 0 |$cond-alpha-rename:405|) 0) (+ (+ 0 |$cond-alpha-rename:405|) 0)) (>= (+ (+ 0 |$cond-alpha-rename:405|) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:405|) 0) (+ (+ 0 |$cond-alpha-rename:405|) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:409|) (+ (+ 0 0) (- |$cond-alpha-rename:409| 1))) (>= (+ (+ 0 0) (- |$cond-alpha-rename:409| 1)) 0))))) (not (= |$cond-alpha-rename:409| 0)) (not (= |$cond-alpha-rename:405| 0)) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:409| |$cond-alpha-rename:408| |$cond-alpha-rename:407| |$cond-alpha-rename:406| |$cond-alpha-rename:405| |$cond-alpha-rename:404| |$cond-alpha-rename:403| |$cond-alpha-rename:402|) )
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

