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
  
     let rec succ_1030 x_DO_NOT_CARE_1596 x_DO_NOT_CARE_1597 m_EXPARAM_1232 x_DO_NOT_CARE_1594 x_DO_NOT_CARE_1595 m_1031 x_DO_NOT_CARE_1592 x_DO_NOT_CARE_1593 s_EXPARAM_1234 x_DO_NOT_CARE_1590 x_DO_NOT_CARE_1591 s_1032 set_flag_id_1346 s_id_x_1343 z_1033 =
       m_1031 set_flag_id_1346 s_id_x_1343
         ((c9_COEFFICIENT_1235 * z_1033) +
          ((c10_COEFFICIENT_1236 * s_EXPARAM_1234) +
           ((c11_COEFFICIENT_1237 * m_EXPARAM_1232) + c12_COEFFICIENT_1238)))
         set_flag_id_1346 s_id_x_1343 s_1032 set_flag_id_1346 s_id_x_1343
         (s_1032 set_flag_id_1346 s_id_x_1343 z_1033)
  
     let id_without_checking_1376 set_flag_id_1346 s_id_x_1343 x_1035 =
       let set_flag_id_1346 = true
       in
       let s_id_x_1343 = x_1035
       in
         x_1035
  
     let rec id_1034 prev_set_flag_id_1345 s_prev_id_x_1344 x_1035 =
       let u =if prev_set_flag_id_1345 then
                let u_26559 = fail ()
                in
                  bot()
              else () in
              id_without_checking_1376 prev_set_flag_id_1345 s_prev_id_x_1344
                x_1035
  
     let rec two_1036 x_DO_NOT_CARE_1588 x_DO_NOT_CARE_1589 f_EXPARAM_1206 x_DO_NOT_CARE_1586 x_DO_NOT_CARE_1587 f_1037 x_DO_NOT_CARE_1584 x_DO_NOT_CARE_1585 z_EXPARAM_1210 set_flag_id_1346 s_id_x_1343 z_1038 =
       f_1037 set_flag_id_1346 s_id_x_1343
         ((c6_COEFFICIENT_1219 * z_EXPARAM_1210) +
          ((c7_COEFFICIENT_1220 * f_EXPARAM_1206) + c8_COEFFICIENT_1221))
         set_flag_id_1346 s_id_x_1343
         (f_1037 set_flag_id_1346 s_id_x_1343
           ((c3_COEFFICIENT_1213 * z_EXPARAM_1210) +
            ((c4_COEFFICIENT_1214 * f_EXPARAM_1206) + c5_COEFFICIENT_1215))
           set_flag_id_1346 s_id_x_1343 z_1038)
  
     let rec zero_1039 x_DO_NOT_CARE_1582 x_DO_NOT_CARE_1583 f_EXPARAM_1204 x_DO_NOT_CARE_1580 x_DO_NOT_CARE_1581 f_1040 set_flag_id_1346 s_id_x_1343 z_1041 =
       z_1041
  
     let main_1042 set_flag_id_1346 s_id_x_1343 u_1043 =
       two_1036 set_flag_id_1346 s_id_x_1343 c0_COEFFICIENT_1193 set_flag_id_1346
         s_id_x_1343 succ_1030 set_flag_id_1346 s_id_x_1343 c1_COEFFICIENT_1195
         set_flag_id_1346 s_id_x_1343 zero_1039 set_flag_id_1346 s_id_x_1343
         c2_COEFFICIENT_1196 set_flag_id_1346 s_id_x_1343 id_1034
         set_flag_id_1346 s_id_x_1343 0
  
     let main = main_1042 false 0 ()
")

(set-logic HORN)

(declare-fun |zero_1039$unknown:122|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:70|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:65|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:79|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:82|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |succ_1030$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:38| Int) (|$knormal:40| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:38| 1) (|fail$unknown:4| |$knormal:40| 1) (|succ_1030$unknown:42| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (= 0 0) (= 0 0) )
      (|id_1034$unknown:8| |$alpha-29:x_1035| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) )
    ( and (|succ_1030$unknown:42| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (not (= 0 |$cond-alpha-rename:101|)) (= 0 0) (= 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (not (not (= 0 |$alpha-27:prev_set_flag_id_1345|))) (= 0 0) (= 0 0) )
      (|id_1034$unknown:8| |$alpha-29:x_1035| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:80| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-14:s_1032| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) (|two_1036$unknown:65| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| (+ (* 0 |$alpha-17:z_1033|) (+ (* 0 |$alpha-11:s_EXPARAM_1234|) (+ (* 0 |$alpha-5:m_EXPARAM_1232|) 0))) |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596| 0 0 0 0 0) (|two_1036$unknown:79| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596| 0 0 0 0 0) (|two_1036$unknown:82| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596| 0 0 0 0 0) )
      (|succ_1030$unknown:42| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) )
    (=>
      ( and (|two_1036$unknown:82| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596| 0 0 0 0 0) )
      (|succ_1030$unknown:42| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|two_1036$unknown:82| 0 0 0 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$V-reftype:216| Int) )
    (=>
      ( and (|id_1034$unknown:8| |$V-reftype:216| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211|) (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (= 0 0) (= 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:79| |$V-reftype:216| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:197| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:773| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:773| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (|two_1036$unknown:79| |$V-reftype:197| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:773| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762| |$cond-alpha-rename:773| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:70| |$V-reftype:197| |$V-reftype:197| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:767| |$cond-alpha-rename:766| (+ (* 0 |$cond-alpha-rename:768|) (+ (* 0 |$cond-alpha-rename:763|) (+ (* 0 (+ (* 0 0) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:767| |$cond-alpha-rename:766| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:188| Int) (|$alpha-43:z_1038| Int) )
    (=>
      ( and (|zero_1039$unknown:122| |$V-reftype:188| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038|) )
      (|two_1036$unknown:65| |$V-reftype:188| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$cond-alpha-rename:790| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:792| Int) (|$cond-alpha-rename:793| Int) (|$cond-alpha-rename:794| Int) (|$cond-alpha-rename:795| Int) (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:801| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794| |$cond-alpha-rename:793| |$cond-alpha-rename:792| |$cond-alpha-rename:791| |$cond-alpha-rename:790| |$cond-alpha-rename:801| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|two_1036$unknown:79| |$V-reftype:134| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794| |$cond-alpha-rename:793| |$cond-alpha-rename:792| |$cond-alpha-rename:791| |$cond-alpha-rename:790| |$cond-alpha-rename:801| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794| |$cond-alpha-rename:793| |$cond-alpha-rename:792| |$cond-alpha-rename:791| |$cond-alpha-rename:790| |$cond-alpha-rename:801| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) )
      (|two_1036$unknown:82| |$V-reftype:134| |$cond-alpha-rename:795| |$cond-alpha-rename:794| |$cond-alpha-rename:795| |$cond-alpha-rename:794| (+ (* 0 |$cond-alpha-rename:796|) (+ (* 0 |$cond-alpha-rename:791|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:795| |$cond-alpha-rename:794| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:161| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$cond-alpha-rename:818| Int) (|$cond-alpha-rename:819| Int) (|$cond-alpha-rename:820| Int) (|$cond-alpha-rename:821| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:829| Int) (|$cond-alpha-rename:887| Int) (|$cond-alpha-rename:888| Int) (|$cond-alpha-rename:889| Int) (|$cond-alpha-rename:890| Int) (|$cond-alpha-rename:891| Int) (|$cond-alpha-rename:892| Int) (|$cond-alpha-rename:893| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:923| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$V-reftype:161| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$cond-alpha-rename:824| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:821| |$cond-alpha-rename:820| |$cond-alpha-rename:819| |$cond-alpha-rename:818| |$cond-alpha-rename:829| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$cond-alpha-rename:893| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:890| |$cond-alpha-rename:889| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:898| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|two_1036$unknown:70| |$cond-alpha-rename:923| |$cond-alpha-rename:920| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:893|) (+ (* 0 |$cond-alpha-rename:888|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:161| |$cond-alpha-rename:824| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:821| |$cond-alpha-rename:820| |$cond-alpha-rename:819| |$cond-alpha-rename:818| |$cond-alpha-rename:829| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:920| |$V-reftype:161| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:920| |$cond-alpha-rename:893| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:890| |$cond-alpha-rename:889| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:898| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$V-reftype:161| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$V-reftype:161| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:824| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:821| |$cond-alpha-rename:820| |$cond-alpha-rename:819| |$cond-alpha-rename:818| |$cond-alpha-rename:829| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:893| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:890| |$cond-alpha-rename:889| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:898| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (= 0 0) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:893|) (+ (* 0 |$cond-alpha-rename:888|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) (+ (* 0 |$V-reftype:161|) (+ (* 0 (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0)))) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0)))) )
      (|two_1036$unknown:70| |$cond-alpha-rename:923| |$V-reftype:161| |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$cond-alpha-rename:892| |$cond-alpha-rename:891| (+ (* 0 |$cond-alpha-rename:824|) (+ (* 0 |$cond-alpha-rename:819|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:892| |$cond-alpha-rename:891| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:128| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:690| Int) (|$cond-alpha-rename:691| Int) (|$cond-alpha-rename:692| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:694| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:704| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:693| |$cond-alpha-rename:692| (+ (* 0 |$cond-alpha-rename:694|) (+ (* 0 |$cond-alpha-rename:689|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:699| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$cond-alpha-rename:694| |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:699| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|two_1036$unknown:65| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:693| |$cond-alpha-rename:692| (+ (* 0 |$cond-alpha-rename:694|) (+ (* 0 |$cond-alpha-rename:689|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:65| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:693| |$cond-alpha-rename:692| (+ (* 0 |$cond-alpha-rename:694|) (+ (* 0 |$cond-alpha-rename:689|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:699| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:704| |$cond-alpha-rename:694| |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:699| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:694| |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$cond-alpha-rename:691| |$cond-alpha-rename:690| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:699| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:693| |$cond-alpha-rename:692| (+ (* 0 |$cond-alpha-rename:694|) (+ (* 0 |$cond-alpha-rename:689|) (+ (* 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0))) 0))) |$cond-alpha-rename:693| |$cond-alpha-rename:692| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:152| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$knormal:58| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$V-reftype:152| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) )
      (|two_1036$unknown:65| |$V-reftype:152| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

