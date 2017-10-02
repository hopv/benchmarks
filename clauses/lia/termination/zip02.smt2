(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec zip_1030 zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062 s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032 =
    let u =if prev_set_flag_zip_1062 then
             if ((0 * 1) + (1 * s_prev_zip_xs_1060)) +
                (0 * s_prev_zip_ys_1061) >
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
               ()
             else
               let u_3427 = fail ()
               in
                 bot()
           else () in
           zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080
             x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062
             s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032
  let rec zip_without_checking_1077 x_DO_NOT_CARE_1083 x_DO_NOT_CARE_1084 x_DO_NOT_CARE_1085 xs_1031 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys_1032 =
    let set_flag_zip_1063 = true
    in
    let s_zip_ys_1059 = ys_1032
    in
    let s_zip_xs_1058 = xs_1031
    in
      if xs_1031 <= 0 then
        0
      else
        let xs'_1033 = xs_1031 - 1
        in
          if ys_1032 <= 0 then
            0
          else
            let ys'_1034 = ys_1032 - 1
            in
              1 +
              zip_1030 zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 xs'_1033
                set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys'_1034
  
  let main l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059
        l1_1037 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |zip_without_checking_1077$unknown:31|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:30|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) )
    ( and (not (and (>= (- |$cond-alpha-rename:170| 1) 0) (> |$cond-alpha-rename:170| (- |$cond-alpha-rename:170| 1)))) (not (<= |$cond-alpha-rename:174| 0)) (not (<= |$cond-alpha-rename:170| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:167|) )
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:430| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:433| Int) (|$cond-alpha-rename:434| Int) (|$cond-alpha-rename:435| Int) (|$cond-alpha-rename:436| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:461| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:459| 1) (|fail$unknown:4| |$cond-alpha-rename:461| 1) (|zip_without_checking_1077$unknown:30| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:436| |$cond-alpha-rename:435| |$cond-alpha-rename:434| |$cond-alpha-rename:433| |$cond-alpha-rename:432| |$cond-alpha-rename:431| |$cond-alpha-rename:430| |$cond-alpha-rename:429|) (not (= 0 1)) (not (<= |$cond-alpha-rename:432| 0)) (not (<= |$cond-alpha-rename:436| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:432|) 0) (+ (+ 0 (- |$cond-alpha-rename:432| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:432| 1)) 0) 0))) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:30| (- |$cond-alpha-rename:436| 1) |$cond-alpha-rename:436| |$cond-alpha-rename:432| 1 (- |$cond-alpha-rename:432| 1) |$cond-alpha-rename:436| |$cond-alpha-rename:432| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:462| Int) (|$cond-alpha-rename:463| Int) (|$cond-alpha-rename:464| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:466| Int) (|$cond-alpha-rename:467| Int) (|$cond-alpha-rename:468| Int) (|$cond-alpha-rename:469| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:30| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:469| |$cond-alpha-rename:468| |$cond-alpha-rename:467| |$cond-alpha-rename:466| |$cond-alpha-rename:465| |$cond-alpha-rename:464| |$cond-alpha-rename:463| |$cond-alpha-rename:462|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:465| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:465|) 0) (+ (+ 0 (- |$cond-alpha-rename:465| 1)) 0)) (not (<= |$cond-alpha-rename:465| 0)) (not (<= |$cond-alpha-rename:469| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:30| (- |$cond-alpha-rename:469| 1) |$cond-alpha-rename:469| |$cond-alpha-rename:465| 1 (- |$cond-alpha-rename:465| 1) |$cond-alpha-rename:469| |$cond-alpha-rename:465| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:491| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:493| Int) (|$cond-alpha-rename:494| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:498| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:30| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:498| |$cond-alpha-rename:497| |$cond-alpha-rename:496| |$cond-alpha-rename:495| |$cond-alpha-rename:494| |$cond-alpha-rename:493| |$cond-alpha-rename:492| |$cond-alpha-rename:491|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:494| 0)) (not (<= |$cond-alpha-rename:498| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:30| (- |$cond-alpha-rename:498| 1) |$cond-alpha-rename:498| |$cond-alpha-rename:494| 1 (- |$cond-alpha-rename:494| 1) |$cond-alpha-rename:498| |$cond-alpha-rename:494| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1005| Int) (|$cond-alpha-rename:1006| Int) (|$cond-alpha-rename:1007| Int) (|$cond-alpha-rename:1008| Int) (|$cond-alpha-rename:1009| Int) (|$cond-alpha-rename:1010| Int) (|$cond-alpha-rename:1011| Int) (|$cond-alpha-rename:1012| Int) (|$cond-alpha-rename:1017| Int) (|$cond-alpha-rename:1018| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1028| Int) (|$cond-alpha-rename:1029| Int) (|$cond-alpha-rename:1030| Int) (|$cond-alpha-rename:1031| Int) (|$cond-alpha-rename:1032| Int) (|$cond-alpha-rename:1033| Int) (|$cond-alpha-rename:1034| Int) (|$cond-alpha-rename:1035| Int) (|$cond-alpha-rename:1058| Int) (|$cond-alpha-rename:1060| Int) (|$cond-alpha-rename:1061| Int) (|$cond-alpha-rename:1081| Int) (|$cond-alpha-rename:1083| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1035| 1) (- |$cond-alpha-rename:1035| 1)) (= (- |$cond-alpha-rename:1035| 1) (- |$cond-alpha-rename:1035| 1)) (= (- |$cond-alpha-rename:1031| 1) (- |$cond-alpha-rename:1031| 1)) (= (- |$cond-alpha-rename:1031| 1) (- |$cond-alpha-rename:1031| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1035| 0)) (not (<= |$cond-alpha-rename:1031| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1031|) 0) (+ (+ 0 (- |$cond-alpha-rename:1031| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1031| 1)) 0) 0))) (not (and (> (+ (+ 0 |$cond-alpha-rename:1031|) 0) (+ (+ 0 (- |$cond-alpha-rename:1031| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1031| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1035| 0)) (not (<= |$cond-alpha-rename:1031| 0)) (not (<= |$cond-alpha-rename:1035| 0)) (not (<= |$cond-alpha-rename:1031| 0)) (not (<= |$cond-alpha-rename:1012| 0)) (not (<= |$cond-alpha-rename:1008| 0)) (|zip_without_checking_1077$unknown:31| |$cond-alpha-rename:1061| (- |$cond-alpha-rename:1035| 1) |$cond-alpha-rename:1035| |$cond-alpha-rename:1031| 1 (- |$cond-alpha-rename:1031| 1) |$cond-alpha-rename:1035| |$cond-alpha-rename:1031| 1) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1035| |$cond-alpha-rename:1034| |$cond-alpha-rename:1033| |$cond-alpha-rename:1032| |$cond-alpha-rename:1031| |$cond-alpha-rename:1030| |$cond-alpha-rename:1029| |$cond-alpha-rename:1028|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1035| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1031| |$cond-alpha-rename:1019| |$cond-alpha-rename:1018| |$cond-alpha-rename:1017|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1012| |$cond-alpha-rename:1011| |$cond-alpha-rename:1010| |$cond-alpha-rename:1009| |$cond-alpha-rename:1008| |$cond-alpha-rename:1007| |$cond-alpha-rename:1006| |$cond-alpha-rename:1005|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1035| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1083| 1) (|fail$unknown:4| |$cond-alpha-rename:1060| 1) (|bot$unknown:2| |$cond-alpha-rename:1081| 1) (|bot$unknown:2| |$cond-alpha-rename:1058| 1) )
      (|zip_without_checking_1077$unknown:31| (+ 1 |$cond-alpha-rename:1061|) |$cond-alpha-rename:1035| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1084| Int) (|$cond-alpha-rename:1085| Int) (|$cond-alpha-rename:1086| Int) (|$cond-alpha-rename:1087| Int) (|$cond-alpha-rename:1088| Int) (|$cond-alpha-rename:1089| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1091| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:1098| Int) (|$cond-alpha-rename:1100| Int) (|$cond-alpha-rename:1101| Int) (|$cond-alpha-rename:1102| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1108| Int) (|$cond-alpha-rename:1109| Int) (|$cond-alpha-rename:1110| Int) (|$cond-alpha-rename:1111| Int) (|$cond-alpha-rename:1112| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:1114| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:1156| Int) (|$cond-alpha-rename:1158| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1114| 1) (- |$cond-alpha-rename:1114| 1)) (= (- |$cond-alpha-rename:1114| 1) (- |$cond-alpha-rename:1114| 1)) (= (- |$cond-alpha-rename:1110| 1) (- |$cond-alpha-rename:1110| 1)) (= (- |$cond-alpha-rename:1110| 1) (- |$cond-alpha-rename:1110| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1114| 0)) (not (<= |$cond-alpha-rename:1110| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1110|) 0) (+ (+ 0 (- |$cond-alpha-rename:1110| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1110| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1114| 0)) (not (<= |$cond-alpha-rename:1110| 0)) (not (<= |$cond-alpha-rename:1114| 0)) (not (<= |$cond-alpha-rename:1110| 0)) (not (<= |$cond-alpha-rename:1091| 0)) (not (<= |$cond-alpha-rename:1087| 0)) (> (+ (+ 0 |$cond-alpha-rename:1110|) 0) (+ (+ 0 (- |$cond-alpha-rename:1110| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1110| 1)) 0) 0) (|zip_without_checking_1077$unknown:31| |$cond-alpha-rename:1136| (- |$cond-alpha-rename:1114| 1) |$cond-alpha-rename:1114| |$cond-alpha-rename:1110| 1 (- |$cond-alpha-rename:1110| 1) |$cond-alpha-rename:1114| |$cond-alpha-rename:1110| 1) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1114| |$cond-alpha-rename:1113| |$cond-alpha-rename:1112| |$cond-alpha-rename:1111| |$cond-alpha-rename:1110| |$cond-alpha-rename:1109| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1114| |$cond-alpha-rename:1102| |$cond-alpha-rename:1101| |$cond-alpha-rename:1100| |$cond-alpha-rename:1110| |$cond-alpha-rename:1098| |$cond-alpha-rename:1097| |$cond-alpha-rename:1096|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1091| |$cond-alpha-rename:1090| |$cond-alpha-rename:1089| |$cond-alpha-rename:1088| |$cond-alpha-rename:1087| |$cond-alpha-rename:1086| |$cond-alpha-rename:1085| |$cond-alpha-rename:1084|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1114| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1110| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1158| 1) (|bot$unknown:2| |$cond-alpha-rename:1156| 1) )
      (|zip_without_checking_1077$unknown:31| (+ 1 |$cond-alpha-rename:1136|) |$cond-alpha-rename:1114| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1110| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1216| Int) (|$cond-alpha-rename:1217| Int) (|$cond-alpha-rename:1218| Int) (|$cond-alpha-rename:1219| Int) (|$cond-alpha-rename:1220| Int) (|$cond-alpha-rename:1221| Int) (|$cond-alpha-rename:1222| Int) (|$cond-alpha-rename:1223| Int) (|$cond-alpha-rename:1228| Int) (|$cond-alpha-rename:1229| Int) (|$cond-alpha-rename:1230| Int) (|$cond-alpha-rename:1232| Int) (|$cond-alpha-rename:1233| Int) (|$cond-alpha-rename:1234| Int) (|$cond-alpha-rename:1239| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1241| Int) (|$cond-alpha-rename:1242| Int) (|$cond-alpha-rename:1243| Int) (|$cond-alpha-rename:1244| Int) (|$cond-alpha-rename:1245| Int) (|$cond-alpha-rename:1246| Int) (|$cond-alpha-rename:1269| Int) (|$cond-alpha-rename:1271| Int) (|$cond-alpha-rename:1272| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1246| 1) (- |$cond-alpha-rename:1246| 1)) (= (- |$cond-alpha-rename:1246| 1) (- |$cond-alpha-rename:1246| 1)) (= (- |$cond-alpha-rename:1242| 1) (- |$cond-alpha-rename:1242| 1)) (= (- |$cond-alpha-rename:1242| 1) (- |$cond-alpha-rename:1242| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1246| 0)) (not (<= |$cond-alpha-rename:1242| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1242|) 0) (+ (+ 0 (- |$cond-alpha-rename:1242| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1242| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1246| 0)) (not (<= |$cond-alpha-rename:1242| 0)) (not (<= |$cond-alpha-rename:1246| 0)) (not (<= |$cond-alpha-rename:1242| 0)) (not (<= |$cond-alpha-rename:1223| 0)) (not (<= |$cond-alpha-rename:1219| 0)) (> (+ (+ 0 |$cond-alpha-rename:1242|) 0) (+ (+ 0 (- |$cond-alpha-rename:1242| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1242| 1)) 0) 0) (|zip_without_checking_1077$unknown:31| |$cond-alpha-rename:1272| (- |$cond-alpha-rename:1246| 1) |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1 (- |$cond-alpha-rename:1242| 1) |$cond-alpha-rename:1246| |$cond-alpha-rename:1242| 1) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1246| |$cond-alpha-rename:1245| |$cond-alpha-rename:1244| |$cond-alpha-rename:1243| |$cond-alpha-rename:1242| |$cond-alpha-rename:1241| |$cond-alpha-rename:1240| |$cond-alpha-rename:1239|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1246| |$cond-alpha-rename:1234| |$cond-alpha-rename:1233| |$cond-alpha-rename:1232| |$cond-alpha-rename:1242| |$cond-alpha-rename:1230| |$cond-alpha-rename:1229| |$cond-alpha-rename:1228|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1223| |$cond-alpha-rename:1222| |$cond-alpha-rename:1221| |$cond-alpha-rename:1220| |$cond-alpha-rename:1219| |$cond-alpha-rename:1218| |$cond-alpha-rename:1217| |$cond-alpha-rename:1216|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1246| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1242| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1271| 1) (|bot$unknown:2| |$cond-alpha-rename:1269| 1) )
      (|zip_without_checking_1077$unknown:31| (+ 1 |$cond-alpha-rename:1272|) |$cond-alpha-rename:1246| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1242| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1291| Int) (|$cond-alpha-rename:1292| Int) (|$cond-alpha-rename:1293| Int) (|$cond-alpha-rename:1294| Int) (|$cond-alpha-rename:1295| Int) (|$cond-alpha-rename:1296| Int) (|$cond-alpha-rename:1297| Int) (|$cond-alpha-rename:1298| Int) (|$cond-alpha-rename:1303| Int) (|$cond-alpha-rename:1304| Int) (|$cond-alpha-rename:1305| Int) (|$cond-alpha-rename:1307| Int) (|$cond-alpha-rename:1308| Int) (|$cond-alpha-rename:1309| Int) (|$cond-alpha-rename:1314| Int) (|$cond-alpha-rename:1315| Int) (|$cond-alpha-rename:1316| Int) (|$cond-alpha-rename:1317| Int) (|$cond-alpha-rename:1318| Int) (|$cond-alpha-rename:1319| Int) (|$cond-alpha-rename:1320| Int) (|$cond-alpha-rename:1321| Int) (|$cond-alpha-rename:1343| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1321| 1) (- |$cond-alpha-rename:1321| 1)) (= (- |$cond-alpha-rename:1321| 1) (- |$cond-alpha-rename:1321| 1)) (= (- |$cond-alpha-rename:1317| 1) (- |$cond-alpha-rename:1317| 1)) (= (- |$cond-alpha-rename:1317| 1) (- |$cond-alpha-rename:1317| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1321| 0)) (not (<= |$cond-alpha-rename:1317| 0)) (not (<= |$cond-alpha-rename:1321| 0)) (not (<= |$cond-alpha-rename:1317| 0)) (not (<= |$cond-alpha-rename:1321| 0)) (not (<= |$cond-alpha-rename:1317| 0)) (not (<= |$cond-alpha-rename:1298| 0)) (not (<= |$cond-alpha-rename:1294| 0)) (> (+ (+ 0 |$cond-alpha-rename:1317|) 0) (+ (+ 0 (- |$cond-alpha-rename:1317| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1317| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:1317|) 0) (+ (+ 0 (- |$cond-alpha-rename:1317| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1317| 1)) 0) 0) (|zip_without_checking_1077$unknown:31| |$cond-alpha-rename:1343| (- |$cond-alpha-rename:1321| 1) |$cond-alpha-rename:1321| |$cond-alpha-rename:1317| 1 (- |$cond-alpha-rename:1317| 1) |$cond-alpha-rename:1321| |$cond-alpha-rename:1317| 1) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1321| |$cond-alpha-rename:1320| |$cond-alpha-rename:1319| |$cond-alpha-rename:1318| |$cond-alpha-rename:1317| |$cond-alpha-rename:1316| |$cond-alpha-rename:1315| |$cond-alpha-rename:1314|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1321| |$cond-alpha-rename:1309| |$cond-alpha-rename:1308| |$cond-alpha-rename:1307| |$cond-alpha-rename:1317| |$cond-alpha-rename:1305| |$cond-alpha-rename:1304| |$cond-alpha-rename:1303|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1298| |$cond-alpha-rename:1297| |$cond-alpha-rename:1296| |$cond-alpha-rename:1295| |$cond-alpha-rename:1294| |$cond-alpha-rename:1293| |$cond-alpha-rename:1292| |$cond-alpha-rename:1291|) (|zip_without_checking_1077$unknown:30| |$cond-alpha-rename:1321| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1317| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) )
      (|zip_without_checking_1077$unknown:31| (+ 1 |$cond-alpha-rename:1343|) |$cond-alpha-rename:1321| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1317| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (<= |$alpha-17:xs_1031| 0) (|zip_without_checking_1077$unknown:30| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) )
      (|zip_without_checking_1077$unknown:31| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (not (<= |$alpha-17:xs_1031| 0)) (<= |$alpha-21:ys_1032| 0) (|zip_without_checking_1077$unknown:30| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) )
      (|zip_without_checking_1077$unknown:31| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:l1_1037| Int) (|$alpha-28:l2_1038| Int) )
    (=>
      ( and true )
      (|zip_without_checking_1077$unknown:30| |$alpha-28:l2_1038| 0 0 0 |$alpha-27:l1_1037| 0 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

