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
  
     let main =
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

(declare-fun |two_1036$unknown:81|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:122|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:121|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:80|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:117|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:76|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:93|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:97|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:139|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:98|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:138|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:32|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:50|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:49|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:45|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:134|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:9|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |zero_1039$unknown:156|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_without_checking_1519$unknown:173|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_without_checking_1519$unknown:168|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_1039$unknown:155|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_1039$unknown:151|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:344| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:344| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:344| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:298| Int) (|$V-reftype:299| Int) (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-75:f_1040| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) true true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true (|zero_1039$unknown:151| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$alpha-75:f_1040| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      (|zero_without_checking_1519$unknown:168| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$alpha-75:f_1040| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) true true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:376| Int) (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:101| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (= |$V-reftype:376| |$knormal:101|) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_without_checking_1519$unknown:173| |$knormal:101| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      (|zero_1039$unknown:156| |$V-reftype:376| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:103| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) (|bot$unknown:2| |$knormal:103| |$knormal:102|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:3| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:102| Int) (|$knormal:104| Int) (|$knormal:105| Int) )
    (=>
      ( and (= |$knormal:104| 1) (= |$knormal:102| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true (|fail$unknown:4| |$knormal:105| |$knormal:104|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:357| Int) (|$alpha-27:set_flag_zero_1507| Int) (|$alpha-28:s_zero_f_EXPARAM_1500| Int) (|$alpha-29:s_zero_z_1502| Int) (|$alpha-30:x_1035| Int) )
    (=>
      ( and (= |$V-reftype:357| |$alpha-30:x_1035|) true true true true )
      (|id_1034$unknown:9| |$V-reftype:357| |$alpha-30:x_1035| |$alpha-29:s_zero_z_1502| |$alpha-28:s_zero_f_EXPARAM_1500| |$alpha-27:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:12| Int) (|$V-reftype:14| Int) (|$V-reftype:15| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|id_1034| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true (|id_1034$unknown:9| |$V-reftype:15| |$V-reftype:14| |$V-reftype:12| |$V-reftype:10| |id_1034|) )
      (|two_1036$unknown:134| |$V-reftype:15| |$V-reftype:14| |$V-reftype:12| |$V-reftype:10| |id_1034| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-83:c2_COEFFICIENT_1196| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:84| Int) (|$V-reftype:86| Int) (|$V-reftype:88| Int) (|$V-reftype:89| Int) (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-18:s_1032| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) (|succ_1030$unknown:45| |$V-reftype:89| |$V-reftype:88| |$V-reftype:86| |$V-reftype:84| |$alpha-18:s_1032| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true true )
      (|succ_1030$unknown:28| |$V-reftype:89| |$V-reftype:88| |$V-reftype:86| |$V-reftype:84| |$alpha-18:s_1032| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$knormal:20| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:356| Int) (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:39| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (= |$V-reftype:356| |$knormal:39|) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true (|succ_1030$unknown:33| |$knormal:39| |$knormal:14| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$knormal:20| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true )
      (|succ_1030$unknown:50| |$V-reftype:356| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) (|$knormal:14| Int) (|$knormal:20| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-24:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-25:c11_COEFFICIENT_1237| |$alpha-6:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-26:c10_COEFFICIENT_1236| |$alpha-14:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-23:c9_COEFFICIENT_1235| |$alpha-22:z_1033|)) (= |$knormal:20| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true (|succ_1030$unknown:45| |$knormal:14| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true )
      (|succ_1030$unknown:32| |$knormal:14| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$knormal:20| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) )
    (=>
      ( and (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) )
    (=>
      ( and (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) )
    (=>
      ( and (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:x_DO_NOT_CARE_1643| Int) (|$alpha-12:x_DO_NOT_CARE_1644| Int) (|$alpha-13:x_DO_NOT_CARE_1645| Int) (|$alpha-14:s_EXPARAM_1234| Int) (|$alpha-15:x_DO_NOT_CARE_1640| Int) (|$alpha-16:x_DO_NOT_CARE_1641| Int) (|$alpha-17:x_DO_NOT_CARE_1642| Int) (|$alpha-19:set_flag_zero_1507| Int) (|$alpha-20:s_zero_f_EXPARAM_1500| Int) (|$alpha-21:s_zero_z_1502| Int) (|$alpha-22:z_1033| Int) (|$alpha-23:c9_COEFFICIENT_1235| Int) (|$alpha-24:c12_COEFFICIENT_1238| Int) (|$alpha-25:c11_COEFFICIENT_1237| Int) (|$alpha-26:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1649| Int) (|$alpha-4:x_DO_NOT_CARE_1650| Int) (|$alpha-5:x_DO_NOT_CARE_1651| Int) (|$alpha-6:m_EXPARAM_1232| Int) (|$alpha-7:x_DO_NOT_CARE_1646| Int) (|$alpha-8:x_DO_NOT_CARE_1647| Int) (|$alpha-9:x_DO_NOT_CARE_1648| Int) )
    (=>
      ( and (= |$alpha-26:c10_COEFFICIENT_1236| 0) (= |$alpha-25:c11_COEFFICIENT_1237| 0) (= |$alpha-24:c12_COEFFICIENT_1238| 0) (= |$alpha-23:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:49| |$alpha-22:z_1033| |$alpha-21:s_zero_z_1502| |$alpha-20:s_zero_f_EXPARAM_1500| |$alpha-19:set_flag_zero_1507| |$alpha-17:x_DO_NOT_CARE_1642| |$alpha-16:x_DO_NOT_CARE_1641| |$alpha-15:x_DO_NOT_CARE_1640| |$alpha-14:s_EXPARAM_1234| |$alpha-13:x_DO_NOT_CARE_1645| |$alpha-12:x_DO_NOT_CARE_1644| |$alpha-11:x_DO_NOT_CARE_1643| |$alpha-9:x_DO_NOT_CARE_1648| |$alpha-8:x_DO_NOT_CARE_1647| |$alpha-7:x_DO_NOT_CARE_1646| |$alpha-6:m_EXPARAM_1232| |$alpha-5:x_DO_NOT_CARE_1651| |$alpha-4:x_DO_NOT_CARE_1650| |$alpha-3:x_DO_NOT_CARE_1649|) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$V-reftype:191| Int) (|$V-reftype:193| Int) (|$V-reftype:194| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:98| |$V-reftype:194| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) (|two_1036$unknown:138| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:139| |$V-reftype:194| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$V-reftype:191| Int) (|$V-reftype:274| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:138| |$V-reftype:274| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:97| |$V-reftype:274| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:163| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:259| Int) (|$V-reftype:261| Int) (|$V-reftype:263| Int) (|$V-reftype:265| Int) (|$V-reftype:266| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:134| |$V-reftype:266| |$V-reftype:265| |$V-reftype:263| |$V-reftype:261| |$V-reftype:259| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:93| |$V-reftype:266| |$V-reftype:265| |$V-reftype:263| |$V-reftype:261| |$V-reftype:259| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$V-reftype:163| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$V-reftype:217| Int) (|$V-reftype:219| Int) (|$V-reftype:221| Int) (|$V-reftype:223| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-46:z_1038| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (|two_1036$unknown:76| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:117| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:158| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$V-reftype:217| Int) (|$V-reftype:219| Int) (|$V-reftype:221| Int) (|$V-reftype:223| Int) (|$V-reftype:235| Int) (|$V-reftype:237| Int) (|$V-reftype:239| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-46:z_1038| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (|two_1036$unknown:80| |$V-reftype:158| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:121| |$V-reftype:158| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$V-reftype:217| Int) (|$V-reftype:219| Int) (|$V-reftype:221| Int) (|$V-reftype:223| Int) (|$V-reftype:235| Int) (|$V-reftype:237| Int) (|$V-reftype:239| Int) (|$V-reftype:241| Int) (|$V-reftype:242| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-39:x_DO_NOT_CARE_1631| Int) (|$alpha-40:x_DO_NOT_CARE_1632| Int) (|$alpha-41:x_DO_NOT_CARE_1633| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-46:z_1038| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (|two_1036$unknown:122| |$V-reftype:242| |$V-reftype:241| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-42:z_EXPARAM_1210| |$alpha-41:x_DO_NOT_CARE_1633| |$alpha-40:x_DO_NOT_CARE_1632| |$alpha-39:x_DO_NOT_CARE_1631| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) (|two_1036$unknown:80| |$V-reftype:241| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:81| |$V-reftype:242| |$V-reftype:241| |$V-reftype:239| |$V-reftype:237| |$V-reftype:235| |$V-reftype:223| |$V-reftype:221| |$V-reftype:219| |$V-reftype:217| |$V-reftype:215| |$V-reftype:213| |$alpha-46:z_1038| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:158| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$V-reftype:191| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:61| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:80| |$V-reftype:158| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:97| |$V-reftype:158| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$V-reftype:191| Int) (|$V-reftype:193| Int) (|$V-reftype:194| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:61| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:98| |$V-reftype:194| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) (|two_1036$unknown:80| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:81| |$V-reftype:194| |$V-reftype:193| |$V-reftype:191| |$V-reftype:189| |$V-reftype:187| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$V-reftype:165| Int) (|$V-reftype:167| Int) (|$V-reftype:169| Int) (|$V-reftype:171| Int) (|$V-reftype:173| Int) (|$V-reftype:175| Int) (|$alpha-31:x_DO_NOT_CARE_1637| Int) (|$alpha-32:x_DO_NOT_CARE_1638| Int) (|$alpha-33:x_DO_NOT_CARE_1639| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1634| Int) (|$alpha-36:x_DO_NOT_CARE_1635| Int) (|$alpha-37:x_DO_NOT_CARE_1636| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:61| Int) (|$knormal:67| Int) )
    (=>
      ( and (|two_1036$unknown:76| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:67| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|) true true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      (|two_1036$unknown:93| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:175| |$V-reftype:173| |$V-reftype:171| |$V-reftype:169| |$V-reftype:167| |$V-reftype:165| |$knormal:61| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$knormal:51| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| |$alpha-37:x_DO_NOT_CARE_1636| |$alpha-36:x_DO_NOT_CARE_1635| |$alpha-35:x_DO_NOT_CARE_1634| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1639| |$alpha-32:x_DO_NOT_CARE_1638| |$alpha-31:x_DO_NOT_CARE_1637|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and true (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| (+ |$knormal:40| |$knormal:42|)) (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$knormal:42| (+ |$knormal:41| |$alpha-47:c8_COEFFICIENT_1221|)) (= |$knormal:41| (* |$alpha-48:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:40| (* |$alpha-49:c6_COEFFICIENT_1219| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-47:c8_COEFFICIENT_1221| Int) (|$alpha-48:c7_COEFFICIENT_1220| Int) (|$alpha-49:c6_COEFFICIENT_1219| Int) (|$alpha-50:c5_COEFFICIENT_1215| Int) (|$alpha-51:c4_COEFFICIENT_1214| Int) (|$alpha-52:c3_COEFFICIENT_1213| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:51| (+ |$knormal:43| |$knormal:45|)) (= |$knormal:45| (+ |$knormal:44| |$alpha-50:c5_COEFFICIENT_1215|)) (= |$knormal:44| (* |$alpha-51:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:43| (* |$alpha-52:c3_COEFFICIENT_1213| |$alpha-42:z_EXPARAM_1210|)) (= |$alpha-52:c3_COEFFICIENT_1213| 0) (= |$alpha-51:c4_COEFFICIENT_1214| 0) (= |$alpha-50:c5_COEFFICIENT_1215| 0) (= |$alpha-49:c6_COEFFICIENT_1219| 0) (= |$alpha-48:c7_COEFFICIENT_1220| 0) (= |$alpha-47:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:240| Int) (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$V-reftype:284| Int) (|$V-reftype:286| Int) (|$V-reftype:288| Int) (|$V-reftype:290| Int) (|$V-reftype:302| Int) (|$V-reftype:304| Int) (|$V-reftype:306| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|zero_1039| Int) )
    (=>
      ( and (|two_1036$unknown:121| |$V-reftype:240| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|zero_1039$unknown:155| |$V-reftype:240| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$V-reftype:284| Int) (|$V-reftype:286| Int) (|$V-reftype:288| Int) (|$V-reftype:290| Int) (|$V-reftype:302| Int) (|$V-reftype:304| Int) (|$V-reftype:306| Int) (|$V-reftype:308| Int) (|$V-reftype:309| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|zero_1039| Int) )
    (=>
      ( and (|zero_1039$unknown:156| |$V-reftype:309| |$V-reftype:308| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039|) (|two_1036$unknown:121| |$V-reftype:308| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|two_1036$unknown:122| |$V-reftype:309| |$V-reftype:308| |$V-reftype:306| |$V-reftype:304| |$V-reftype:302| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:225| Int) (|$V-reftype:227| Int) (|$V-reftype:229| Int) (|$V-reftype:231| Int) (|$V-reftype:232| Int) (|$V-reftype:280| Int) (|$V-reftype:282| Int) (|$V-reftype:284| Int) (|$V-reftype:286| Int) (|$V-reftype:288| Int) (|$V-reftype:290| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|zero_1039| Int) )
    (=>
      ( and (|two_1036$unknown:117| |$V-reftype:232| |$V-reftype:231| |$V-reftype:229| |$V-reftype:227| |$V-reftype:225| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|zero_1039$unknown:151| |$V-reftype:232| |$V-reftype:231| |$V-reftype:229| |$V-reftype:227| |$V-reftype:225| |$V-reftype:290| |$V-reftype:288| |$V-reftype:286| |$V-reftype:284| |$V-reftype:282| |$V-reftype:280| |zero_1039|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:137| Int) (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:160| Int) (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:81| |$V-reftype:160| |$V-reftype:159| |$V-reftype:157| |$V-reftype:155| |$V-reftype:153| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) (|succ_1030$unknown:32| |$V-reftype:159| |$V-reftype:157| |$V-reftype:155| |$V-reftype:153| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|) true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|succ_1030$unknown:33| |$V-reftype:160| |$V-reftype:159| |$V-reftype:157| |$V-reftype:155| |$V-reftype:153| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:137| Int) (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:153| Int) (|$V-reftype:155| Int) (|$V-reftype:157| Int) (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:63| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:32| |$V-reftype:63| |$V-reftype:157| |$V-reftype:155| |$V-reftype:153| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|) true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|two_1036$unknown:80| |$V-reftype:63| |$V-reftype:157| |$V-reftype:155| |$V-reftype:153| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:137| Int) (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$V-reftype:55| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:28| |$V-reftype:55| |$V-reftype:54| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|) true true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|two_1036$unknown:76| |$V-reftype:55| |$V-reftype:54| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$V-reftype:141| |$V-reftype:139| |$V-reftype:137| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:129| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:184| Int) (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:93| |$V-reftype:184| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|succ_1030$unknown:45| |$V-reftype:184| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:192| Int) (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:92| Int) (|$V-reftype:94| Int) (|$V-reftype:96| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:97| |$V-reftype:192| |$V-reftype:96| |$V-reftype:94| |$V-reftype:92| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|succ_1030$unknown:49| |$V-reftype:192| |$V-reftype:96| |$V-reftype:94| |$V-reftype:92| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:32| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:92| Int) (|$V-reftype:94| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$V-reftype:99| Int) (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:50| |$V-reftype:99| |$V-reftype:98| |$V-reftype:96| |$V-reftype:94| |$V-reftype:92| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030|) (|two_1036$unknown:97| |$V-reftype:98| |$V-reftype:96| |$V-reftype:94| |$V-reftype:92| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|) true true true true true true true true true true (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) true true true true true true true )
      (|two_1036$unknown:98| |$V-reftype:99| |$V-reftype:98| |$V-reftype:96| |$V-reftype:94| |$V-reftype:92| |$V-reftype:80| |$V-reftype:78| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:32| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$V-reftype:22| |succ_1030| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:294| Int) (|$V-reftype:296| Int) (|$V-reftype:298| Int) (|$V-reftype:299| Int) (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-75:f_1040| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) true true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true (|zero_1039$unknown:151| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$alpha-75:f_1040| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true )
      (|zero_without_checking_1519$unknown:168| |$V-reftype:299| |$V-reftype:298| |$V-reftype:296| |$V-reftype:294| |$alpha-75:f_1040| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) true true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) true true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) true true (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:378| Int) (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) (|$knormal:101| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (= |$V-reftype:378| |$knormal:101|) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_without_checking_1519$unknown:173| |$knormal:101| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      (|zero_1039$unknown:156| |$V-reftype:378| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$knormal:104| Int) )
    (=>
      ( and (= |$knormal:104| 1) (not (= 0 |$alpha-76:prev_set_flag_zero_1506|)) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      (|fail$unknown:3| |$knormal:104|)
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-68:x_DO_NOT_CARE_1524| Int) (|$alpha-69:x_DO_NOT_CARE_1525| Int) (|$alpha-70:x_DO_NOT_CARE_1526| Int) (|$alpha-71:f_EXPARAM_1204| Int) (|$alpha-72:x_DO_NOT_CARE_1521| Int) (|$alpha-73:x_DO_NOT_CARE_1522| Int) (|$alpha-74:x_DO_NOT_CARE_1523| Int) (|$alpha-76:prev_set_flag_zero_1506| Int) (|$alpha-77:s_prev_zero_f_EXPARAM_1503| Int) (|$alpha-78:s_prev_zero_z_1505| Int) (|$alpha-79:z_1041| Int) (|$alpha-81:u| Int) )
    (=>
      ( and (= |$alpha-81:u| 1) (not (not (= 0 |$alpha-76:prev_set_flag_zero_1506|))) (|zero_1039$unknown:155| |$alpha-79:z_1041| |$alpha-78:s_prev_zero_z_1505| |$alpha-77:s_prev_zero_f_EXPARAM_1503| |$alpha-76:prev_set_flag_zero_1506| |$alpha-74:x_DO_NOT_CARE_1523| |$alpha-73:x_DO_NOT_CARE_1522| |$alpha-72:x_DO_NOT_CARE_1521| |$alpha-71:f_EXPARAM_1204| |$alpha-70:x_DO_NOT_CARE_1526| |$alpha-69:x_DO_NOT_CARE_1525| |$alpha-68:x_DO_NOT_CARE_1524|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:373| Int) (|$alpha-53:x_DO_NOT_CARE_1628| Int) (|$alpha-54:x_DO_NOT_CARE_1629| Int) (|$alpha-55:x_DO_NOT_CARE_1630| Int) (|$alpha-56:f_EXPARAM_1204| Int) (|$alpha-57:x_DO_NOT_CARE_1625| Int) (|$alpha-58:x_DO_NOT_CARE_1626| Int) (|$alpha-59:x_DO_NOT_CARE_1627| Int) (|$alpha-61:set_flag_zero_1507| Int) (|$alpha-62:s_zero_f_EXPARAM_1500| Int) (|$alpha-63:s_zero_z_1502| Int) (|$alpha-64:z_1041| Int) (|$alpha-65:set_flag_zero_1507| Int) )
    (=>
      ( and (= |$alpha-65:set_flag_zero_1507| 1) (= |$V-reftype:373| |$alpha-64:z_1041|) true true true true true true true true true true true )
      (|zero_without_checking_1519$unknown:173| |$V-reftype:373| |$alpha-64:z_1041| |$alpha-63:s_zero_z_1502| |$alpha-62:s_zero_f_EXPARAM_1500| |$alpha-61:set_flag_zero_1507| |$alpha-59:x_DO_NOT_CARE_1627| |$alpha-58:x_DO_NOT_CARE_1626| |$alpha-57:x_DO_NOT_CARE_1625| |$alpha-56:f_EXPARAM_1204| |$alpha-55:x_DO_NOT_CARE_1630| |$alpha-54:x_DO_NOT_CARE_1629| |$alpha-53:x_DO_NOT_CARE_1628|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      (|two_1036$unknown:138| |$knormal:159| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-83:c2_COEFFICIENT_1196| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-84:c1_COEFFICIENT_1195| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507| |$alpha-85:c0_COEFFICIENT_1193| |$alpha-88:s_zero_z_1502| |$alpha-87:s_zero_f_EXPARAM_1500| |$alpha-86:set_flag_zero_1507|)
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-83:c2_COEFFICIENT_1196| Int) (|$alpha-84:c1_COEFFICIENT_1195| Int) (|$alpha-85:c0_COEFFICIENT_1193| Int) (|$alpha-86:set_flag_zero_1507| Int) (|$alpha-87:s_zero_f_EXPARAM_1500| Int) (|$alpha-88:s_zero_z_1502| Int) (|$knormal:159| Int) )
    (=>
      ( and (= |$knormal:159| 0) (= |$alpha-88:s_zero_z_1502| 0) (= |$alpha-87:s_zero_f_EXPARAM_1500| 0) (= |$alpha-86:set_flag_zero_1507| 0) (= |$alpha-85:c0_COEFFICIENT_1193| 0) (= |$alpha-84:c1_COEFFICIENT_1195| 0) (= |$alpha-83:c2_COEFFICIENT_1196| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

