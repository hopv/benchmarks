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

(declare-fun |ack_without_checking_1087$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:381| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:325| |$cond-alpha-rename:324| |$cond-alpha-rename:323| |$cond-alpha-rename:322| |$cond-alpha-rename:321| |$cond-alpha-rename:320| |$cond-alpha-rename:319| |$cond-alpha-rename:318|) (|bot$unknown:29| |$cond-alpha-rename:379| 1) (|fail$unknown:31| |$cond-alpha-rename:381| 1) (not (= 0 1)) (= |$cond-alpha-rename:325| 0) (= |$alpha-21:n_1032| 0) (not (= |$cond-alpha-rename:321| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:321|) 0) (+ (+ 0 (- |$cond-alpha-rename:321| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:321| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:321|) 0) (+ (+ 0 (- |$cond-alpha-rename:321| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:325|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$alpha-17:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:26| 1 |$cond-alpha-rename:325| |$cond-alpha-rename:321| 1 (- |$cond-alpha-rename:321| 1) |$cond-alpha-rename:325| |$cond-alpha-rename:321| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:384| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:388| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:389| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:386| |$cond-alpha-rename:385| |$cond-alpha-rename:384| |$cond-alpha-rename:383| |$cond-alpha-rename:382|) (not (= 0 1)) (= |$cond-alpha-rename:389| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:385|) 0) (+ (+ 0 (- |$cond-alpha-rename:385| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:385| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:385|) 0) (+ (+ 0 (- |$cond-alpha-rename:385| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:389|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$alpha-21:n_1032| 0) (not (= |$cond-alpha-rename:385| 0)) (not (= |$alpha-17:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:26| 1 |$cond-alpha-rename:389| |$cond-alpha-rename:385| 1 (- |$cond-alpha-rename:385| 1) |$cond-alpha-rename:389| |$cond-alpha-rename:385| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:443| Int) (|$cond-alpha-rename:444| Int) (|$cond-alpha-rename:445| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:448| Int) (|$cond-alpha-rename:449| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:449| |$cond-alpha-rename:448| |$cond-alpha-rename:447| |$cond-alpha-rename:446| |$cond-alpha-rename:445| |$cond-alpha-rename:444| |$cond-alpha-rename:443| |$cond-alpha-rename:442|) (= |$cond-alpha-rename:449| 0) (= |$alpha-21:n_1032| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:445| 0)) (not (= |$alpha-17:m_1031| 0)) )
      (|ack_without_checking_1087$unknown:26| 1 |$cond-alpha-rename:449| |$cond-alpha-rename:445| 1 (- |$cond-alpha-rename:445| 1) |$cond-alpha-rename:449| |$cond-alpha-rename:445| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:723| Int) (|$cond-alpha-rename:724| Int) (|$cond-alpha-rename:725| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:727| Int) (|$cond-alpha-rename:728| Int) (|$cond-alpha-rename:729| Int) (|$cond-alpha-rename:730| Int) (|$cond-alpha-rename:731| Int) (|$cond-alpha-rename:732| Int) (|$cond-alpha-rename:733| Int) (|$cond-alpha-rename:734| Int) (|$cond-alpha-rename:735| Int) (|$cond-alpha-rename:736| Int) (|$cond-alpha-rename:737| Int) (|$cond-alpha-rename:738| Int) (|$cond-alpha-rename:792| Int) (|$cond-alpha-rename:794| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:738| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:734| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:738| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:734| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:730| |$cond-alpha-rename:729| |$cond-alpha-rename:728| |$cond-alpha-rename:727| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:738| |$cond-alpha-rename:737| |$cond-alpha-rename:736| |$cond-alpha-rename:735| |$cond-alpha-rename:734| |$cond-alpha-rename:733| |$cond-alpha-rename:732| |$cond-alpha-rename:731|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| 1 |$cond-alpha-rename:738| |$cond-alpha-rename:734| 1 (- |$cond-alpha-rename:734| 1) |$cond-alpha-rename:738| |$cond-alpha-rename:734| 1) (|bot$unknown:29| |$cond-alpha-rename:242| 1) (|bot$unknown:29| |$cond-alpha-rename:792| 1) (|fail$unknown:31| |$cond-alpha-rename:244| 1) (|fail$unknown:31| |$cond-alpha-rename:794| 1) (not (= 0 1)) (= |$cond-alpha-rename:738| 0) (= |$cond-alpha-rename:738| 0) (= |$cond-alpha-rename:730| 0) (= |$cond-alpha-rename:738| 0) (not (= |$cond-alpha-rename:734| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:734|) 0) (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:734|) 0) (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:738|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:734| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:734|) 0) (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:734|) 0) (+ (+ 0 (- |$cond-alpha-rename:734| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:738|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:726| 0)) (not (= |$cond-alpha-rename:734| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:734| 1) (- |$cond-alpha-rename:734| 1)) (= (- |$cond-alpha-rename:734| 1) (- |$cond-alpha-rename:734| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| |$cond-alpha-rename:738| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:734| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:801| Int) (|$cond-alpha-rename:802| Int) (|$cond-alpha-rename:803| Int) (|$cond-alpha-rename:804| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:807| Int) (|$cond-alpha-rename:808| Int) (|$cond-alpha-rename:809| Int) (|$cond-alpha-rename:810| Int) (|$cond-alpha-rename:811| Int) (|$cond-alpha-rename:812| Int) (|$cond-alpha-rename:813| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:813| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:809| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:813| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:809| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:803| |$cond-alpha-rename:802| |$cond-alpha-rename:801| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:813| |$cond-alpha-rename:812| |$cond-alpha-rename:811| |$cond-alpha-rename:810| |$cond-alpha-rename:809| |$cond-alpha-rename:808| |$cond-alpha-rename:807| |$cond-alpha-rename:806|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| 1 |$cond-alpha-rename:813| |$cond-alpha-rename:809| 1 (- |$cond-alpha-rename:809| 1) |$cond-alpha-rename:813| |$cond-alpha-rename:809| 1) (|bot$unknown:29| |$cond-alpha-rename:242| 1) (|fail$unknown:31| |$cond-alpha-rename:244| 1) (not (= 0 1)) (= |$cond-alpha-rename:813| 0) (= |$cond-alpha-rename:813| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:809|) 0) (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:809|) 0) (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:813|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:805| 0) (= |$cond-alpha-rename:813| 0) (not (= |$cond-alpha-rename:809| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:809|) 0) (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:809|) 0) (+ (+ 0 (- |$cond-alpha-rename:809| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:813|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:809| 0)) (not (= |$cond-alpha-rename:801| 0)) (not (= |$cond-alpha-rename:809| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:809| 1) (- |$cond-alpha-rename:809| 1)) (= (- |$cond-alpha-rename:809| 1) (- |$cond-alpha-rename:809| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| |$cond-alpha-rename:813| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:809| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:869| Int) (|$cond-alpha-rename:870| Int) (|$cond-alpha-rename:871| Int) (|$cond-alpha-rename:872| Int) (|$cond-alpha-rename:873| Int) (|$cond-alpha-rename:874| Int) (|$cond-alpha-rename:875| Int) (|$cond-alpha-rename:876| Int) (|$cond-alpha-rename:877| Int) (|$cond-alpha-rename:878| Int) (|$cond-alpha-rename:879| Int) (|$cond-alpha-rename:880| Int) (|$cond-alpha-rename:881| Int) (|$cond-alpha-rename:882| Int) (|$cond-alpha-rename:883| Int) (|$cond-alpha-rename:884| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:884| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:880| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:884| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:880| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:876| |$cond-alpha-rename:875| |$cond-alpha-rename:874| |$cond-alpha-rename:873| |$cond-alpha-rename:872| |$cond-alpha-rename:871| |$cond-alpha-rename:870| |$cond-alpha-rename:869|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:884| |$cond-alpha-rename:883| |$cond-alpha-rename:882| |$cond-alpha-rename:881| |$cond-alpha-rename:880| |$cond-alpha-rename:879| |$cond-alpha-rename:878| |$cond-alpha-rename:877|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| 1 |$cond-alpha-rename:884| |$cond-alpha-rename:880| 1 (- |$cond-alpha-rename:880| 1) |$cond-alpha-rename:884| |$cond-alpha-rename:880| 1) (|bot$unknown:29| |$cond-alpha-rename:242| 1) (|fail$unknown:31| |$cond-alpha-rename:244| 1) (not (= 0 1)) (= |$cond-alpha-rename:884| 0) (= |$cond-alpha-rename:884| 0) (= |$cond-alpha-rename:876| 0) (= |$cond-alpha-rename:884| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:880| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:880|) 0) (+ (+ 0 (- |$cond-alpha-rename:880| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:880| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:880|) 0) (+ (+ 0 (- |$cond-alpha-rename:880| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:884|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:880| 0)) (not (= |$cond-alpha-rename:872| 0)) (not (= |$cond-alpha-rename:880| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:880| 1) (- |$cond-alpha-rename:880| 1)) (= (- |$cond-alpha-rename:880| 1) (- |$cond-alpha-rename:880| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:191| |$cond-alpha-rename:884| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:880| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:891| Int) (|$cond-alpha-rename:892| Int) (|$cond-alpha-rename:893| Int) (|$cond-alpha-rename:894| Int) (|$cond-alpha-rename:895| Int) (|$cond-alpha-rename:896| Int) (|$cond-alpha-rename:897| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:899| Int) (|$cond-alpha-rename:900| Int) (|$cond-alpha-rename:901| Int) (|$cond-alpha-rename:902| Int) (|$cond-alpha-rename:903| Int) (|$cond-alpha-rename:904| Int) (|$cond-alpha-rename:905| Int) (|$cond-alpha-rename:906| Int) (|$cond-alpha-rename:960| Int) (|$cond-alpha-rename:962| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:906| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:902| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:906| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:902| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:898| |$cond-alpha-rename:897| |$cond-alpha-rename:896| |$cond-alpha-rename:895| |$cond-alpha-rename:894| |$cond-alpha-rename:893| |$cond-alpha-rename:892| |$cond-alpha-rename:891|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:906| |$cond-alpha-rename:905| |$cond-alpha-rename:904| |$cond-alpha-rename:903| |$cond-alpha-rename:902| |$cond-alpha-rename:901| |$cond-alpha-rename:900| |$cond-alpha-rename:899|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| 1 |$cond-alpha-rename:906| |$cond-alpha-rename:902| 1 (- |$cond-alpha-rename:902| 1) |$cond-alpha-rename:906| |$cond-alpha-rename:902| 1) (|bot$unknown:29| |$cond-alpha-rename:960| 1) (|fail$unknown:31| |$cond-alpha-rename:962| 1) (not (= 0 1)) (= |$cond-alpha-rename:906| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:902|) 0) (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:902|) 0) (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:906|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:906| 0) (= |$cond-alpha-rename:898| 0) (= |$cond-alpha-rename:906| 0) (not (= |$cond-alpha-rename:902| 0)) (not (= |$cond-alpha-rename:902| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:902|) 0) (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:902|) 0) (+ (+ 0 (- |$cond-alpha-rename:902| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:906|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:894| 0)) (not (= |$cond-alpha-rename:902| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:902| 1) (- |$cond-alpha-rename:902| 1)) (= (- |$cond-alpha-rename:902| 1) (- |$cond-alpha-rename:902| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| |$cond-alpha-rename:906| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:902| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:966| Int) (|$cond-alpha-rename:967| Int) (|$cond-alpha-rename:968| Int) (|$cond-alpha-rename:969| Int) (|$cond-alpha-rename:970| Int) (|$cond-alpha-rename:971| Int) (|$cond-alpha-rename:972| Int) (|$cond-alpha-rename:973| Int) (|$cond-alpha-rename:974| Int) (|$cond-alpha-rename:975| Int) (|$cond-alpha-rename:976| Int) (|$cond-alpha-rename:977| Int) (|$cond-alpha-rename:978| Int) (|$cond-alpha-rename:979| Int) (|$cond-alpha-rename:980| Int) (|$cond-alpha-rename:981| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:981| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:977| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:981| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:977| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:973| |$cond-alpha-rename:972| |$cond-alpha-rename:971| |$cond-alpha-rename:970| |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:981| |$cond-alpha-rename:980| |$cond-alpha-rename:979| |$cond-alpha-rename:978| |$cond-alpha-rename:977| |$cond-alpha-rename:976| |$cond-alpha-rename:975| |$cond-alpha-rename:974|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| 1 |$cond-alpha-rename:981| |$cond-alpha-rename:977| 1 (- |$cond-alpha-rename:977| 1) |$cond-alpha-rename:981| |$cond-alpha-rename:977| 1) (not (= 0 1)) (or (and (>= (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:977|) 0) (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0))) (and (>= (+ (+ 0 |$cond-alpha-rename:977|) 0) (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:981|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:973| 0) (= |$cond-alpha-rename:981| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:977|) 0) (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:977|) 0) (+ (+ 0 (- |$cond-alpha-rename:977| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:981|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:981| 0) (= |$cond-alpha-rename:981| 0) (not (= |$cond-alpha-rename:969| 0)) (not (= |$cond-alpha-rename:977| 0)) (not (= |$cond-alpha-rename:977| 0)) (not (= |$cond-alpha-rename:977| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:977| 1) (- |$cond-alpha-rename:977| 1)) (= (- |$cond-alpha-rename:977| 1) (- |$cond-alpha-rename:977| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| |$cond-alpha-rename:981| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:977| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1037| Int) (|$cond-alpha-rename:1038| Int) (|$cond-alpha-rename:1039| Int) (|$cond-alpha-rename:1040| Int) (|$cond-alpha-rename:1041| Int) (|$cond-alpha-rename:1042| Int) (|$cond-alpha-rename:1043| Int) (|$cond-alpha-rename:1044| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:1046| Int) (|$cond-alpha-rename:1047| Int) (|$cond-alpha-rename:1049| Int) (|$cond-alpha-rename:1050| Int) (|$cond-alpha-rename:1051| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:256| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:252| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:248| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1044| |$cond-alpha-rename:1043| |$cond-alpha-rename:1042| |$cond-alpha-rename:1041| |$cond-alpha-rename:1040| |$cond-alpha-rename:1039| |$cond-alpha-rename:1038| |$cond-alpha-rename:1037|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:252| |$cond-alpha-rename:1051| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:248| |$cond-alpha-rename:1047| |$cond-alpha-rename:1046| |$cond-alpha-rename:1045|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| 1 |$cond-alpha-rename:252| |$cond-alpha-rename:248| 1 (- |$cond-alpha-rename:248| 1) |$cond-alpha-rename:252| |$cond-alpha-rename:248| 1) (not (= 0 1)) (= |$cond-alpha-rename:252| 0) (= |$cond-alpha-rename:1044| 0) (= |$cond-alpha-rename:252| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:248|) 0) (+ (+ 0 (- |$cond-alpha-rename:248| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:248| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:248|) 0) (+ (+ 0 (- |$cond-alpha-rename:248| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:252|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:252| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:248| 0)) (not (= |$cond-alpha-rename:1040| 0)) (not (= |$cond-alpha-rename:248| 0)) (not (= |$cond-alpha-rename:248| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:248| 1) (- |$cond-alpha-rename:248| 1)) (= (- |$cond-alpha-rename:248| 1) (- |$cond-alpha-rename:248| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:256| |$cond-alpha-rename:252| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:248| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1059| Int) (|$cond-alpha-rename:1060| Int) (|$cond-alpha-rename:1061| Int) (|$cond-alpha-rename:1062| Int) (|$cond-alpha-rename:1063| Int) (|$cond-alpha-rename:1064| Int) (|$cond-alpha-rename:1065| Int) (|$cond-alpha-rename:1066| Int) (|$cond-alpha-rename:1067| Int) (|$cond-alpha-rename:1068| Int) (|$cond-alpha-rename:1069| Int) (|$cond-alpha-rename:1071| Int) (|$cond-alpha-rename:1072| Int) (|$cond-alpha-rename:1073| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:317| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1066| |$cond-alpha-rename:1065| |$cond-alpha-rename:1064| |$cond-alpha-rename:1063| |$cond-alpha-rename:1062| |$cond-alpha-rename:1061| |$cond-alpha-rename:1060| |$cond-alpha-rename:1059|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:1073| |$cond-alpha-rename:1072| |$cond-alpha-rename:1071| |$cond-alpha-rename:309| |$cond-alpha-rename:1069| |$cond-alpha-rename:1068| |$cond-alpha-rename:1067|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| 1 |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1 (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1) (|bot$unknown:29| |$cond-alpha-rename:1128| 1) (|fail$unknown:31| |$cond-alpha-rename:1130| 1) (not (= 0 1)) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:1066| 0) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:313| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:309| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:309|) 0) (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:309|) 0) (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:313|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) (not (= |$cond-alpha-rename:1062| 0)) (not (= |$cond-alpha-rename:309| 0)) (not (= |$cond-alpha-rename:309| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1137| Int) (|$cond-alpha-rename:1138| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:1140| Int) (|$cond-alpha-rename:1141| Int) (|$cond-alpha-rename:1142| Int) (|$cond-alpha-rename:1143| Int) (|$cond-alpha-rename:1144| Int) (|$cond-alpha-rename:1146| Int) (|$cond-alpha-rename:1147| Int) (|$cond-alpha-rename:1148| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:317| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1141| |$cond-alpha-rename:1140| |$cond-alpha-rename:1139| |$cond-alpha-rename:1138| |$cond-alpha-rename:1137| |$cond-alpha-rename:1136| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:1148| |$cond-alpha-rename:1147| |$cond-alpha-rename:1146| |$cond-alpha-rename:309| |$cond-alpha-rename:1144| |$cond-alpha-rename:1143| |$cond-alpha-rename:1142|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| 1 |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1 (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1) (not (= 0 1)) (= |$cond-alpha-rename:313| 0) (or (and (> (+ (+ 0 |$cond-alpha-rename:309|) 0) (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:309|) 0) (+ (+ 0 (- |$cond-alpha-rename:309| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:313|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0)))) (= |$cond-alpha-rename:1141| 0) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:313| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:309| 0)) (not (= |$cond-alpha-rename:1137| 0)) (not (= |$cond-alpha-rename:309| 0)) (not (= |$cond-alpha-rename:309| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$cond-alpha-rename:1205| Int) (|$cond-alpha-rename:1206| Int) (|$cond-alpha-rename:1207| Int) (|$cond-alpha-rename:1208| Int) (|$cond-alpha-rename:1209| Int) (|$cond-alpha-rename:1210| Int) (|$cond-alpha-rename:1211| Int) (|$cond-alpha-rename:1212| Int) (|$cond-alpha-rename:1213| Int) (|$cond-alpha-rename:1214| Int) (|$cond-alpha-rename:1215| Int) (|$cond-alpha-rename:1217| Int) (|$cond-alpha-rename:1218| Int) (|$cond-alpha-rename:1219| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:317| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1212| |$cond-alpha-rename:1211| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1208| |$cond-alpha-rename:1207| |$cond-alpha-rename:1206| |$cond-alpha-rename:1205|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:1219| |$cond-alpha-rename:1218| |$cond-alpha-rename:1217| |$cond-alpha-rename:309| |$cond-alpha-rename:1215| |$cond-alpha-rename:1214| |$cond-alpha-rename:1213|) (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:313| |$cond-alpha-rename:312| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| 1 |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1 (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:313| |$cond-alpha-rename:309| 1) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:1212| 0) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:313| 0) (not (not (= 0 1))) (not (= |$cond-alpha-rename:309| 0)) (not (= |$cond-alpha-rename:1208| 0)) (not (= |$cond-alpha-rename:309| 0)) (not (= |$cond-alpha-rename:309| 0)) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) )
      (|ack_without_checking_1087$unknown:27| |$cond-alpha-rename:317| |$cond-alpha-rename:313| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$cond-alpha-rename:309| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:105| Int) (|$knormal:88| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:27| |$knormal:105| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:27| |$knormal:105| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) (|$knormal:88| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (|ack_without_checking_1087$unknown:27| |$knormal:88| (- |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1 |$alpha-17:m_1031| |$alpha-21:n_1032| |$alpha-17:m_1031| 1) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
      (|ack_without_checking_1087$unknown:26| |$knormal:88| |$alpha-21:n_1032| |$alpha-17:m_1031| 1 (- |$alpha-17:m_1031| 1) |$alpha-21:n_1032| |$alpha-17:m_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (= |$alpha-17:m_1031| 0) )
      (|ack_without_checking_1087$unknown:27| (+ |$alpha-21:n_1032| 1) |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1093| Int) (|$alpha-15:x_DO_NOT_CARE_1094| Int) (|$alpha-16:x_DO_NOT_CARE_1095| Int) (|$alpha-17:m_1031| Int) (|$alpha-18:set_flag_ack_1075| Int) (|$alpha-19:s_ack_m_1070| Int) (|$alpha-20:s_ack_n_1071| Int) (|$alpha-21:n_1032| Int) )
    (=>
      ( and (|ack_without_checking_1087$unknown:26| |$alpha-21:n_1032| |$alpha-20:s_ack_n_1071| |$alpha-19:s_ack_m_1070| |$alpha-18:set_flag_ack_1075| |$alpha-17:m_1031| |$alpha-16:x_DO_NOT_CARE_1095| |$alpha-15:x_DO_NOT_CARE_1094| |$alpha-14:x_DO_NOT_CARE_1093|) (not (= |$alpha-17:m_1031| 0)) (not (= |$alpha-21:n_1032| 0)) )
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
  (not (exists ( (|$cond-alpha-rename:1739| Int) (|$cond-alpha-rename:1740| Int) (|$cond-alpha-rename:1741| Int) (|$cond-alpha-rename:1742| Int) (|$cond-alpha-rename:1743| Int) (|$cond-alpha-rename:1744| Int) (|$cond-alpha-rename:1745| Int) (|$cond-alpha-rename:1746| Int) )
    ( and (|ack_without_checking_1087$unknown:26| |$cond-alpha-rename:1746| |$cond-alpha-rename:1745| |$cond-alpha-rename:1744| |$cond-alpha-rename:1743| |$cond-alpha-rename:1742| |$cond-alpha-rename:1741| |$cond-alpha-rename:1740| |$cond-alpha-rename:1739|) (not (= 0 1)) (= |$cond-alpha-rename:1746| 0) (not (= |$cond-alpha-rename:1742| 0)) (not (or (and (> (+ (+ 0 |$cond-alpha-rename:1742|) 0) (+ (+ 0 (- |$cond-alpha-rename:1742| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1742| 1)) 0) 0)) (and (>= (+ (+ 0 |$cond-alpha-rename:1742|) 0) (+ (+ 0 (- |$cond-alpha-rename:1742| 1)) 0)) (and (> (+ (+ 0 0) |$cond-alpha-rename:1746|) (+ (+ 0 0) 1)) (>= (+ (+ 0 0) 1) 0))))) )
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

