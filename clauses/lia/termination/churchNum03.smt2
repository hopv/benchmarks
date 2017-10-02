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

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |two_1036$unknown:93|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:97|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:4304| Int) (|$cond-alpha-rename:4305| Int) (|$cond-alpha-rename:4306| Int) (|$cond-alpha-rename:4307| Int) (|$cond-alpha-rename:4308| Int) (|$cond-alpha-rename:4309| Int) (|$cond-alpha-rename:4310| Int) (|$cond-alpha-rename:4311| Int) (|$cond-alpha-rename:4312| Int) (|$cond-alpha-rename:4313| Int) (|$cond-alpha-rename:4314| Int) )
    ( and (|two_1036$unknown:93| |$cond-alpha-rename:131| |$cond-alpha-rename:4314| |$cond-alpha-rename:4313| |$cond-alpha-rename:4312| |$cond-alpha-rename:4311| |$cond-alpha-rename:4310| |$cond-alpha-rename:4309| |$cond-alpha-rename:4308| |$cond-alpha-rename:4307| |$cond-alpha-rename:4306| |$cond-alpha-rename:4305| |$cond-alpha-rename:4304| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:4314| |$cond-alpha-rename:4313| |$cond-alpha-rename:4312| |$cond-alpha-rename:4311| |$cond-alpha-rename:4310| |$cond-alpha-rename:4309| |$cond-alpha-rename:4308| |$cond-alpha-rename:4307| |$cond-alpha-rename:4306| |$cond-alpha-rename:4305| |$cond-alpha-rename:4304| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:4311|)) (= 0 0) (= 0 0) (= 0 0) )
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      (|two_1036$unknown:97| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:259| Int) (|$V-reftype:261| Int) (|$V-reftype:263| Int) (|$V-reftype:265| Int) )
    (=>
      ( and true )
      (|two_1036$unknown:93| |$V-reftype:265| |$V-reftype:265| |$V-reftype:263| |$V-reftype:261| |$V-reftype:259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:241| Int) (|$cond-alpha-rename:2983| Int) (|$cond-alpha-rename:2984| Int) (|$cond-alpha-rename:2985| Int) (|$cond-alpha-rename:2986| Int) (|$cond-alpha-rename:2987| Int) (|$cond-alpha-rename:2988| Int) (|$cond-alpha-rename:2989| Int) (|$cond-alpha-rename:2993| Int) (|$cond-alpha-rename:3014| Int) (|$cond-alpha-rename:3015| Int) (|$cond-alpha-rename:3016| Int) (|$cond-alpha-rename:3017| Int) (|$cond-alpha-rename:3018| Int) (|$cond-alpha-rename:3019| Int) (|$cond-alpha-rename:3020| Int) (|$cond-alpha-rename:3024| Int) (|$cond-alpha-rename:5004| Int) (|$cond-alpha-rename:5005| Int) (|$cond-alpha-rename:5006| Int) (|$cond-alpha-rename:5007| Int) (|$cond-alpha-rename:5008| Int) (|$cond-alpha-rename:5009| Int) (|$cond-alpha-rename:5010| Int) (|$cond-alpha-rename:5011| Int) (|$cond-alpha-rename:5012| Int) (|$cond-alpha-rename:5013| Int) (|$cond-alpha-rename:5014| Int) (|$cond-alpha-rename:5026| Int) (|$cond-alpha-rename:5028| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:5026| 1) (|fail$unknown:4| |$cond-alpha-rename:5028| 1) (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:2993| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:2989| |$cond-alpha-rename:2988| |$cond-alpha-rename:2987| |$cond-alpha-rename:2986| |$cond-alpha-rename:2985| |$cond-alpha-rename:2984| |$cond-alpha-rename:2983| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:3024| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:3020| |$cond-alpha-rename:3019| |$cond-alpha-rename:3018| |$cond-alpha-rename:3017| |$cond-alpha-rename:3016| |$cond-alpha-rename:3015| |$cond-alpha-rename:3014| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:5014| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:5010| |$cond-alpha-rename:5009| |$cond-alpha-rename:5008| |$cond-alpha-rename:5007| |$cond-alpha-rename:5006| |$cond-alpha-rename:5005| |$cond-alpha-rename:5004| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:2993| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:2989| |$cond-alpha-rename:2988| |$cond-alpha-rename:2987| |$cond-alpha-rename:2986| |$cond-alpha-rename:2985| |$cond-alpha-rename:2984| |$cond-alpha-rename:2983| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:3024| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:3020| |$cond-alpha-rename:3019| |$cond-alpha-rename:3018| |$cond-alpha-rename:3017| |$cond-alpha-rename:3016| |$cond-alpha-rename:3015| |$cond-alpha-rename:3014| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:5014| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:5010| |$cond-alpha-rename:5009| |$cond-alpha-rename:5008| |$cond-alpha-rename:5007| |$cond-alpha-rename:5006| |$cond-alpha-rename:5005| |$cond-alpha-rename:5004| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:5011|)) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:5014|) (+ (* 0 |$cond-alpha-rename:5007|) (+ (* 0 (+ (* 0 0) (+ (* 0 0) 0))) 0)))) )
      (|two_1036$unknown:81| |$V-reftype:241| |$V-reftype:241| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| 0 |$cond-alpha-rename:5013| |$cond-alpha-rename:5012| |$cond-alpha-rename:5011| 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:241| Int) (|$cond-alpha-rename:2983| Int) (|$cond-alpha-rename:2984| Int) (|$cond-alpha-rename:2985| Int) (|$cond-alpha-rename:2986| Int) (|$cond-alpha-rename:2987| Int) (|$cond-alpha-rename:2988| Int) (|$cond-alpha-rename:2989| Int) (|$cond-alpha-rename:2993| Int) (|$cond-alpha-rename:3014| Int) (|$cond-alpha-rename:3015| Int) (|$cond-alpha-rename:3016| Int) (|$cond-alpha-rename:3017| Int) (|$cond-alpha-rename:3018| Int) (|$cond-alpha-rename:3019| Int) (|$cond-alpha-rename:3020| Int) (|$cond-alpha-rename:3024| Int) (|$cond-alpha-rename:5052| Int) (|$cond-alpha-rename:5053| Int) (|$cond-alpha-rename:5054| Int) (|$cond-alpha-rename:5055| Int) (|$cond-alpha-rename:5056| Int) (|$cond-alpha-rename:5057| Int) (|$cond-alpha-rename:5058| Int) (|$cond-alpha-rename:5059| Int) (|$cond-alpha-rename:5060| Int) (|$cond-alpha-rename:5061| Int) (|$cond-alpha-rename:5062| Int) )
    (=>
      ( and (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:2993| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:2989| |$cond-alpha-rename:2988| |$cond-alpha-rename:2987| |$cond-alpha-rename:2986| |$cond-alpha-rename:2985| |$cond-alpha-rename:2984| |$cond-alpha-rename:2983| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:3024| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:3020| |$cond-alpha-rename:3019| |$cond-alpha-rename:3018| |$cond-alpha-rename:3017| |$cond-alpha-rename:3016| |$cond-alpha-rename:3015| |$cond-alpha-rename:3014| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:241| |$cond-alpha-rename:5062| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:5058| |$cond-alpha-rename:5057| |$cond-alpha-rename:5056| |$cond-alpha-rename:5055| |$cond-alpha-rename:5054| |$cond-alpha-rename:5053| |$cond-alpha-rename:5052| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:2993| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:2989| |$cond-alpha-rename:2988| |$cond-alpha-rename:2987| |$cond-alpha-rename:2986| |$cond-alpha-rename:2985| |$cond-alpha-rename:2984| |$cond-alpha-rename:2983| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:3024| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:3020| |$cond-alpha-rename:3019| |$cond-alpha-rename:3018| |$cond-alpha-rename:3017| |$cond-alpha-rename:3016| |$cond-alpha-rename:3015| |$cond-alpha-rename:3014| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:5062| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:5058| |$cond-alpha-rename:5057| |$cond-alpha-rename:5056| |$cond-alpha-rename:5055| |$cond-alpha-rename:5054| |$cond-alpha-rename:5053| |$cond-alpha-rename:5052| 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$cond-alpha-rename:5059|))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 (+ (* 0 |$cond-alpha-rename:5062|) (+ (* 0 |$cond-alpha-rename:5055|) (+ (* 0 (+ (* 0 0) (+ (* 0 0) 0))) 0)))) )
      (|two_1036$unknown:81| |$V-reftype:241| |$V-reftype:241| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| 0 |$cond-alpha-rename:5061| |$cond-alpha-rename:5060| |$cond-alpha-rename:5059| 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:158| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$cond-alpha-rename:3045| Int) (|$cond-alpha-rename:3046| Int) (|$cond-alpha-rename:3047| Int) (|$cond-alpha-rename:3048| Int) (|$cond-alpha-rename:3049| Int) (|$cond-alpha-rename:3050| Int) (|$cond-alpha-rename:3051| Int) (|$cond-alpha-rename:3052| Int) (|$cond-alpha-rename:3053| Int) (|$cond-alpha-rename:3054| Int) (|$cond-alpha-rename:3055| Int) )
    (=>
      ( and (|two_1036$unknown:97| |$cond-alpha-rename:3055| |$cond-alpha-rename:3054| |$cond-alpha-rename:3053| |$cond-alpha-rename:3052| |$cond-alpha-rename:3051| |$cond-alpha-rename:3050| |$cond-alpha-rename:3049| |$cond-alpha-rename:3048| |$cond-alpha-rename:3047| |$cond-alpha-rename:3046| |$cond-alpha-rename:3045| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:158| |$cond-alpha-rename:3055| |$cond-alpha-rename:3054| |$cond-alpha-rename:3053| |$cond-alpha-rename:3052| |$cond-alpha-rename:3051| |$cond-alpha-rename:3050| |$cond-alpha-rename:3049| |$cond-alpha-rename:3048| |$cond-alpha-rename:3047| |$cond-alpha-rename:3046| |$cond-alpha-rename:3045| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) )
      (|two_1036$unknown:97| |$V-reftype:158| |$cond-alpha-rename:3054| |$cond-alpha-rename:3053| |$cond-alpha-rename:3052| |$cond-alpha-rename:3054| |$cond-alpha-rename:3053| |$cond-alpha-rename:3052| (+ (* 0 |$cond-alpha-rename:3055|) (+ (* 0 |$cond-alpha-rename:3048|) (+ 0 0))) |$cond-alpha-rename:3054| |$cond-alpha-rename:3053| |$cond-alpha-rename:3052| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:193| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$cond-alpha-rename:3076| Int) (|$cond-alpha-rename:3077| Int) (|$cond-alpha-rename:3078| Int) (|$cond-alpha-rename:3079| Int) (|$cond-alpha-rename:3080| Int) (|$cond-alpha-rename:3081| Int) (|$cond-alpha-rename:3082| Int) (|$cond-alpha-rename:3086| Int) (|$cond-alpha-rename:3522| Int) (|$cond-alpha-rename:3523| Int) (|$cond-alpha-rename:3524| Int) (|$cond-alpha-rename:3525| Int) (|$cond-alpha-rename:3526| Int) (|$cond-alpha-rename:3527| Int) (|$cond-alpha-rename:3528| Int) (|$cond-alpha-rename:3529| Int) (|$cond-alpha-rename:3530| Int) (|$cond-alpha-rename:3531| Int) (|$cond-alpha-rename:3532| Int) (|$cond-alpha-rename:3558| Int) (|$cond-alpha-rename:3561| Int) )
    (=>
      ( and (|two_1036$unknown:81| |$cond-alpha-rename:3561| |$cond-alpha-rename:3558| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| (+ (* 0 |$cond-alpha-rename:3532|) (+ (* 0 |$cond-alpha-rename:3525|) (+ 0 0))) |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$V-reftype:193| |$cond-alpha-rename:3086| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3082| |$cond-alpha-rename:3081| |$cond-alpha-rename:3080| |$cond-alpha-rename:3079| |$cond-alpha-rename:3078| |$cond-alpha-rename:3077| |$cond-alpha-rename:3076| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$cond-alpha-rename:3558| |$V-reftype:193| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| (+ (* 0 |$cond-alpha-rename:3086|) (+ (* 0 |$cond-alpha-rename:3079|) (+ 0 0))) |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$cond-alpha-rename:3558| |$cond-alpha-rename:3532| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3528| |$cond-alpha-rename:3527| |$cond-alpha-rename:3526| |$cond-alpha-rename:3525| |$cond-alpha-rename:3524| |$cond-alpha-rename:3523| |$cond-alpha-rename:3522| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$V-reftype:193| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| (+ (* 0 |$cond-alpha-rename:3086|) (+ (* 0 |$cond-alpha-rename:3079|) (+ 0 0))) |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$V-reftype:193| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| (+ (* 0 |$cond-alpha-rename:3086|) (+ (* 0 |$cond-alpha-rename:3079|) (+ 0 0))) |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:3086| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3082| |$cond-alpha-rename:3081| |$cond-alpha-rename:3080| |$cond-alpha-rename:3079| |$cond-alpha-rename:3078| |$cond-alpha-rename:3077| |$cond-alpha-rename:3076| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:3532| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3528| |$cond-alpha-rename:3527| |$cond-alpha-rename:3526| |$cond-alpha-rename:3525| |$cond-alpha-rename:3524| |$cond-alpha-rename:3523| |$cond-alpha-rename:3522| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (= (+ (* 0 |$cond-alpha-rename:3532|) (+ (* 0 |$cond-alpha-rename:3525|) (+ 0 0))) (+ (* 0 |$V-reftype:193|) (+ 0 (+ 0 0)))) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:81| |$cond-alpha-rename:3561| |$V-reftype:193| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| 0 |$cond-alpha-rename:3531| |$cond-alpha-rename:3530| |$cond-alpha-rename:3529| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$alpha-42:z_EXPARAM_1210| Int) (|$alpha-43:set_flag_zero_1507| Int) (|$alpha-44:s_zero_f_EXPARAM_1500| Int) (|$alpha-45:s_zero_z_1502| Int) (|$cond-alpha-rename:2675| Int) (|$cond-alpha-rename:2676| Int) (|$cond-alpha-rename:2677| Int) (|$cond-alpha-rename:2678| Int) (|$cond-alpha-rename:2679| Int) (|$cond-alpha-rename:2680| Int) (|$cond-alpha-rename:2681| Int) (|$cond-alpha-rename:2682| Int) (|$cond-alpha-rename:2683| Int) (|$cond-alpha-rename:2684| Int) (|$cond-alpha-rename:2685| Int) (|$cond-alpha-rename:2690| Int) )
    (=>
      ( and (|two_1036$unknown:93| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$cond-alpha-rename:2681| |$cond-alpha-rename:2680| |$cond-alpha-rename:2679| |$cond-alpha-rename:2678| |$cond-alpha-rename:2677| |$cond-alpha-rename:2676| |$cond-alpha-rename:2675| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:93| |$cond-alpha-rename:2690| |$cond-alpha-rename:2685| |$cond-alpha-rename:2684| |$cond-alpha-rename:2683| |$cond-alpha-rename:2682| |$cond-alpha-rename:2681| |$cond-alpha-rename:2680| |$cond-alpha-rename:2679| |$cond-alpha-rename:2678| |$cond-alpha-rename:2677| |$cond-alpha-rename:2676| |$cond-alpha-rename:2675| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) (|two_1036$unknown:97| |$cond-alpha-rename:2685| |$cond-alpha-rename:2684| |$cond-alpha-rename:2683| |$cond-alpha-rename:2682| |$cond-alpha-rename:2681| |$cond-alpha-rename:2680| |$cond-alpha-rename:2679| |$cond-alpha-rename:2678| |$cond-alpha-rename:2677| |$cond-alpha-rename:2676| |$cond-alpha-rename:2675| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| (+ (* 0 |$alpha-42:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0) )
      (|two_1036$unknown:93| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$cond-alpha-rename:2684| |$cond-alpha-rename:2683| |$cond-alpha-rename:2682| (+ (* 0 |$cond-alpha-rename:2685|) (+ (* 0 |$cond-alpha-rename:2678|) (+ 0 0))) |$cond-alpha-rename:2684| |$cond-alpha-rename:2683| |$cond-alpha-rename:2682| |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 |$alpha-45:s_zero_z_1502| |$alpha-44:s_zero_f_EXPARAM_1500| |$alpha-43:set_flag_zero_1507| 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

