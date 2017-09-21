(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec ack_1030 ack_without_checking_1087 x_DO_NOT_CARE_1089 x_DO_NOT_CARE_1090 x_DO_NOT_CARE_1091 m_1031 prev_set_flag_ack_1074 s_prev_ack_m_1072 s_prev_ack_n_1073 n_1032 =
       let u = if prev_set_flag_ack_1074 then
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
                  let u_20257 = fail ()
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
             ack_1030 ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 (m_1031 - 1)
               set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 1
           else
             ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071 (m_1031 - 1) set_flag_ack_1075 s_ack_m_1070
               s_ack_n_1071
               (ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
                 s_ack_n_1071 m_1031 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
                 (n_1032 - 1))
  
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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:892| Int) (|$cond-alpha-rename:893| Int) (|$cond-alpha-rename:894| Int) (|$cond-alpha-rename:895| Int) (|$cond-alpha-rename:896| Int) (|$cond-alpha-rename:897| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:953| Int) (|$cond-alpha-rename:955| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:895|) 0) (+ (+ 0 (- |$cond-alpha-rename:895| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:895| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:895|) 0) (+ (+ 0 (- |$cond-alpha-rename:895| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:895| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:955| 1) (|bot$unknown:29| |$cond-alpha-rename:953| 1) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:898| |$cond-alpha-rename:897| |$cond-alpha-rename:896| |$cond-alpha-rename:895| |$cond-alpha-rename:894| |$cond-alpha-rename:893| |$cond-alpha-rename:892|) )
      (|ack_without_checking_1087$unknown:26| 1 0 |$cond-alpha-rename:895| 1 (- |$cond-alpha-rename:895| 1) 0 |$cond-alpha-rename:895| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:956| Int) (|$cond-alpha-rename:957| Int) (|$cond-alpha-rename:958| Int) (|$cond-alpha-rename:959| Int) (|$cond-alpha-rename:960| Int) (|$cond-alpha-rename:961| Int) (|$cond-alpha-rename:962| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:959| 0)) (or (and (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)) (>= (+ (+ 0 |$cond-alpha-rename:959|) 0) (+ (+ 0 (- |$cond-alpha-rename:959| 1)) 0))) (and (> (+ (+ 0 |$cond-alpha-rename:959|) 0) (+ (+ 0 (- |$cond-alpha-rename:959| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:959| 1)) 0) 0))) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:962| |$cond-alpha-rename:961| |$cond-alpha-rename:960| |$cond-alpha-rename:959| |$cond-alpha-rename:958| |$cond-alpha-rename:957| |$cond-alpha-rename:956|) )
      (|ack_without_checking_1087$unknown:26| 1 0 |$cond-alpha-rename:959| 1 (- |$cond-alpha-rename:959| 1) 0 |$cond-alpha-rename:959| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1016| Int) (|$cond-alpha-rename:1017| Int) (|$cond-alpha-rename:1018| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1020| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) )
    (=>
      ( and (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:1019| 0)) (not (not (= 0 1))) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1017| |$cond-alpha-rename:1016|) )
      (|ack_without_checking_1087$unknown:26| 1 0 |$cond-alpha-rename:1019| 1 (- |$cond-alpha-rename:1019| 1) 0 |$cond-alpha-rename:1019| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1027| Int) (|$cond-alpha-rename:1028| Int) (|$cond-alpha-rename:1029| Int) (|$cond-alpha-rename:1030| Int) (|$cond-alpha-rename:1031| Int) (|$cond-alpha-rename:1032| Int) (|$cond-alpha-rename:1033| Int) (|$cond-alpha-rename:1088| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1030| 1) (- |$cond-alpha-rename:1030| 1)) (= (- |$cond-alpha-rename:1030| 1) (- |$cond-alpha-rename:1030| 1)) (= 1 1) (= 1 1) (= 0 0) (not (and (>= (- |$cond-alpha-rename:1030| 1) 0) (> |$cond-alpha-rename:1030| (- |$cond-alpha-rename:1030| 1)))) (not (= |$cond-alpha-rename:685| 0)) (not (= |$cond-alpha-rename:1030| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1030|) 0) (+ (+ 0 (- |$cond-alpha-rename:1030| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1030| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1030|) 0) (+ (+ 0 (- |$cond-alpha-rename:1030| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:1030| 0)) (= 0 0) (|fail$unknown:31| |$cond-alpha-rename:746| 1) (|fail$unknown:31| |$cond-alpha-rename:1090| 1) (|bot$unknown:29| |$cond-alpha-rename:744| 1) (|bot$unknown:29| |$cond-alpha-rename:1088| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| 1 0 |$cond-alpha-rename:1030| 1 (- |$cond-alpha-rename:1030| 1) 0 |$cond-alpha-rename:1030| 1) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:1030| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671|) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1030| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:1033| |$cond-alpha-rename:1032| |$cond-alpha-rename:1031| |$cond-alpha-rename:1030| |$cond-alpha-rename:1029| |$cond-alpha-rename:1028| |$cond-alpha-rename:1027|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1030| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1091| Int) (|$cond-alpha-rename:1092| Int) (|$cond-alpha-rename:1093| Int) (|$cond-alpha-rename:1094| Int) (|$cond-alpha-rename:1095| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:744| Int) (|$cond-alpha-rename:746| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1094| 1) (- |$cond-alpha-rename:1094| 1)) (= (- |$cond-alpha-rename:1094| 1) (- |$cond-alpha-rename:1094| 1)) (= 1 1) (= 1 1) (= 0 0) (not (and (>= (- |$cond-alpha-rename:1094| 1) 0) (> |$cond-alpha-rename:1094| (- |$cond-alpha-rename:1094| 1)))) (not (= |$cond-alpha-rename:685| 0)) (not (= |$cond-alpha-rename:1094| 0)) (not (= |$cond-alpha-rename:1094| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1094|) 0) (+ (+ 0 (- |$cond-alpha-rename:1094| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1094| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1094|) 0) (+ (+ 0 (- |$cond-alpha-rename:1094| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= 0 0) (|fail$unknown:31| |$cond-alpha-rename:746| 1) (|bot$unknown:29| |$cond-alpha-rename:744| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| 1 0 |$cond-alpha-rename:1094| 1 (- |$cond-alpha-rename:1094| 1) 0 |$cond-alpha-rename:1094| 1) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:1094| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671|) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1094| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:1097| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:1094| |$cond-alpha-rename:1093| |$cond-alpha-rename:1092| |$cond-alpha-rename:1091|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:693| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1094| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1162| Int) (|$cond-alpha-rename:1163| Int) (|$cond-alpha-rename:1164| Int) (|$cond-alpha-rename:1165| Int) (|$cond-alpha-rename:1166| Int) (|$cond-alpha-rename:1167| Int) (|$cond-alpha-rename:1168| Int) (|$cond-alpha-rename:1223| Int) (|$cond-alpha-rename:1225| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:769| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1165| (- |$cond-alpha-rename:1165| 1)) (>= (- |$cond-alpha-rename:1165| 1) 0) (= (- |$cond-alpha-rename:1165| 1) (- |$cond-alpha-rename:1165| 1)) (= (- |$cond-alpha-rename:1165| 1) (- |$cond-alpha-rename:1165| 1)) (= 1 1) (= 1 1) (= 0 0) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1165| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1165|) 0) (+ (+ 0 (- |$cond-alpha-rename:1165| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1165| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1165|) 0) (+ (+ 0 (- |$cond-alpha-rename:1165| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:1165| 0)) (= 0 0) (|fail$unknown:31| |$cond-alpha-rename:1225| 1) (|bot$unknown:29| |$cond-alpha-rename:1223| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| 1 0 |$cond-alpha-rename:1165| 1 (- |$cond-alpha-rename:1165| 1) 0 |$cond-alpha-rename:1165| 1) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:1165| |$cond-alpha-rename:749| |$cond-alpha-rename:748| |$cond-alpha-rename:747|) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1165| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:1168| |$cond-alpha-rename:1167| |$cond-alpha-rename:1166| |$cond-alpha-rename:1165| |$cond-alpha-rename:1164| |$cond-alpha-rename:1163| |$cond-alpha-rename:1162|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1165| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1226| Int) (|$cond-alpha-rename:1227| Int) (|$cond-alpha-rename:1228| Int) (|$cond-alpha-rename:1229| Int) (|$cond-alpha-rename:1230| Int) (|$cond-alpha-rename:1231| Int) (|$cond-alpha-rename:1232| Int) (|$cond-alpha-rename:747| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:753| Int) (|$cond-alpha-rename:758| Int) (|$cond-alpha-rename:759| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:761| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:769| Int) )
    (=>
      ( and (> |$cond-alpha-rename:1229| (- |$cond-alpha-rename:1229| 1)) (>= (- |$cond-alpha-rename:1229| 1) 0) (= (- |$cond-alpha-rename:1229| 1) (- |$cond-alpha-rename:1229| 1)) (= (- |$cond-alpha-rename:1229| 1) (- |$cond-alpha-rename:1229| 1)) (= 1 1) (= 1 1) (= 0 0) (not (= |$cond-alpha-rename:761| 0)) (not (= |$cond-alpha-rename:1229| 0)) (not (= |$cond-alpha-rename:1229| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1229|) 0) (+ (+ 0 (- |$cond-alpha-rename:1229| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1229| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1229|) 0) (+ (+ 0 (- |$cond-alpha-rename:1229| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= 0 0) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| 1 0 |$cond-alpha-rename:1229| 1 (- |$cond-alpha-rename:1229| 1) 0 |$cond-alpha-rename:1229| 1) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:1229| |$cond-alpha-rename:749| |$cond-alpha-rename:748| |$cond-alpha-rename:747|) (|ack_without_checking_1087$unknown:26| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1229| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:761| |$cond-alpha-rename:760| |$cond-alpha-rename:759| |$cond-alpha-rename:758|) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:1232| |$cond-alpha-rename:1231| |$cond-alpha-rename:1230| |$cond-alpha-rename:1229| |$cond-alpha-rename:1228| |$cond-alpha-rename:1227| |$cond-alpha-rename:1226|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:769| 0 |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1229| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:105| Int) (|$knormal:88| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:27| |$knormal:105| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:27| |$knormal:105| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:88| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1)
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
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1)
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
  (not (exists ( (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:406| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) )
    ( and (not (or (and (> (+ (+ 0 |$cond-alpha-rename:405|) 0) (+ (+ 0 (- |$cond-alpha-rename:405| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:405| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:405|) 0) (+ (+ 0 (- |$cond-alpha-rename:405| 1)) 0)) (and (> (+ (+ 0 0) 0) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:405| 0)) (not (= 0 1)) (|ack_without_checking_1087$unknown:26| 0 |$cond-alpha-rename:408| |$cond-alpha-rename:407| |$cond-alpha-rename:406| |$cond-alpha-rename:405| |$cond-alpha-rename:404| |$cond-alpha-rename:403| |$cond-alpha-rename:402|) )
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

