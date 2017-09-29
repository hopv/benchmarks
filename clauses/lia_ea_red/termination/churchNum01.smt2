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

(declare-fun |two_1036$unknown:70|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |zero_1039$unknown:122|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:82|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:79|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) )
    ( and (|succ_1030$unknown:42| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101| 0 0 0 0 0 0 0 (+ 0 (+ 0 0)) 0 0) (not (= 0 |$cond-alpha-rename:101|)) (= 0 0) (= 0 0) (= 0 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:80| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-14:s_1032| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (|zero_1039$unknown:122| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| (+ (* 0 |$alpha-17:z_1033|) (+ (* 0 |$alpha-11:s_EXPARAM_1234|) (+ (* 0 (+ (* 0 0) (+ 0 0))) 0))) |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346|) (|two_1036$unknown:82| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| 0 0 (+ (* 0 0) (+ 0 0)) 0 0 0 0 0 0 0) (|two_1036$unknown:79| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| 0 0 (+ (* 0 0) (+ 0 0)) 0 0 0 0 0 0 0) (|succ_1030$unknown:42| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| 0 0 (+ (* 0 0) (+ 0 0)) 0 0) )
      (|succ_1030$unknown:42| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| 0 0 (+ (* 0 0) (+ 0 0)) 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:80| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-14:s_1032| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$cond-alpha-rename:5156| Int) (|$cond-alpha-rename:5157| Int) (|$cond-alpha-rename:5158| Int) (|$knormal:12| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (|two_1036$unknown:82| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0)) |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| 0 0 0 0 0) (|two_1036$unknown:79| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0)) |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| 0 0 0 0 0) (|succ_1030$unknown:42| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0)) |$cond-alpha-rename:5158| |$cond-alpha-rename:5157|) (|succ_1030$unknown:42| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| (+ (* 0 |$alpha-17:z_1033|) (+ (* 0 |$alpha-11:s_EXPARAM_1234|) (+ (* 0 (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0))) 0))) |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0)) |$cond-alpha-rename:5158| |$cond-alpha-rename:5157|) )
      (|succ_1030$unknown:42| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$cond-alpha-rename:5158| |$cond-alpha-rename:5157| (+ (* 0 |$cond-alpha-rename:5156|) (+ 0 0)) |$cond-alpha-rename:5158| |$cond-alpha-rename:5157|)
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
  (forall ( (unused Int) )
    (=>
      ( and true )
      (|two_1036$unknown:82| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$cond-alpha-rename:4871| Int) (|$cond-alpha-rename:4873| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:4871| 1) (|fail$unknown:4| |$cond-alpha-rename:4873| 1) (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (not (= 0 |$V-reftype:211|)) (= 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:79| |$V-reftype:215| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (|succ_1030$unknown:42| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) (not (not (= 0 |$V-reftype:211|))) (= 0 0) (= 0 0) (= 0 0) )
      (|two_1036$unknown:79| |$V-reftype:215| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:197| Int) (|$cond-alpha-rename:3362| Int) (|$cond-alpha-rename:3363| Int) (|$cond-alpha-rename:3364| Int) (|$cond-alpha-rename:3365| Int) (|$cond-alpha-rename:3366| Int) (|$cond-alpha-rename:3367| Int) (|$cond-alpha-rename:3368| Int) (|$cond-alpha-rename:3373| Int) )
    (=>
      ( and (= 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:3368| |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| |$cond-alpha-rename:3365| |$cond-alpha-rename:3364| |$cond-alpha-rename:3363| |$cond-alpha-rename:3362| |$cond-alpha-rename:3373| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:197| |$cond-alpha-rename:3368| |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| |$cond-alpha-rename:3365| |$cond-alpha-rename:3364| |$cond-alpha-rename:3363| |$cond-alpha-rename:3362| |$cond-alpha-rename:3373| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|succ_1030$unknown:42| |$cond-alpha-rename:3368| |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| |$cond-alpha-rename:3365| |$cond-alpha-rename:3364| |$cond-alpha-rename:3363| |$cond-alpha-rename:3362| |$cond-alpha-rename:3373| 0 0 (+ (* 0 0) (+ (* 0 0) 0)) 0 0) )
      (|two_1036$unknown:70| |$V-reftype:197| |$V-reftype:197| |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| 0 |$cond-alpha-rename:3367| |$cond-alpha-rename:3366| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$cond-alpha-rename:3390| Int) (|$cond-alpha-rename:3391| Int) (|$cond-alpha-rename:3392| Int) (|$cond-alpha-rename:3393| Int) (|$cond-alpha-rename:3394| Int) (|$cond-alpha-rename:3395| Int) (|$cond-alpha-rename:3396| Int) (|$cond-alpha-rename:3401| Int) )
    (=>
      ( and (|two_1036$unknown:82| |$cond-alpha-rename:3396| |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| |$cond-alpha-rename:3393| |$cond-alpha-rename:3392| |$cond-alpha-rename:3391| |$cond-alpha-rename:3390| |$cond-alpha-rename:3401| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:134| |$cond-alpha-rename:3396| |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| |$cond-alpha-rename:3393| |$cond-alpha-rename:3392| |$cond-alpha-rename:3391| |$cond-alpha-rename:3390| |$cond-alpha-rename:3401| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|succ_1030$unknown:42| |$cond-alpha-rename:3396| |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| |$cond-alpha-rename:3393| |$cond-alpha-rename:3392| |$cond-alpha-rename:3391| |$cond-alpha-rename:3390| |$cond-alpha-rename:3401| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) )
      (|two_1036$unknown:82| |$V-reftype:134| |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| (+ (* 0 |$cond-alpha-rename:3396|) (+ (* 0 |$cond-alpha-rename:3391|) (+ 0 0))) |$cond-alpha-rename:3395| |$cond-alpha-rename:3394| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:161| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$cond-alpha-rename:3418| Int) (|$cond-alpha-rename:3419| Int) (|$cond-alpha-rename:3420| Int) (|$cond-alpha-rename:3421| Int) (|$cond-alpha-rename:3424| Int) (|$cond-alpha-rename:3429| Int) (|$cond-alpha-rename:3882| Int) (|$cond-alpha-rename:3883| Int) (|$cond-alpha-rename:3884| Int) (|$cond-alpha-rename:3885| Int) (|$cond-alpha-rename:3886| Int) (|$cond-alpha-rename:3887| Int) (|$cond-alpha-rename:3888| Int) (|$cond-alpha-rename:3893| Int) (|$cond-alpha-rename:3915| Int) (|$cond-alpha-rename:3918| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:3888|) (+ (* 0 |$cond-alpha-rename:3883|) (+ 0 0))) (+ (* 0 |$V-reftype:161|) (+ 0 (+ 0 0)))) (|two_1036$unknown:82| |$cond-alpha-rename:3888| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3885| |$cond-alpha-rename:3884| |$cond-alpha-rename:3883| |$cond-alpha-rename:3882| |$cond-alpha-rename:3893| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:3424| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3421| |$cond-alpha-rename:3420| |$cond-alpha-rename:3419| |$cond-alpha-rename:3418| |$cond-alpha-rename:3429| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$V-reftype:161| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| (+ (* 0 |$cond-alpha-rename:3424|) (+ (* 0 |$cond-alpha-rename:3419|) (+ 0 0))) |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:82| |$V-reftype:161| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| (+ (* 0 |$cond-alpha-rename:3424|) (+ (* 0 |$cond-alpha-rename:3419|) (+ 0 0))) |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:3915| |$cond-alpha-rename:3888| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3885| |$cond-alpha-rename:3884| |$cond-alpha-rename:3883| |$cond-alpha-rename:3882| |$cond-alpha-rename:3893| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:3915| |$V-reftype:161| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| (+ (* 0 |$cond-alpha-rename:3424|) (+ (* 0 |$cond-alpha-rename:3419|) (+ 0 0))) |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:161| |$cond-alpha-rename:3424| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3421| |$cond-alpha-rename:3420| |$cond-alpha-rename:3419| |$cond-alpha-rename:3418| |$cond-alpha-rename:3429| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|two_1036$unknown:70| |$cond-alpha-rename:3918| |$cond-alpha-rename:3915| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| (+ (* 0 |$cond-alpha-rename:3888|) (+ (* 0 |$cond-alpha-rename:3883|) (+ 0 0))) |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0) (|succ_1030$unknown:42| |$cond-alpha-rename:3888| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3885| |$cond-alpha-rename:3884| |$cond-alpha-rename:3883| |$cond-alpha-rename:3882| |$cond-alpha-rename:3893| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$cond-alpha-rename:3424| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3421| |$cond-alpha-rename:3420| |$cond-alpha-rename:3419| |$cond-alpha-rename:3418| |$cond-alpha-rename:3429| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) (|succ_1030$unknown:42| |$V-reftype:161| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| (+ (* 0 |$cond-alpha-rename:3424|) (+ (* 0 |$cond-alpha-rename:3419|) (+ 0 0))) |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346|) )
      (|two_1036$unknown:70| |$cond-alpha-rename:3918| |$V-reftype:161| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| 0 |$cond-alpha-rename:3887| |$cond-alpha-rename:3886| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:128| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$cond-alpha-rename:3121| Int) (|$cond-alpha-rename:3122| Int) (|$cond-alpha-rename:3123| Int) (|$cond-alpha-rename:3124| Int) (|$cond-alpha-rename:3125| Int) (|$cond-alpha-rename:3126| Int) (|$cond-alpha-rename:3127| Int) (|$cond-alpha-rename:3132| Int) (|$cond-alpha-rename:3137| Int) )
    (=>
      ( and (= 0 (+ (* 0 0) (+ 0 0))) (= 0 0) (= 0 0) (= 0 0) (|zero_1039$unknown:122| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| (+ (* 0 |$cond-alpha-rename:3127|) (+ (* 0 |$cond-alpha-rename:3122|) (+ 0 0))) |$cond-alpha-rename:3126| |$cond-alpha-rename:3125|) (|two_1036$unknown:82| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:3137| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0 0 0 0 0 0) (|succ_1030$unknown:42| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| (+ (* 0 |$cond-alpha-rename:3127|) (+ (* 0 |$cond-alpha-rename:3122|) (+ 0 0))) |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| 0 0 (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) 0 0) )
      (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| 0 |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:128| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$cond-alpha-rename:3121| Int) (|$cond-alpha-rename:3122| Int) (|$cond-alpha-rename:3123| Int) (|$cond-alpha-rename:3124| Int) (|$cond-alpha-rename:3125| Int) (|$cond-alpha-rename:3126| Int) (|$cond-alpha-rename:3127| Int) (|$cond-alpha-rename:3132| Int) (|$cond-alpha-rename:3137| Int) (|$cond-alpha-rename:5189| Int) (|$cond-alpha-rename:5190| Int) (|$cond-alpha-rename:5191| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:5189|) (+ 0 0))) (= 0 0) (= 0 0) (= 0 0) (|two_1036$unknown:82| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| 0 0 0 0 0) (|two_1036$unknown:79| |$cond-alpha-rename:3137| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| 0 0 0 0 0) (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| 0 0 0 0 0) (|succ_1030$unknown:42| |$cond-alpha-rename:3127| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190|) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| (+ (* 0 |$cond-alpha-rename:3127|) (+ (* 0 |$cond-alpha-rename:3122|) (+ 0 0))) |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$cond-alpha-rename:5189|) (+ 0 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190|) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| (+ (* 0 |$cond-alpha-rename:3127|) (+ (* 0 |$cond-alpha-rename:3122|) (+ 0 0))) |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190|) (|succ_1030$unknown:42| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3124| |$cond-alpha-rename:3123| |$cond-alpha-rename:3122| |$cond-alpha-rename:3121| |$cond-alpha-rename:3132| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| (+ (* 0 |$alpha-40:z_EXPARAM_1210|) (+ (* 0 0) 0)) |$cond-alpha-rename:5191| |$cond-alpha-rename:5190|) )
      (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| 0 |$cond-alpha-rename:3126| |$cond-alpha-rename:3125| |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| 0 |$cond-alpha-rename:5191| |$cond-alpha-rename:5190| 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

