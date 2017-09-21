(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let rec c12_COEFFICIENT_1238 = 0
     let rec c11_COEFFICIENT_1237 = 0
     let rec c10_COEFFICIENT_1236 = 0
     let rec c9_COEFFICIENT_1235 = 0
     let rec c8_COEFFICIENT_1221 = 0
     let rec c7_COEFFICIENT_1220 = 0
     let rec c6_COEFFICIENT_1219 = 0
     let rec c5_COEFFICIENT_1215 = 0
     let rec c4_COEFFICIENT_1214 = 0
     let rec c3_COEFFICIENT_1213 = 0
     let rec c2_COEFFICIENT_1196 = 0
     let rec c1_COEFFICIENT_1195 = 0
     let rec c0_COEFFICIENT_1193 = 0
  
     let rec succ_1030 x_DO_NOT_CARE_1622 x_DO_NOT_CARE_1623 x_DO_NOT_CARE_1624 m_EXPARAM_1232 x_DO_NOT_CARE_1619 x_DO_NOT_CARE_1620 x_DO_NOT_CARE_1621 m_1031 x_DO_NOT_CARE_1616 x_DO_NOT_CARE_1617 x_DO_NOT_CARE_1618 s_EXPARAM_1234 x_DO_NOT_CARE_1613 x_DO_NOT_CARE_1614 x_DO_NOT_CARE_1615 s_1032 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 z_1033 =
       m_1031 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
         ((c9_COEFFICIENT_1235 * z_1033) +
          ((c10_COEFFICIENT_1236 * s_EXPARAM_1234) +
           ((c11_COEFFICIENT_1237 * m_EXPARAM_1232) + c12_COEFFICIENT_1238)))
         set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 s_1032
         set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
         (s_1032 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
           z_1033)
  
     let rec id_1034 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 x_1035 =
       x_1035
  
     let rec two_without_checking_1444 x_DO_NOT_CARE_1610 x_DO_NOT_CARE_1611 x_DO_NOT_CARE_1612 f_EXPARAM_1206 x_DO_NOT_CARE_1607 x_DO_NOT_CARE_1608 x_DO_NOT_CARE_1609 f_1037 x_DO_NOT_CARE_1604 x_DO_NOT_CARE_1605 x_DO_NOT_CARE_1606 z_EXPARAM_1210 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 z_1038 =
       let set_flag_two_1420 = true
       in
       let s_two_z_EXPARAM_1413 = z_EXPARAM_1210
       in
       let s_two_f_EXPARAM_1411 = f_EXPARAM_1206
       in
         f_1037 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
           ((c6_COEFFICIENT_1219 * z_EXPARAM_1210) +
            ((c7_COEFFICIENT_1220 * f_EXPARAM_1206) + c8_COEFFICIENT_1221))
           set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
           (f_1037 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
             ((c3_COEFFICIENT_1213 * z_EXPARAM_1210) +
              ((c4_COEFFICIENT_1214 * f_EXPARAM_1206) + c5_COEFFICIENT_1215))
             set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 z_1038)
  
     let rec two_1036 x_DO_NOT_CARE_1452 x_DO_NOT_CARE_1453 x_DO_NOT_CARE_1454 f_EXPARAM_1206 x_DO_NOT_CARE_1449 x_DO_NOT_CARE_1450 x_DO_NOT_CARE_1451 f_1037 x_DO_NOT_CARE_1446 x_DO_NOT_CARE_1447 x_DO_NOT_CARE_1448 z_EXPARAM_1210 prev_set_flag_two_1419 s_prev_two_f_EXPARAM_1415 s_prev_two_z_EXPARAM_1417 z_1038 =
       let u = if prev_set_flag_two_1419 then
                let u_32611 = fail ()
                in
                  bot()
               else () in
              two_without_checking_1444 x_DO_NOT_CARE_1452 x_DO_NOT_CARE_1453
                x_DO_NOT_CARE_1454 f_EXPARAM_1206 x_DO_NOT_CARE_1449
                x_DO_NOT_CARE_1450 x_DO_NOT_CARE_1451 f_1037 x_DO_NOT_CARE_1446
                x_DO_NOT_CARE_1447 x_DO_NOT_CARE_1448 z_EXPARAM_1210
                prev_set_flag_two_1419 s_prev_two_f_EXPARAM_1415
                s_prev_two_z_EXPARAM_1417 z_1038
  
  
     let rec zero_1039 x_DO_NOT_CARE_1601 x_DO_NOT_CARE_1602 x_DO_NOT_CARE_1603 f_EXPARAM_1204 x_DO_NOT_CARE_1598 x_DO_NOT_CARE_1599 x_DO_NOT_CARE_1600 f_1040 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 z_1041 =
       z_1041
  
     let main_1042 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 u_1043 =
       two_1036 set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413
         c0_COEFFICIENT_1193 set_flag_two_1420 s_two_f_EXPARAM_1411
         s_two_z_EXPARAM_1413 succ_1030 set_flag_two_1420 s_two_f_EXPARAM_1411
         s_two_z_EXPARAM_1413 c1_COEFFICIENT_1195 set_flag_two_1420
         s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 zero_1039 set_flag_two_1420
         s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 c2_COEFFICIENT_1196
         set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 id_1034
         set_flag_two_1420 s_two_f_EXPARAM_1411 s_two_z_EXPARAM_1413 0
  
     let main = main_1042 false 0 0 ()
")

(set-logic HORN)

(declare-fun |two_without_checking_1444$unknown:192|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:98|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_without_checking_1444$unknown:187|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:86|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_without_checking_1444$unknown:175|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:315| Int) (|$V-reftype:317| Int) (|$V-reftype:319| Int) (|$V-reftype:321| Int) (|$V-reftype:323| Int) (|$V-reftype:325| Int) (|$V-reftype:327| Int) (|$V-reftype:339| Int) (|$V-reftype:341| Int) (|$V-reftype:343| Int) (|$V-reftype:345| Int) (|$V-reftype:346| Int) (|$alpha-63:f_1037| Int) (|$knormal:111| Int) (|$knormal:113| Int) )
    (=>
      ( and (not (= 0 0)) (|two_without_checking_1444$unknown:175| |$V-reftype:346| |$V-reftype:345| |$V-reftype:343| |$V-reftype:341| |$V-reftype:339| |$V-reftype:327| |$V-reftype:325| |$V-reftype:323| |$V-reftype:321| |$V-reftype:319| |$V-reftype:317| |$V-reftype:315| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) (|fail$unknown:4| |$knormal:113| 1) (|bot$unknown:2| |$knormal:111| 1) )
      (|two_1036$unknown:86| |$V-reftype:346| |$V-reftype:345| |$V-reftype:343| |$V-reftype:341| |$V-reftype:339| |$V-reftype:327| |$V-reftype:325| |$V-reftype:323| |$V-reftype:321| |$V-reftype:319| |$V-reftype:317| |$V-reftype:315| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:363| Int) (|$V-reftype:365| Int) (|$V-reftype:367| Int) (|$V-reftype:369| Int) (|$V-reftype:370| Int) (|$alpha-63:f_1037| Int) (|$knormal:111| Int) (|$knormal:113| Int) )
    (=>
      ( and (not (= 0 0)) (|two_without_checking_1444$unknown:187| |$V-reftype:370| |$V-reftype:369| |$V-reftype:367| |$V-reftype:365| |$V-reftype:363| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) (|fail$unknown:4| |$knormal:113| 1) (|bot$unknown:2| |$knormal:111| 1) )
      (|two_1036$unknown:98| |$V-reftype:370| |$V-reftype:369| |$V-reftype:367| |$V-reftype:365| |$V-reftype:363| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:202| Int) (|$alpha-63:f_1037| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:1126| Int) (|$knormal:111| Int) (|$knormal:113| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (= 0 0) (not (= 0 0)) (|two_1036$unknown:98| |$cond-alpha-rename:1123| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) (|two_1036$unknown:86| |$cond-alpha-rename:1126| |$cond-alpha-rename:1123| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| (+ (* 0 |$V-reftype:202|) (+ (* 0 |$V-reftype:178|) (+ (* 0 |$V-reftype:130|) 0))) |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) (|fail$unknown:4| |$knormal:113| 1) (|bot$unknown:2| |$knormal:111| 1) )
      (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1126| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:315| Int) (|$V-reftype:317| Int) (|$V-reftype:319| Int) (|$V-reftype:321| Int) (|$V-reftype:323| Int) (|$V-reftype:325| Int) (|$V-reftype:327| Int) (|$V-reftype:339| Int) (|$V-reftype:341| Int) (|$V-reftype:343| Int) (|$V-reftype:345| Int) (|$V-reftype:346| Int) (|$alpha-63:f_1037| Int) )
    (=>
      ( and (not (not (= 0 0))) (|two_without_checking_1444$unknown:175| |$V-reftype:346| |$V-reftype:345| |$V-reftype:343| |$V-reftype:341| |$V-reftype:339| |$V-reftype:327| |$V-reftype:325| |$V-reftype:323| |$V-reftype:321| |$V-reftype:319| |$V-reftype:317| |$V-reftype:315| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) )
      (|two_1036$unknown:86| |$V-reftype:346| |$V-reftype:345| |$V-reftype:343| |$V-reftype:341| |$V-reftype:339| |$V-reftype:327| |$V-reftype:325| |$V-reftype:323| |$V-reftype:321| |$V-reftype:319| |$V-reftype:317| |$V-reftype:315| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:363| Int) (|$V-reftype:365| Int) (|$V-reftype:367| Int) (|$V-reftype:369| Int) (|$V-reftype:370| Int) (|$alpha-63:f_1037| Int) )
    (=>
      ( and (not (not (= 0 0))) (|two_without_checking_1444$unknown:187| |$V-reftype:370| |$V-reftype:369| |$V-reftype:367| |$V-reftype:365| |$V-reftype:363| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) )
      (|two_1036$unknown:98| |$V-reftype:370| |$V-reftype:369| |$V-reftype:367| |$V-reftype:365| |$V-reftype:363| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:126| Int) (|$V-reftype:128| Int) (|$V-reftype:130| Int) (|$V-reftype:132| Int) (|$V-reftype:134| Int) (|$V-reftype:136| Int) (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:202| Int) (|$alpha-63:f_1037| Int) (|$cond-alpha-rename:1149| Int) (|$cond-alpha-rename:1152| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (= 0 0) (not (not (= 0 0))) (|two_1036$unknown:98| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) (|two_1036$unknown:86| |$cond-alpha-rename:1152| |$cond-alpha-rename:1149| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| (+ (* 0 |$V-reftype:202|) (+ (* 0 |$V-reftype:178|) (+ (* 0 |$V-reftype:130|) 0))) |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0) )
      (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1152| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$V-reftype:136| |$V-reftype:134| |$V-reftype:132| |$V-reftype:130| |$V-reftype:128| |$V-reftype:126| |$alpha-63:f_1037| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:399| Int) (|$V-reftype:401| Int) (|$V-reftype:403| Int) (|$V-reftype:405| Int) (|$V-reftype:407| Int) (|$V-reftype:409| Int) (|$V-reftype:421| Int) (|$V-reftype:423| Int) (|$V-reftype:425| Int) (|$alpha-46:z_1038| Int) (|$cond-alpha-rename:3419| Int) )
    (=>
      ( and (= 0 0) )
      (|two_without_checking_1444$unknown:175| |$cond-alpha-rename:3419| |$cond-alpha-rename:3419| |$V-reftype:425| |$V-reftype:423| |$V-reftype:421| |$V-reftype:409| |$V-reftype:407| |$V-reftype:405| |$V-reftype:403| |$V-reftype:401| |$V-reftype:399| |$alpha-46:z_1038| 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:351| Int) (|$V-reftype:353| Int) (|$V-reftype:355| Int) (|$V-reftype:357| Int) (|$V-reftype:359| Int) (|$V-reftype:361| Int) (|$V-reftype:373| Int) (|$V-reftype:375| Int) (|$V-reftype:377| Int) (|$V-reftype:379| Int) (|$V-reftype:380| Int) (|$alpha-31:x_DO_NOT_CARE_1610| Int) (|$alpha-32:x_DO_NOT_CARE_1611| Int) (|$alpha-33:x_DO_NOT_CARE_1612| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1607| Int) (|$alpha-36:x_DO_NOT_CARE_1608| Int) (|$alpha-37:x_DO_NOT_CARE_1609| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$knormal:61| Int) )
    (=>
      ( and (|two_without_checking_1444$unknown:192| |$V-reftype:380| |$V-reftype:379| |$V-reftype:377| |$V-reftype:375| |$V-reftype:373| |$V-reftype:361| |$V-reftype:359| |$V-reftype:357| |$V-reftype:355| |$V-reftype:353| |$V-reftype:351| |$knormal:61| |$alpha-42:z_EXPARAM_1210| |$alpha-34:f_EXPARAM_1206| 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 |$alpha-34:f_EXPARAM_1206|) 0)) |$alpha-42:z_EXPARAM_1210| |$alpha-34:f_EXPARAM_1206| 1 |$alpha-37:x_DO_NOT_CARE_1609| |$alpha-36:x_DO_NOT_CARE_1608| |$alpha-35:x_DO_NOT_CARE_1607| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1612| |$alpha-32:x_DO_NOT_CARE_1611| |$alpha-31:x_DO_NOT_CARE_1610|) )
      (|two_without_checking_1444$unknown:175| |$V-reftype:380| |$V-reftype:379| |$V-reftype:377| |$V-reftype:375| |$V-reftype:373| |$V-reftype:361| |$V-reftype:359| |$V-reftype:357| |$V-reftype:355| |$V-reftype:353| |$V-reftype:351| |$knormal:61| |$alpha-42:z_EXPARAM_1210| |$alpha-34:f_EXPARAM_1206| 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 |$alpha-34:f_EXPARAM_1206|) 0)) |$alpha-42:z_EXPARAM_1210| |$alpha-34:f_EXPARAM_1206| 1 |$alpha-37:x_DO_NOT_CARE_1609| |$alpha-36:x_DO_NOT_CARE_1608| |$alpha-35:x_DO_NOT_CARE_1607| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1612| |$alpha-32:x_DO_NOT_CARE_1611| |$alpha-31:x_DO_NOT_CARE_1610|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:329| Int) (|$V-reftype:331| Int) (|$V-reftype:333| Int) (|$V-reftype:335| Int) (|$V-reftype:336| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$cond-alpha-rename:3242| Int) (|$cond-alpha-rename:3243| Int) (|$cond-alpha-rename:3244| Int) (|$cond-alpha-rename:3245| Int) (|$cond-alpha-rename:3246| Int) (|$cond-alpha-rename:3247| Int) (|$cond-alpha-rename:3248| Int) (|$cond-alpha-rename:3249| Int) (|$cond-alpha-rename:3250| Int) (|$cond-alpha-rename:3251| Int) (|$cond-alpha-rename:3252| Int) (|$cond-alpha-rename:3253| Int) )
    (=>
      ( and (= 0 0) (|two_1036$unknown:98| |$cond-alpha-rename:3253| |$cond-alpha-rename:3252| |$cond-alpha-rename:3251| |$cond-alpha-rename:3250| |$cond-alpha-rename:3249| |$cond-alpha-rename:3248| |$cond-alpha-rename:3247| |$cond-alpha-rename:3246| |$cond-alpha-rename:3245| |$cond-alpha-rename:3244| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (|two_1036$unknown:98| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:3248| |$cond-alpha-rename:3247| |$cond-alpha-rename:3246| |$cond-alpha-rename:3245| |$cond-alpha-rename:3244| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:3251| |$cond-alpha-rename:3250| |$cond-alpha-rename:3249| 0 |$cond-alpha-rename:3251| |$cond-alpha-rename:3250| |$cond-alpha-rename:3249| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:445| Int) (|$V-reftype:447| Int) (|$V-reftype:449| Int) (|$cond-alpha-rename:3538| Int) )
    (=>
      ( and (= 0 0) )
      (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:3538| |$cond-alpha-rename:3538| |$V-reftype:449| |$V-reftype:447| |$V-reftype:445| 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

