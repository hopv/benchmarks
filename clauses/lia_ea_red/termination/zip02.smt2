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
  
  let main_1035 l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059
        l1_1037 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |zip_without_checking_1077$unknown:34|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |main_1035$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:33|
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
  (not (exists ( (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) )
    ( and (not (and (>= (- |$cond-alpha-rename:187| 1) 0) (> |$cond-alpha-rename:187| (- |$cond-alpha-rename:187| 1)))) (not (<= |$cond-alpha-rename:191| 0)) (not (<= |$cond-alpha-rename:187| 0)) (not (= 0 1)) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187| |$cond-alpha-rename:186| |$cond-alpha-rename:185| |$cond-alpha-rename:184|) )
    )
  )
)
(assert
  (forall ( (|$alpha-27:l1_1037| Int) (|$alpha-28:l2_1038| Int) )
    (=>
      ( and (|main_1035$unknown:6| |$alpha-28:l2_1038| |$alpha-27:l1_1037|) )
      (|zip_without_checking_1077$unknown:33| |$alpha-28:l2_1038| 0 0 0 |$alpha-27:l1_1037| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:448| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:476| Int) (|$cond-alpha-rename:478| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:476| 1) (|fail$unknown:4| |$cond-alpha-rename:478| 1) (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:453| |$cond-alpha-rename:452| |$cond-alpha-rename:451| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:448| |$cond-alpha-rename:447| |$cond-alpha-rename:446|) (not (= 0 1)) (not (<= |$cond-alpha-rename:449| 0)) (not (<= |$cond-alpha-rename:453| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:449|) 0) (+ (+ 0 (- |$cond-alpha-rename:449| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:449| 1)) 0) 0))) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:453| 1) |$cond-alpha-rename:453| |$cond-alpha-rename:449| 1 (- |$cond-alpha-rename:449| 1) |$cond-alpha-rename:453| |$cond-alpha-rename:449| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:481| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:486| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:486| |$cond-alpha-rename:485| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:482| |$cond-alpha-rename:481| |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:482| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:482|) 0) (+ (+ 0 (- |$cond-alpha-rename:482| 1)) 0)) (not (<= |$cond-alpha-rename:482| 0)) (not (<= |$cond-alpha-rename:486| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:486| 1) |$cond-alpha-rename:486| |$cond-alpha-rename:482| 1 (- |$cond-alpha-rename:482| 1) |$cond-alpha-rename:486| |$cond-alpha-rename:482| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:508| Int) (|$cond-alpha-rename:509| Int) (|$cond-alpha-rename:510| Int) (|$cond-alpha-rename:511| Int) (|$cond-alpha-rename:512| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:515| |$cond-alpha-rename:514| |$cond-alpha-rename:513| |$cond-alpha-rename:512| |$cond-alpha-rename:511| |$cond-alpha-rename:510| |$cond-alpha-rename:509| |$cond-alpha-rename:508|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:511| 0)) (not (<= |$cond-alpha-rename:515| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:515| 1) |$cond-alpha-rename:515| |$cond-alpha-rename:511| 1 (- |$cond-alpha-rename:511| 1) |$cond-alpha-rename:515| |$cond-alpha-rename:511| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1024| Int) (|$cond-alpha-rename:1025| Int) (|$cond-alpha-rename:1026| Int) (|$cond-alpha-rename:1027| Int) (|$cond-alpha-rename:1028| Int) (|$cond-alpha-rename:1029| Int) (|$cond-alpha-rename:1034| Int) (|$cond-alpha-rename:1035| Int) (|$cond-alpha-rename:1036| Int) (|$cond-alpha-rename:1038| Int) (|$cond-alpha-rename:1039| Int) (|$cond-alpha-rename:1040| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:1046| Int) (|$cond-alpha-rename:1047| Int) (|$cond-alpha-rename:1048| Int) (|$cond-alpha-rename:1049| Int) (|$cond-alpha-rename:1050| Int) (|$cond-alpha-rename:1051| Int) (|$cond-alpha-rename:1052| Int) (|$cond-alpha-rename:1075| Int) (|$cond-alpha-rename:1077| Int) (|$cond-alpha-rename:1078| Int) (|$cond-alpha-rename:1098| Int) (|$cond-alpha-rename:1100| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1052| 1) (- |$cond-alpha-rename:1052| 1)) (= (- |$cond-alpha-rename:1052| 1) (- |$cond-alpha-rename:1052| 1)) (= (- |$cond-alpha-rename:1048| 1) (- |$cond-alpha-rename:1048| 1)) (= (- |$cond-alpha-rename:1048| 1) (- |$cond-alpha-rename:1048| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1052| 0)) (not (<= |$cond-alpha-rename:1048| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1048|) 0) (+ (+ 0 (- |$cond-alpha-rename:1048| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1048| 1)) 0) 0))) (not (and (> (+ (+ 0 |$cond-alpha-rename:1048|) 0) (+ (+ 0 (- |$cond-alpha-rename:1048| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1048| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1052| 0)) (not (<= |$cond-alpha-rename:1048| 0)) (not (<= |$cond-alpha-rename:1052| 0)) (not (<= |$cond-alpha-rename:1048| 0)) (not (<= |$cond-alpha-rename:1029| 0)) (not (<= |$cond-alpha-rename:1025| 0)) (|zip_without_checking_1077$unknown:34| |$cond-alpha-rename:1078| (- |$cond-alpha-rename:1052| 1) |$cond-alpha-rename:1052| |$cond-alpha-rename:1048| 1 (- |$cond-alpha-rename:1048| 1) |$cond-alpha-rename:1052| |$cond-alpha-rename:1048| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1052| |$cond-alpha-rename:1051| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| |$cond-alpha-rename:1046| |$cond-alpha-rename:1045|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1052| |$cond-alpha-rename:1040| |$cond-alpha-rename:1039| |$cond-alpha-rename:1038| |$cond-alpha-rename:1048| |$cond-alpha-rename:1036| |$cond-alpha-rename:1035| |$cond-alpha-rename:1034|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1029| |$cond-alpha-rename:1028| |$cond-alpha-rename:1027| |$cond-alpha-rename:1026| |$cond-alpha-rename:1025| |$cond-alpha-rename:1024| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1052| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1048| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1100| 1) (|fail$unknown:4| |$cond-alpha-rename:1077| 1) (|bot$unknown:2| |$cond-alpha-rename:1098| 1) (|bot$unknown:2| |$cond-alpha-rename:1075| 1) )
      (|zip_without_checking_1077$unknown:34| (+ 1 |$cond-alpha-rename:1078|) |$cond-alpha-rename:1052| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1048| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1101| Int) (|$cond-alpha-rename:1102| Int) (|$cond-alpha-rename:1103| Int) (|$cond-alpha-rename:1104| Int) (|$cond-alpha-rename:1105| Int) (|$cond-alpha-rename:1106| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1108| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:1114| Int) (|$cond-alpha-rename:1115| Int) (|$cond-alpha-rename:1117| Int) (|$cond-alpha-rename:1118| Int) (|$cond-alpha-rename:1119| Int) (|$cond-alpha-rename:1124| Int) (|$cond-alpha-rename:1125| Int) (|$cond-alpha-rename:1126| Int) (|$cond-alpha-rename:1127| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:1129| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:1131| Int) (|$cond-alpha-rename:1153| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:1175| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1131| 1) (- |$cond-alpha-rename:1131| 1)) (= (- |$cond-alpha-rename:1131| 1) (- |$cond-alpha-rename:1131| 1)) (= (- |$cond-alpha-rename:1127| 1) (- |$cond-alpha-rename:1127| 1)) (= (- |$cond-alpha-rename:1127| 1) (- |$cond-alpha-rename:1127| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1131| 0)) (not (<= |$cond-alpha-rename:1127| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1127|) 0) (+ (+ 0 (- |$cond-alpha-rename:1127| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1127| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1131| 0)) (not (<= |$cond-alpha-rename:1127| 0)) (not (<= |$cond-alpha-rename:1131| 0)) (not (<= |$cond-alpha-rename:1127| 0)) (not (<= |$cond-alpha-rename:1108| 0)) (not (<= |$cond-alpha-rename:1104| 0)) (> (+ (+ 0 |$cond-alpha-rename:1127|) 0) (+ (+ 0 (- |$cond-alpha-rename:1127| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1127| 1)) 0) 0) (|zip_without_checking_1077$unknown:34| |$cond-alpha-rename:1153| (- |$cond-alpha-rename:1131| 1) |$cond-alpha-rename:1131| |$cond-alpha-rename:1127| 1 (- |$cond-alpha-rename:1127| 1) |$cond-alpha-rename:1131| |$cond-alpha-rename:1127| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1131| |$cond-alpha-rename:1130| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1127| |$cond-alpha-rename:1126| |$cond-alpha-rename:1125| |$cond-alpha-rename:1124|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1131| |$cond-alpha-rename:1119| |$cond-alpha-rename:1118| |$cond-alpha-rename:1117| |$cond-alpha-rename:1127| |$cond-alpha-rename:1115| |$cond-alpha-rename:1114| |$cond-alpha-rename:1113|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107| |$cond-alpha-rename:1106| |$cond-alpha-rename:1105| |$cond-alpha-rename:1104| |$cond-alpha-rename:1103| |$cond-alpha-rename:1102| |$cond-alpha-rename:1101|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1131| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1127| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1175| 1) (|bot$unknown:2| |$cond-alpha-rename:1173| 1) )
      (|zip_without_checking_1077$unknown:34| (+ 1 |$cond-alpha-rename:1153|) |$cond-alpha-rename:1131| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1127| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1233| Int) (|$cond-alpha-rename:1234| Int) (|$cond-alpha-rename:1235| Int) (|$cond-alpha-rename:1236| Int) (|$cond-alpha-rename:1237| Int) (|$cond-alpha-rename:1238| Int) (|$cond-alpha-rename:1239| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1245| Int) (|$cond-alpha-rename:1246| Int) (|$cond-alpha-rename:1247| Int) (|$cond-alpha-rename:1249| Int) (|$cond-alpha-rename:1250| Int) (|$cond-alpha-rename:1251| Int) (|$cond-alpha-rename:1256| Int) (|$cond-alpha-rename:1257| Int) (|$cond-alpha-rename:1258| Int) (|$cond-alpha-rename:1259| Int) (|$cond-alpha-rename:1260| Int) (|$cond-alpha-rename:1261| Int) (|$cond-alpha-rename:1262| Int) (|$cond-alpha-rename:1263| Int) (|$cond-alpha-rename:1286| Int) (|$cond-alpha-rename:1288| Int) (|$cond-alpha-rename:1289| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1263| 1) (- |$cond-alpha-rename:1263| 1)) (= (- |$cond-alpha-rename:1263| 1) (- |$cond-alpha-rename:1263| 1)) (= (- |$cond-alpha-rename:1259| 1) (- |$cond-alpha-rename:1259| 1)) (= (- |$cond-alpha-rename:1259| 1) (- |$cond-alpha-rename:1259| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1263| 0)) (not (<= |$cond-alpha-rename:1259| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:1259|) 0) (+ (+ 0 (- |$cond-alpha-rename:1259| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1259| 1)) 0) 0))) (not (<= |$cond-alpha-rename:1263| 0)) (not (<= |$cond-alpha-rename:1259| 0)) (not (<= |$cond-alpha-rename:1263| 0)) (not (<= |$cond-alpha-rename:1259| 0)) (not (<= |$cond-alpha-rename:1240| 0)) (not (<= |$cond-alpha-rename:1236| 0)) (> (+ (+ 0 |$cond-alpha-rename:1259|) 0) (+ (+ 0 (- |$cond-alpha-rename:1259| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1259| 1)) 0) 0) (|zip_without_checking_1077$unknown:34| |$cond-alpha-rename:1289| (- |$cond-alpha-rename:1263| 1) |$cond-alpha-rename:1263| |$cond-alpha-rename:1259| 1 (- |$cond-alpha-rename:1259| 1) |$cond-alpha-rename:1263| |$cond-alpha-rename:1259| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1263| |$cond-alpha-rename:1262| |$cond-alpha-rename:1261| |$cond-alpha-rename:1260| |$cond-alpha-rename:1259| |$cond-alpha-rename:1258| |$cond-alpha-rename:1257| |$cond-alpha-rename:1256|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1263| |$cond-alpha-rename:1251| |$cond-alpha-rename:1250| |$cond-alpha-rename:1249| |$cond-alpha-rename:1259| |$cond-alpha-rename:1247| |$cond-alpha-rename:1246| |$cond-alpha-rename:1245|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1240| |$cond-alpha-rename:1239| |$cond-alpha-rename:1238| |$cond-alpha-rename:1237| |$cond-alpha-rename:1236| |$cond-alpha-rename:1235| |$cond-alpha-rename:1234| |$cond-alpha-rename:1233|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1263| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1259| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|fail$unknown:4| |$cond-alpha-rename:1288| 1) (|bot$unknown:2| |$cond-alpha-rename:1286| 1) )
      (|zip_without_checking_1077$unknown:34| (+ 1 |$cond-alpha-rename:1289|) |$cond-alpha-rename:1263| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1259| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$cond-alpha-rename:1308| Int) (|$cond-alpha-rename:1309| Int) (|$cond-alpha-rename:1310| Int) (|$cond-alpha-rename:1311| Int) (|$cond-alpha-rename:1312| Int) (|$cond-alpha-rename:1313| Int) (|$cond-alpha-rename:1314| Int) (|$cond-alpha-rename:1315| Int) (|$cond-alpha-rename:1320| Int) (|$cond-alpha-rename:1321| Int) (|$cond-alpha-rename:1322| Int) (|$cond-alpha-rename:1324| Int) (|$cond-alpha-rename:1325| Int) (|$cond-alpha-rename:1326| Int) (|$cond-alpha-rename:1331| Int) (|$cond-alpha-rename:1332| Int) (|$cond-alpha-rename:1333| Int) (|$cond-alpha-rename:1334| Int) (|$cond-alpha-rename:1335| Int) (|$cond-alpha-rename:1336| Int) (|$cond-alpha-rename:1337| Int) (|$cond-alpha-rename:1338| Int) (|$cond-alpha-rename:1360| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:1338| 1) (- |$cond-alpha-rename:1338| 1)) (= (- |$cond-alpha-rename:1338| 1) (- |$cond-alpha-rename:1338| 1)) (= (- |$cond-alpha-rename:1334| 1) (- |$cond-alpha-rename:1334| 1)) (= (- |$cond-alpha-rename:1334| 1) (- |$cond-alpha-rename:1334| 1)) (= 1 1) (= 1 1) (not (<= |$cond-alpha-rename:1338| 0)) (not (<= |$cond-alpha-rename:1334| 0)) (not (<= |$cond-alpha-rename:1338| 0)) (not (<= |$cond-alpha-rename:1334| 0)) (not (<= |$cond-alpha-rename:1338| 0)) (not (<= |$cond-alpha-rename:1334| 0)) (not (<= |$cond-alpha-rename:1315| 0)) (not (<= |$cond-alpha-rename:1311| 0)) (> (+ (+ 0 |$cond-alpha-rename:1334|) 0) (+ (+ 0 (- |$cond-alpha-rename:1334| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1334| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:1334|) 0) (+ (+ 0 (- |$cond-alpha-rename:1334| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:1334| 1)) 0) 0) (|zip_without_checking_1077$unknown:34| |$cond-alpha-rename:1360| (- |$cond-alpha-rename:1338| 1) |$cond-alpha-rename:1338| |$cond-alpha-rename:1334| 1 (- |$cond-alpha-rename:1334| 1) |$cond-alpha-rename:1338| |$cond-alpha-rename:1334| 1) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1338| |$cond-alpha-rename:1337| |$cond-alpha-rename:1336| |$cond-alpha-rename:1335| |$cond-alpha-rename:1334| |$cond-alpha-rename:1333| |$cond-alpha-rename:1332| |$cond-alpha-rename:1331|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1338| |$cond-alpha-rename:1326| |$cond-alpha-rename:1325| |$cond-alpha-rename:1324| |$cond-alpha-rename:1334| |$cond-alpha-rename:1322| |$cond-alpha-rename:1321| |$cond-alpha-rename:1320|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1315| |$cond-alpha-rename:1314| |$cond-alpha-rename:1313| |$cond-alpha-rename:1312| |$cond-alpha-rename:1311| |$cond-alpha-rename:1310| |$cond-alpha-rename:1309| |$cond-alpha-rename:1308|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:1338| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1334| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) )
      (|zip_without_checking_1077$unknown:34| (+ 1 |$cond-alpha-rename:1360|) |$cond-alpha-rename:1338| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$cond-alpha-rename:1334| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (<= |$alpha-17:xs_1031| 0) )
      (|zip_without_checking_1077$unknown:34| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (<= |$alpha-21:ys_1032| 0) (not (<= |$alpha-17:xs_1031| 0)) )
      (|zip_without_checking_1077$unknown:34| 0 |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|)
    )
  )
)
(check-sat)

(get-model)

(exit)

