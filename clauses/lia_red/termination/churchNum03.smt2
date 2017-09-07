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
  
     let rec succ_1030 x_DO_NOT_CARE_1649 x_DO_NOT_CARE_1650 x_DO_NOT_CARE_1651 m_EXPARAM_1232 x_DO_NOT_CARE_1646 x_DO_NOT_CARE_1647 x_DO_NOT_CARE_1648 m_1031 x_DO_NOT_CARE_1643 x_DO_NOT_CARE_1644 x_DO_NOT_CARE_1645 s_EXPARAM_1234 x_DO_NOT_CARE_1640 x_DO_NOT_CARE_1641 x_DO_NOT_CARE_1642 s_1032 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 z_1033 =
       m_1031 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
         ((c9_COEFFICIENT_1235 * z_1033) +
          ((c10_COEFFICIENT_1236 * s_EXPARAM_1234) +
           ((c11_COEFFICIENT_1237 * m_EXPARAM_1232) + c12_COEFFICIENT_1238)))
         set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 s_1032
         set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
         (s_1032 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 z_1033)
  
     let rec id_1034 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 x_1035 =
       x_1035
  
     let rec two_1036 x_DO_NOT_CARE_1637 x_DO_NOT_CARE_1638 x_DO_NOT_CARE_1639 f_EXPARAM_1206 x_DO_NOT_CARE_1634 x_DO_NOT_CARE_1635 x_DO_NOT_CARE_1636 f_1037 x_DO_NOT_CARE_1631 x_DO_NOT_CARE_1632 x_DO_NOT_CARE_1633 z_EXPARAM_1210 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 z_1038 =
       f_1037 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
         ((c6_COEFFICIENT_1219 * z_EXPARAM_1210) +
          ((c7_COEFFICIENT_1220 * f_EXPARAM_1206) + c8_COEFFICIENT_1221))
         set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
         (f_1037 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
           ((c3_COEFFICIENT_1213 * z_EXPARAM_1210) +
            ((c4_COEFFICIENT_1214 * f_EXPARAM_1206) + c5_COEFFICIENT_1215))
           set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 z_1038)
  
     let rec zero_without_checking_1519 x_DO_NOT_CARE_1628 x_DO_NOT_CARE_1629 x_DO_NOT_CARE_1630 f_EXPARAM_1204 x_DO_NOT_CARE_1625 x_DO_NOT_CARE_1626 x_DO_NOT_CARE_1627 f_1040 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 z_1041 =
       let set_flag_zero_1507 = true
       in
       let s_zero_z_1502 = z_1041
       in
       let s_zero_f_EXPARAM_1500 = f_EXPARAM_1204
       in
         z_1041
  
     let rec zero_1039 x_DO_NOT_CARE_1524 x_DO_NOT_CARE_1525 x_DO_NOT_CARE_1526 f_EXPARAM_1204 x_DO_NOT_CARE_1521 x_DO_NOT_CARE_1522 x_DO_NOT_CARE_1523 f_1040 prev_set_flag_zero_1506 s_prev_zero_f_EXPARAM_1503 s_prev_zero_z_1505 z_1041 =
       let u = if prev_set_flag_zero_1506 then
                let u_41432 = fail ()
                in
                  bot()
               else () in
              zero_without_checking_1519 x_DO_NOT_CARE_1524 x_DO_NOT_CARE_1525
                x_DO_NOT_CARE_1526 f_EXPARAM_1204 x_DO_NOT_CARE_1521
                x_DO_NOT_CARE_1522 x_DO_NOT_CARE_1523 f_1040
                prev_set_flag_zero_1506 s_prev_zero_f_EXPARAM_1503
                s_prev_zero_z_1505 z_1041
  
     let main_1042 =
       let set_flag_zero_1507 = false in
       let s_zero_f_EXPARAM_1500 = 0 in
       let s_zero_z_1502 = 0 in
       two_1036 set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502
         c0_COEFFICIENT_1193 set_flag_zero_1507 s_zero_f_EXPARAM_1500
         s_zero_z_1502 succ_1030 set_flag_zero_1507 s_zero_f_EXPARAM_1500
         s_zero_z_1502 c1_COEFFICIENT_1195 set_flag_zero_1507
         s_zero_f_EXPARAM_1500 s_zero_z_1502 zero_1039 set_flag_zero_1507
         s_zero_f_EXPARAM_1500 s_zero_z_1502 c2_COEFFICIENT_1196
         set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 id_1034
         set_flag_zero_1507 s_zero_f_EXPARAM_1500 s_zero_z_1502 0
")

(set-logic HORN)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zero_1039$unknown:87|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:197| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:197| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:197| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:29| Int) )
    ( and (= |$alpha-2:$$tmp::2| 1) (not (= |$cond-alpha-rename:36| 0)) (|zero_1039$unknown:87| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28|) )
    )
  )
)
(assert
  (forall ( (|$knormal:102| Int) (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$knormal:104| Int) (|$knormal:105| Int) (|$alpha-79:z_1041| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-75:f_1040| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= |$alpha-76:prev_set_flag_zero_1506| 0)) (|zero_1039$unknown:87| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-75:f_1040| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) )
      (|bot$unknown:1| |$knormal:102|)
    )
  )
)
(check-sat)

(get-model)

