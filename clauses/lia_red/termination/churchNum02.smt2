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

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |two_without_checking_1444$unknown:187|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:202| Int) (|$cond-alpha-rename:1149| Int) (|$cond-alpha-rename:7651| Int) (|$cond-alpha-rename:7653| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:7651| 1) (|fail$unknown:4| |$cond-alpha-rename:7653| 1) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| 0 0 1 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 1 0 0 0 0 0 0 0) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:202| Int) (|$cond-alpha-rename:1149| Int) )
    (=>
      ( and (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| 0 0 1 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 1 0 0 0 0 0 0 0) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:172| Int) (|$V-reftype:174| Int) (|$V-reftype:176| Int) (|$V-reftype:178| Int) (|$V-reftype:180| Int) (|$V-reftype:182| Int) (|$V-reftype:184| Int) (|$V-reftype:196| Int) (|$V-reftype:198| Int) (|$V-reftype:200| Int) (|$V-reftype:202| Int) (|$cond-alpha-rename:1149| Int) (|$cond-alpha-rename:1152| Int) (|$cond-alpha-rename:6848| Int) )
    (=>
      ( and (= 0 0) (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1152| |$cond-alpha-rename:1149| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| (+ (* 0 |$V-reftype:202|) (+ (* 0 |$V-reftype:178|) (+ (* 0 (+ (* 0 |$cond-alpha-rename:6848|) (+ (* 0 0) 0))) 0))) |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$cond-alpha-rename:6848| 0 1 (+ (* 0 |$cond-alpha-rename:6848|) (+ (* 0 0) 0)) |$cond-alpha-rename:6848| 0 1 0 0 0 0 0 0 0) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:1149| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$cond-alpha-rename:6848| 0 1 (+ (* 0 |$cond-alpha-rename:6848|) (+ (* 0 0) 0)) |$cond-alpha-rename:6848| 0 1 0 0 0 0 0 0 0) )
      (|two_without_checking_1444$unknown:192| |$cond-alpha-rename:1152| |$V-reftype:202| |$V-reftype:200| |$V-reftype:198| |$V-reftype:196| |$V-reftype:184| |$V-reftype:182| |$V-reftype:180| |$V-reftype:178| |$V-reftype:176| |$V-reftype:174| |$V-reftype:172| |$cond-alpha-rename:6848| 0 1 (+ (* 0 |$cond-alpha-rename:6848|) (+ (* 0 0) 0)) |$cond-alpha-rename:6848| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:329| Int) (|$V-reftype:331| Int) (|$V-reftype:333| Int) (|$V-reftype:335| Int) (|$V-reftype:336| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$cond-alpha-rename:4583| Int) (|$cond-alpha-rename:4584| Int) (|$cond-alpha-rename:4585| Int) (|$cond-alpha-rename:4586| Int) (|$cond-alpha-rename:4587| Int) (|$cond-alpha-rename:4588| Int) (|$cond-alpha-rename:4589| Int) (|$cond-alpha-rename:4590| Int) (|$cond-alpha-rename:4591| Int) (|$cond-alpha-rename:4592| Int) (|$cond-alpha-rename:4593| Int) (|$cond-alpha-rename:4598| Int) (|$cond-alpha-rename:4626| Int) (|$cond-alpha-rename:4628| Int) (|$cond-alpha-rename:4641| Int) (|$cond-alpha-rename:4643| Int) (|$cond-alpha-rename:4645| Int) (|$cond-alpha-rename:4647| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:4626| 1) (|bot$unknown:2| |$cond-alpha-rename:4641| 1) (|bot$unknown:2| |$cond-alpha-rename:4645| 1) (|fail$unknown:4| |$cond-alpha-rename:4628| 1) (|fail$unknown:4| |$cond-alpha-rename:4643| 1) (|fail$unknown:4| |$cond-alpha-rename:4647| 1) (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4589| |$cond-alpha-rename:4588| |$cond-alpha-rename:4587| |$cond-alpha-rename:4586| |$cond-alpha-rename:4585| |$cond-alpha-rename:4584| |$cond-alpha-rename:4583| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:4598| |$cond-alpha-rename:4593| |$cond-alpha-rename:4592| |$cond-alpha-rename:4591| |$cond-alpha-rename:4590| |$cond-alpha-rename:4589| |$cond-alpha-rename:4588| |$cond-alpha-rename:4587| |$cond-alpha-rename:4586| |$cond-alpha-rename:4585| |$cond-alpha-rename:4584| |$cond-alpha-rename:4583| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (not (= 0 0)) (not (= 0 0)) (not (= 0 0)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4592| |$cond-alpha-rename:4591| |$cond-alpha-rename:4590| (+ (* 0 |$cond-alpha-rename:4593|) (+ (* 0 |$cond-alpha-rename:4586|) (+ 0 0))) |$cond-alpha-rename:4592| |$cond-alpha-rename:4591| |$cond-alpha-rename:4590| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:329| Int) (|$V-reftype:331| Int) (|$V-reftype:333| Int) (|$V-reftype:335| Int) (|$V-reftype:336| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$cond-alpha-rename:4663| Int) (|$cond-alpha-rename:4664| Int) (|$cond-alpha-rename:4665| Int) (|$cond-alpha-rename:4666| Int) (|$cond-alpha-rename:4667| Int) (|$cond-alpha-rename:4668| Int) (|$cond-alpha-rename:4669| Int) (|$cond-alpha-rename:4670| Int) (|$cond-alpha-rename:4671| Int) (|$cond-alpha-rename:4672| Int) (|$cond-alpha-rename:4673| Int) (|$cond-alpha-rename:4678| Int) (|$cond-alpha-rename:4717| Int) (|$cond-alpha-rename:4719| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:4717| 1) (|fail$unknown:4| |$cond-alpha-rename:4719| 1) (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4669| |$cond-alpha-rename:4668| |$cond-alpha-rename:4667| |$cond-alpha-rename:4666| |$cond-alpha-rename:4665| |$cond-alpha-rename:4664| |$cond-alpha-rename:4663| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:4678| |$cond-alpha-rename:4673| |$cond-alpha-rename:4672| |$cond-alpha-rename:4671| |$cond-alpha-rename:4670| |$cond-alpha-rename:4669| |$cond-alpha-rename:4668| |$cond-alpha-rename:4667| |$cond-alpha-rename:4666| |$cond-alpha-rename:4665| |$cond-alpha-rename:4664| |$cond-alpha-rename:4663| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (not (= 0 0)) (not (not (= 0 0))) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4672| |$cond-alpha-rename:4671| |$cond-alpha-rename:4670| (+ (* 0 |$cond-alpha-rename:4673|) (+ (* 0 |$cond-alpha-rename:4666|) (+ 0 0))) |$cond-alpha-rename:4672| |$cond-alpha-rename:4671| |$cond-alpha-rename:4670| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:329| Int) (|$V-reftype:331| Int) (|$V-reftype:333| Int) (|$V-reftype:335| Int) (|$V-reftype:336| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$cond-alpha-rename:4735| Int) (|$cond-alpha-rename:4736| Int) (|$cond-alpha-rename:4737| Int) (|$cond-alpha-rename:4738| Int) (|$cond-alpha-rename:4739| Int) (|$cond-alpha-rename:4740| Int) (|$cond-alpha-rename:4741| Int) (|$cond-alpha-rename:4742| Int) (|$cond-alpha-rename:4743| Int) (|$cond-alpha-rename:4744| Int) (|$cond-alpha-rename:4745| Int) (|$cond-alpha-rename:4750| Int) (|$cond-alpha-rename:4778| Int) (|$cond-alpha-rename:4780| Int) (|$cond-alpha-rename:4793| Int) (|$cond-alpha-rename:4795| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:4778| 1) (|bot$unknown:2| |$cond-alpha-rename:4793| 1) (|fail$unknown:4| |$cond-alpha-rename:4780| 1) (|fail$unknown:4| |$cond-alpha-rename:4795| 1) (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4741| |$cond-alpha-rename:4740| |$cond-alpha-rename:4739| |$cond-alpha-rename:4738| |$cond-alpha-rename:4737| |$cond-alpha-rename:4736| |$cond-alpha-rename:4735| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:4750| |$cond-alpha-rename:4745| |$cond-alpha-rename:4744| |$cond-alpha-rename:4743| |$cond-alpha-rename:4742| |$cond-alpha-rename:4741| |$cond-alpha-rename:4740| |$cond-alpha-rename:4739| |$cond-alpha-rename:4738| |$cond-alpha-rename:4737| |$cond-alpha-rename:4736| |$cond-alpha-rename:4735| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (not (= 0 0)) (not (= 0 0)) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4744| |$cond-alpha-rename:4743| |$cond-alpha-rename:4742| (+ (* 0 |$cond-alpha-rename:4745|) (+ (* 0 |$cond-alpha-rename:4738|) (+ 0 0))) |$cond-alpha-rename:4744| |$cond-alpha-rename:4743| |$cond-alpha-rename:4742| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:329| Int) (|$V-reftype:331| Int) (|$V-reftype:333| Int) (|$V-reftype:335| Int) (|$V-reftype:336| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$cond-alpha-rename:4811| Int) (|$cond-alpha-rename:4812| Int) (|$cond-alpha-rename:4813| Int) (|$cond-alpha-rename:4814| Int) (|$cond-alpha-rename:4815| Int) (|$cond-alpha-rename:4816| Int) (|$cond-alpha-rename:4817| Int) (|$cond-alpha-rename:4818| Int) (|$cond-alpha-rename:4819| Int) (|$cond-alpha-rename:4820| Int) (|$cond-alpha-rename:4821| Int) (|$cond-alpha-rename:4826| Int) )
    (=>
      ( and (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4817| |$cond-alpha-rename:4816| |$cond-alpha-rename:4815| |$cond-alpha-rename:4814| |$cond-alpha-rename:4813| |$cond-alpha-rename:4812| |$cond-alpha-rename:4811| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (|two_without_checking_1444$unknown:187| |$cond-alpha-rename:4826| |$cond-alpha-rename:4821| |$cond-alpha-rename:4820| |$cond-alpha-rename:4819| |$cond-alpha-rename:4818| |$cond-alpha-rename:4817| |$cond-alpha-rename:4816| |$cond-alpha-rename:4815| |$cond-alpha-rename:4814| |$cond-alpha-rename:4813| |$cond-alpha-rename:4812| |$cond-alpha-rename:4811| |$alpha-42:z_EXPARAM_1210| 0 1 (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0) (not (not (= 0 0))) (not (not (= 0 0))) (not (not (= 0 0))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:336| |$V-reftype:335| |$V-reftype:333| |$V-reftype:331| |$V-reftype:329| |$cond-alpha-rename:4820| |$cond-alpha-rename:4819| |$cond-alpha-rename:4818| (+ (* 0 |$cond-alpha-rename:4821|) (+ (* 0 |$cond-alpha-rename:4814|) (+ 0 0))) |$cond-alpha-rename:4820| |$cond-alpha-rename:4819| |$cond-alpha-rename:4818| |$alpha-42:z_EXPARAM_1210| 0 1 0 |$alpha-42:z_EXPARAM_1210| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:445| Int) (|$V-reftype:447| Int) (|$V-reftype:449| Int) (|$V-reftype:451| Int) (|$cond-alpha-rename:8088| Int) (|$cond-alpha-rename:8090| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (not (= 0 0)) (|fail$unknown:4| |$cond-alpha-rename:8090| 1) (|bot$unknown:2| |$cond-alpha-rename:8088| 1) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:451| |$V-reftype:451| |$V-reftype:449| |$V-reftype:447| |$V-reftype:445| 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:445| Int) (|$V-reftype:447| Int) (|$V-reftype:449| Int) (|$V-reftype:451| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (not (not (= 0 0))) )
      (|two_without_checking_1444$unknown:187| |$V-reftype:451| |$V-reftype:451| |$V-reftype:449| |$V-reftype:447| |$V-reftype:445| 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

