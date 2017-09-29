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
                  let u_18023 = fail ()
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
             ack_1030 ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 (m_1031 - 1)
               set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
               (ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070
                 s_ack_n_1071 m_1031 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
                 (n_1032 - 1))
  
     let main_1033 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 u_1034  m_1035 n_1036 =
         if n_1036 > 0 && m_1035 > 0 then
           ack_without_checking_1087 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071
             m_1035 set_flag_ack_1075 s_ack_m_1070 s_ack_n_1071 n_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |ack_without_checking_1087$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:975| Int) (|$cond-alpha-rename:977| Int) (|$knormal:88| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:916|) 0) (+ (+ 0 (- |$cond-alpha-rename:916| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:916| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:916|) 0) (+ (+ 0 (- |$cond-alpha-rename:916| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:920|) (+ (+ 0 0) |$V-reftype:15|)) (>= (+ (+ 0 0) |$V-reftype:15|) 0))))) (not (= |$cond-alpha-rename:920| 0)) (not (= |$cond-alpha-rename:916| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:977| 1) (|bot$unknown:29| |$cond-alpha-rename:975| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:27| |$V-reftype:15| (- |$cond-alpha-rename:920| 1) |$cond-alpha-rename:920| |$cond-alpha-rename:916| 1 |$cond-alpha-rename:916| |$cond-alpha-rename:920| |$cond-alpha-rename:916| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:920| |$cond-alpha-rename:919| |$cond-alpha-rename:918| |$cond-alpha-rename:917| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$cond-alpha-rename:920| |$cond-alpha-rename:916| 1 (- |$cond-alpha-rename:916| 1) |$cond-alpha-rename:920| |$cond-alpha-rename:916| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:978| Int) (|$cond-alpha-rename:979| Int) (|$cond-alpha-rename:980| Int) (|$cond-alpha-rename:981| Int) (|$cond-alpha-rename:982| Int) (|$cond-alpha-rename:983| Int) (|$cond-alpha-rename:984| Int) (|$cond-alpha-rename:985| Int) (|$knormal:88| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:985| 0)) (not (= |$cond-alpha-rename:981| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:981|) 0) (+ (+ 0 (- |$cond-alpha-rename:981| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:981| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:981|) 0) (+ (+ 0 (- |$cond-alpha-rename:981| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:985|) (+ (+ 0 0) |$V-reftype:15|)) (>= (+ (+ 0 0) |$V-reftype:15|) 0)))) (not (= 0 1)) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:27| |$V-reftype:15| (- |$cond-alpha-rename:985| 1) |$cond-alpha-rename:985| |$cond-alpha-rename:981| 1 |$cond-alpha-rename:981| |$cond-alpha-rename:985| |$cond-alpha-rename:981| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:985| |$cond-alpha-rename:984| |$cond-alpha-rename:983| |$cond-alpha-rename:982| |$cond-alpha-rename:981| |$cond-alpha-rename:980| |$cond-alpha-rename:979| |$cond-alpha-rename:978|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$cond-alpha-rename:985| |$cond-alpha-rename:981| 1 (- |$cond-alpha-rename:981| 1) |$cond-alpha-rename:985| |$cond-alpha-rename:981| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:1039| Int) (|$cond-alpha-rename:1040| Int) (|$cond-alpha-rename:1041| Int) (|$cond-alpha-rename:1042| Int) (|$cond-alpha-rename:1043| Int) (|$cond-alpha-rename:1044| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:1046| Int) (|$knormal:88| Int) )
    (=>
      ( and (not (= |$alpha-21:n_1032| 0)) (not (= |$alpha-17:m_1031| 0)) (not (= |$cond-alpha-rename:1046| 0)) (not (= |$cond-alpha-rename:1042| 0)) (not (not (= 0 1))) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:27| |$V-reftype:15| (- |$cond-alpha-rename:1046| 1) |$cond-alpha-rename:1046| |$cond-alpha-rename:1042| 1 |$cond-alpha-rename:1042| |$cond-alpha-rename:1046| |$cond-alpha-rename:1042| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1046| |$cond-alpha-rename:1045| |$cond-alpha-rename:1044| |$cond-alpha-rename:1043| |$cond-alpha-rename:1042| |$cond-alpha-rename:1041| |$cond-alpha-rename:1040| |$cond-alpha-rename:1039|) (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) )
      (|ack_without_checking_1087$unknown:26| |$V-reftype:15| |$cond-alpha-rename:1046| |$cond-alpha-rename:1042| 1 (- |$cond-alpha-rename:1042| 1) |$cond-alpha-rename:1046| |$cond-alpha-rename:1042| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1051| Int) (|$cond-alpha-rename:1052| Int) (|$cond-alpha-rename:1053| Int) (|$cond-alpha-rename:1054| Int) (|$cond-alpha-rename:1055| Int) (|$cond-alpha-rename:1056| Int) (|$cond-alpha-rename:1057| Int) (|$cond-alpha-rename:1058| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:1115| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:707| Int) (|$cond-alpha-rename:709| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:762| Int) (|$knormal:88| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1054| 1) (- |$cond-alpha-rename:1054| 1)) (= (- |$cond-alpha-rename:1054| 1) (- |$cond-alpha-rename:1054| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1054| (- |$cond-alpha-rename:1054| 1)) (and (>= |$knormal:88| 0) (> |$cond-alpha-rename:1058| |$knormal:88|))) (and (>= (- |$cond-alpha-rename:1054| 1) 0) (> |$cond-alpha-rename:1054| (- |$cond-alpha-rename:1054| 1))))) (not (= |$cond-alpha-rename:702| 0)) (not (= |$cond-alpha-rename:698| 0)) (not (= |$cond-alpha-rename:1058| 0)) (not (= |$cond-alpha-rename:1054| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1054|) 0) (+ (+ 0 (- |$cond-alpha-rename:1054| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1054| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1054|) 0) (+ (+ 0 (- |$cond-alpha-rename:1054| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1058|) (+ (+ 0 0) |$knormal:88|)) (>= (+ (+ 0 0) |$knormal:88|) 0))))) (not (= |$cond-alpha-rename:1058| 0)) (not (= |$cond-alpha-rename:1054| 0)) (|fail$unknown:31| |$cond-alpha-rename:762| 1) (|fail$unknown:31| |$cond-alpha-rename:1115| 1) (|bot$unknown:29| |$cond-alpha-rename:760| 1) (|bot$unknown:29| |$cond-alpha-rename:1113| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1058| 1) |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1 |$cond-alpha-rename:1054| |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1058| 1) |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1 |$cond-alpha-rename:1054| |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:709| |$knormal:88| |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1 (- |$cond-alpha-rename:1054| 1) |$cond-alpha-rename:1058| |$cond-alpha-rename:1054| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:707| (- |$cond-alpha-rename:702| 1) |$cond-alpha-rename:702| |$cond-alpha-rename:698| 1 |$cond-alpha-rename:698| |$cond-alpha-rename:702| |$cond-alpha-rename:698| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696| |$cond-alpha-rename:695|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1058| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:1054| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1058| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1054| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1058| |$cond-alpha-rename:1057| |$cond-alpha-rename:1056| |$cond-alpha-rename:1055| |$cond-alpha-rename:1054| |$cond-alpha-rename:1053| |$cond-alpha-rename:1052| |$cond-alpha-rename:1051|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:709| |$cond-alpha-rename:1058| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1054| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1116| Int) (|$cond-alpha-rename:1117| Int) (|$cond-alpha-rename:1118| Int) (|$cond-alpha-rename:1119| Int) (|$cond-alpha-rename:1120| Int) (|$cond-alpha-rename:1121| Int) (|$cond-alpha-rename:1122| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:707| Int) (|$cond-alpha-rename:709| Int) (|$cond-alpha-rename:760| Int) (|$cond-alpha-rename:762| Int) (|$knormal:88| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1119| 1) (- |$cond-alpha-rename:1119| 1)) (= (- |$cond-alpha-rename:1119| 1) (- |$cond-alpha-rename:1119| 1)) (= 1 1) (= 1 1) (not (or (and (>= |$cond-alpha-rename:1119| (- |$cond-alpha-rename:1119| 1)) (and (>= |$knormal:88| 0) (> |$cond-alpha-rename:1123| |$knormal:88|))) (and (>= (- |$cond-alpha-rename:1119| 1) 0) (> |$cond-alpha-rename:1119| (- |$cond-alpha-rename:1119| 1))))) (not (= |$cond-alpha-rename:702| 0)) (not (= |$cond-alpha-rename:698| 0)) (not (= |$cond-alpha-rename:1123| 0)) (not (= |$cond-alpha-rename:1119| 0)) (not (= |$cond-alpha-rename:1123| 0)) (not (= |$cond-alpha-rename:1119| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1119|) 0) (+ (+ 0 (- |$cond-alpha-rename:1119| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1119| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1119|) 0) (+ (+ 0 (- |$cond-alpha-rename:1119| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1123|) (+ (+ 0 0) |$knormal:88|)) (>= (+ (+ 0 0) |$knormal:88|) 0)))) (|fail$unknown:31| |$cond-alpha-rename:762| 1) (|bot$unknown:29| |$cond-alpha-rename:760| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1123| 1) |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1 |$cond-alpha-rename:1119| |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1123| 1) |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1 |$cond-alpha-rename:1119| |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:709| |$knormal:88| |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1 (- |$cond-alpha-rename:1119| 1) |$cond-alpha-rename:1123| |$cond-alpha-rename:1119| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:707| (- |$cond-alpha-rename:702| 1) |$cond-alpha-rename:702| |$cond-alpha-rename:698| 1 |$cond-alpha-rename:698| |$cond-alpha-rename:702| |$cond-alpha-rename:698| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696| |$cond-alpha-rename:695|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1123| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:1119| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1123| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1119| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1123| |$cond-alpha-rename:1122| |$cond-alpha-rename:1121| |$cond-alpha-rename:1120| |$cond-alpha-rename:1119| |$cond-alpha-rename:1118| |$cond-alpha-rename:1117| |$cond-alpha-rename:1116|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:709| |$cond-alpha-rename:1123| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1119| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1189| Int) (|$cond-alpha-rename:1190| Int) (|$cond-alpha-rename:1191| Int) (|$cond-alpha-rename:1192| Int) (|$cond-alpha-rename:1193| Int) (|$cond-alpha-rename:1194| Int) (|$cond-alpha-rename:1195| Int) (|$cond-alpha-rename:1196| Int) (|$cond-alpha-rename:1251| Int) (|$cond-alpha-rename:1253| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:776| Int) (|$cond-alpha-rename:777| Int) (|$cond-alpha-rename:778| Int) (|$cond-alpha-rename:779| Int) (|$cond-alpha-rename:780| Int) (|$cond-alpha-rename:781| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:787| Int) (|$cond-alpha-rename:789| Int) (|$knormal:88| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1192| (- |$cond-alpha-rename:1192| 1)) (and (>= |$knormal:88| 0) (> |$cond-alpha-rename:1196| |$knormal:88|))) (and (>= (- |$cond-alpha-rename:1192| 1) 0) (> |$cond-alpha-rename:1192| (- |$cond-alpha-rename:1192| 1)))) (= (- |$cond-alpha-rename:1192| 1) (- |$cond-alpha-rename:1192| 1)) (= (- |$cond-alpha-rename:1192| 1) (- |$cond-alpha-rename:1192| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:782| 0)) (not (= |$cond-alpha-rename:778| 0)) (not (= |$cond-alpha-rename:1196| 0)) (not (= |$cond-alpha-rename:1192| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1192|) 0) (+ (+ 0 (- |$cond-alpha-rename:1192| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1192| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1192|) 0) (+ (+ 0 (- |$cond-alpha-rename:1192| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1196|) (+ (+ 0 0) |$knormal:88|)) (>= (+ (+ 0 0) |$knormal:88|) 0))))) (not (= |$cond-alpha-rename:1196| 0)) (not (= |$cond-alpha-rename:1192| 0)) (|fail$unknown:31| |$cond-alpha-rename:1253| 1) (|bot$unknown:29| |$cond-alpha-rename:1251| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1196| 1) |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1 |$cond-alpha-rename:1192| |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1196| 1) |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1 |$cond-alpha-rename:1192| |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:789| |$knormal:88| |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1 (- |$cond-alpha-rename:1192| 1) |$cond-alpha-rename:1196| |$cond-alpha-rename:1192| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:787| (- |$cond-alpha-rename:782| 1) |$cond-alpha-rename:782| |$cond-alpha-rename:778| 1 |$cond-alpha-rename:778| |$cond-alpha-rename:782| |$cond-alpha-rename:778| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:782| |$cond-alpha-rename:781| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| |$cond-alpha-rename:776| |$cond-alpha-rename:775|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1196| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:1192| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1196| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1192| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1196| |$cond-alpha-rename:1195| |$cond-alpha-rename:1194| |$cond-alpha-rename:1193| |$cond-alpha-rename:1192| |$cond-alpha-rename:1191| |$cond-alpha-rename:1190| |$cond-alpha-rename:1189|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:789| |$cond-alpha-rename:1196| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1192| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1254| Int) (|$cond-alpha-rename:1255| Int) (|$cond-alpha-rename:1256| Int) (|$cond-alpha-rename:1257| Int) (|$cond-alpha-rename:1258| Int) (|$cond-alpha-rename:1259| Int) (|$cond-alpha-rename:1260| Int) (|$cond-alpha-rename:1261| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:776| Int) (|$cond-alpha-rename:777| Int) (|$cond-alpha-rename:778| Int) (|$cond-alpha-rename:779| Int) (|$cond-alpha-rename:780| Int) (|$cond-alpha-rename:781| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:787| Int) (|$cond-alpha-rename:789| Int) (|$knormal:88| Int) )
    (=>
      ( and (or (and (>= |$cond-alpha-rename:1257| (- |$cond-alpha-rename:1257| 1)) (and (>= |$knormal:88| 0) (> |$cond-alpha-rename:1261| |$knormal:88|))) (and (>= (- |$cond-alpha-rename:1257| 1) 0) (> |$cond-alpha-rename:1257| (- |$cond-alpha-rename:1257| 1)))) (= (- |$cond-alpha-rename:1257| 1) (- |$cond-alpha-rename:1257| 1)) (= (- |$cond-alpha-rename:1257| 1) (- |$cond-alpha-rename:1257| 1)) (= 1 1) (= 1 1) (not (= |$cond-alpha-rename:782| 0)) (not (= |$cond-alpha-rename:778| 0)) (not (= |$cond-alpha-rename:1261| 0)) (not (= |$cond-alpha-rename:1257| 0)) (not (= |$cond-alpha-rename:1261| 0)) (not (= |$cond-alpha-rename:1257| 0)) (or (and (> (+ (+ 0 |$cond-alpha-rename:1257|) 0) (+ (+ 0 (- |$cond-alpha-rename:1257| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1257| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1257|) 0) (+ (+ 0 (- |$cond-alpha-rename:1257| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1261|) (+ (+ 0 0) |$knormal:88|)) (>= (+ (+ 0 0) |$knormal:88|) 0)))) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1261| 1) |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1 |$cond-alpha-rename:1257| |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$cond-alpha-rename:1261| 1) |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1 |$cond-alpha-rename:1257| |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:789| |$knormal:88| |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1 (- |$cond-alpha-rename:1257| 1) |$cond-alpha-rename:1261| |$cond-alpha-rename:1257| 1) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:787| (- |$cond-alpha-rename:782| 1) |$cond-alpha-rename:782| |$cond-alpha-rename:778| 1 |$cond-alpha-rename:778| |$cond-alpha-rename:782| |$cond-alpha-rename:778| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:782| |$cond-alpha-rename:781| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| |$cond-alpha-rename:776| |$cond-alpha-rename:775|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1261| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:1257| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1261| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1257| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1261| |$cond-alpha-rename:1260| |$cond-alpha-rename:1259| |$cond-alpha-rename:1258| |$cond-alpha-rename:1257| |$cond-alpha-rename:1256| |$cond-alpha-rename:1255| |$cond-alpha-rename:1254|) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:789| |$cond-alpha-rename:1261| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:1257| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
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
  (not (exists ( (|$cond-alpha-rename:418| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:426| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:430| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) )
    ( and (not (or (and (> (+ (+ 0 |$cond-alpha-rename:428|) 0) (+ (+ 0 (- |$cond-alpha-rename:428| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:428| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:428|) 0) (+ (+ 0 (- |$cond-alpha-rename:428| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:432|) (+ (+ 0 0) |$cond-alpha-rename:418|)) (>= (+ (+ 0 0) |$cond-alpha-rename:418|) 0))))) (not (= |$cond-alpha-rename:432| 0)) (not (= |$cond-alpha-rename:428| 0)) (not (= 0 1)) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:418| (- |$cond-alpha-rename:432| 1) |$cond-alpha-rename:432| |$cond-alpha-rename:428| 1 |$cond-alpha-rename:428| |$cond-alpha-rename:432| |$cond-alpha-rename:428| 1) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:432| |$cond-alpha-rename:431| |$cond-alpha-rename:430| |$cond-alpha-rename:429| |$cond-alpha-rename:428| |$cond-alpha-rename:427| |$cond-alpha-rename:426| |$cond-alpha-rename:425|) )
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

