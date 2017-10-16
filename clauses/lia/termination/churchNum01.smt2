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

(declare-fun |two_1036$unknown:113|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:96|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_1039$unknown:123|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:97|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_1039$unknown:122|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:101|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zero_1039$unknown:127|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:83|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:47|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:46|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:82|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:78|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:43|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:79|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:66|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:65|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:69|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:34|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:70|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1042$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:114|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |two_1036$unknown:109|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1042$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |id_1034$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_without_checking_1376$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:251| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:251| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:251| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:268| Int) (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:39| 1) (= |$knormal:37| 1) (= |$V-reftype:268| |$knormal:36|) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_without_checking_1376$unknown:12| |$knormal:36| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true (|fail$unknown:4| |$knormal:40| |$knormal:39|) (|bot$unknown:2| |$knormal:38| |$knormal:37|) )
      (|id_1034$unknown:8| |$V-reftype:268| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:39| 1) (= |$knormal:37| 1) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true (|fail$unknown:4| |$knormal:40| |$knormal:39|) (|bot$unknown:2| |$knormal:38| |$knormal:37|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:39| 1) (= |$knormal:37| 1) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true (|fail$unknown:4| |$knormal:40| |$knormal:39|) (|bot$unknown:2| |$knormal:38| |$knormal:37|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:39| 1) (= |$knormal:37| 1) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true (|fail$unknown:4| |$knormal:40| |$knormal:39|) (|bot$unknown:2| |$knormal:38| |$knormal:37|) )
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
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:39| 1) (= |$knormal:37| 1) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true (|fail$unknown:4| |$knormal:40| |$knormal:39|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:270| Int) (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$alpha-31:u| Int) (|$knormal:36| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (= |$V-reftype:270| |$knormal:36|) (not (not (= 0 |$alpha-27:prev_set_flag_id_1345|))) (|id_without_checking_1376$unknown:12| |$knormal:36| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true )
      (|id_1034$unknown:8| |$V-reftype:270| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| 1) (not (= 0 |$alpha-27:prev_set_flag_id_1345|)) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true )
      (|fail$unknown:3| |$knormal:39|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-27:prev_set_flag_id_1345|))) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-27:prev_set_flag_id_1345|))) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:prev_set_flag_id_1345| Int) (|$alpha-28:s_prev_id_x_1344| Int) (|$alpha-29:x_1035| Int) (|$alpha-31:u| Int) )
    (=>
      ( and (= |$alpha-31:u| 1) (not (not (= 0 |$alpha-27:prev_set_flag_id_1345|))) (|id_1034$unknown:7| |$alpha-29:x_1035| |$alpha-28:s_prev_id_x_1344| |$alpha-27:prev_set_flag_id_1345|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:12| Int) (|$V-reftype:13| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|id_1034| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|two_1036$unknown:109| |$V-reftype:12| |$V-reftype:10| |id_1034| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-62:c2_COEFFICIENT_1196| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true (|id_1034$unknown:8| |$V-reftype:13| |$V-reftype:12| |$V-reftype:10| |id_1034|) )
      (|two_1036$unknown:110| |$V-reftype:13| |$V-reftype:12| |$V-reftype:10| |id_1034| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-62:c2_COEFFICIENT_1196| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:265| Int) (|$alpha-22:set_flag_id_1346| Int) (|$alpha-23:s_id_x_1343| Int) (|$alpha-24:x_1035| Int) (|$alpha-25:set_flag_id_1346| Int) )
    (=>
      ( and (= |$alpha-25:set_flag_id_1346| 1) (= |$V-reftype:265| |$alpha-24:x_1035|) true true true )
      (|id_without_checking_1376$unknown:12| |$V-reftype:265| |$alpha-24:x_1035| |$alpha-23:s_id_x_1343| |$alpha-22:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:214| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|id_1034| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|two_1036$unknown:109| |$V-reftype:214| |$V-reftype:10| |id_1034| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-62:c2_COEFFICIENT_1196| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|id_1034$unknown:7| |$V-reftype:214| |$V-reftype:10| |id_1034|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:290| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|$knormal:113| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (= |$V-reftype:290| |$knormal:113|) (|two_1036$unknown:114| |$knormal:113| |$knormal:111| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-62:c2_COEFFICIENT_1196| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|main_1042$unknown:16| |$V-reftype:290| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:135| Int) (|$V-reftype:136| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:70| |$V-reftype:136| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) (|succ_1030$unknown:33| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|succ_1030$unknown:34| |$V-reftype:136| |$V-reftype:135| |$V-reftype:133| |$V-reftype:131| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:131| Int) (|$V-reftype:133| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:63| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:33| |$V-reftype:63| |$V-reftype:133| |$V-reftype:131| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:69| |$V-reftype:63| |$V-reftype:133| |$V-reftype:131| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:126| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:65| |$V-reftype:126| |$V-reftype:54| |$V-reftype:52| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|succ_1030$unknown:29| |$V-reftype:126| |$V-reftype:54| |$V-reftype:52| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:117| Int) (|$V-reftype:119| Int) (|$V-reftype:121| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:30| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) (|two_1036$unknown:65| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:66| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$V-reftype:121| |$V-reftype:119| |$V-reftype:117| |$V-reftype:115| |$V-reftype:113| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:149| Int) (|$V-reftype:151| Int) (|$V-reftype:153| Int) (|$V-reftype:154| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:79| |$V-reftype:154| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) (|succ_1030$unknown:42| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|succ_1030$unknown:43| |$V-reftype:154| |$V-reftype:153| |$V-reftype:151| |$V-reftype:149| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:149| Int) (|$V-reftype:151| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:81| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:42| |$V-reftype:81| |$V-reftype:151| |$V-reftype:149| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:78| |$V-reftype:81| |$V-reftype:151| |$V-reftype:149| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:160| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:86| Int) (|$V-reftype:88| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|two_1036$unknown:82| |$V-reftype:160| |$V-reftype:88| |$V-reftype:86| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|succ_1030$unknown:46| |$V-reftype:160| |$V-reftype:88| |$V-reftype:86| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:74| Int) (|$V-reftype:76| Int) (|$V-reftype:86| Int) (|$V-reftype:88| Int) (|$V-reftype:90| Int) (|$V-reftype:91| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|succ_1030| Int) )
    (=>
      ( and (|succ_1030$unknown:47| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |$V-reftype:86| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030|) (|two_1036$unknown:82| |$V-reftype:90| |$V-reftype:88| |$V-reftype:86| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true true true true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:83| |$V-reftype:91| |$V-reftype:90| |$V-reftype:88| |$V-reftype:86| |$V-reftype:76| |$V-reftype:74| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |succ_1030| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:228| Int) (|$V-reftype:230| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:244| Int) (|$V-reftype:246| Int) (|$V-reftype:248| Int) (|$V-reftype:249| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|zero_1039| Int) )
    (=>
      ( and (|zero_1039$unknown:127| |$V-reftype:249| |$V-reftype:248| |$V-reftype:246| |$V-reftype:244| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039|) true true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:101| |$V-reftype:249| |$V-reftype:248| |$V-reftype:246| |$V-reftype:244| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$V-reftype:189| Int) (|$V-reftype:190| Int) (|$V-reftype:228| Int) (|$V-reftype:230| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|zero_1039| Int) )
    (=>
      ( and (|two_1036$unknown:97| |$V-reftype:190| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) (|zero_1039$unknown:122| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039|) true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|zero_1039$unknown:123| |$V-reftype:190| |$V-reftype:189| |$V-reftype:187| |$V-reftype:185| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:185| Int) (|$V-reftype:187| Int) (|$V-reftype:228| Int) (|$V-reftype:230| Int) (|$V-reftype:232| Int) (|$V-reftype:234| Int) (|$V-reftype:239| Int) (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) (|zero_1039| Int) )
    (=>
      ( and (|zero_1039$unknown:122| |$V-reftype:239| |$V-reftype:187| |$V-reftype:185| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039|) true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:96| |$V-reftype:239| |$V-reftype:187| |$V-reftype:185| |$V-reftype:234| |$V-reftype:232| |$V-reftype:230| |$V-reftype:228| |zero_1039| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and true (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) true true true true true (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      (|two_1036$unknown:113| |$knormal:111| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-62:c2_COEFFICIENT_1196| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-63:c1_COEFFICIENT_1195| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346| |$alpha-64:c0_COEFFICIENT_1193| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-59:set_flag_id_1346| Int) (|$alpha-60:s_id_x_1343| Int) (|$alpha-61:u_1043| Int) (|$alpha-62:c2_COEFFICIENT_1196| Int) (|$alpha-63:c1_COEFFICIENT_1195| Int) (|$alpha-64:c0_COEFFICIENT_1193| Int) (|$knormal:111| Int) )
    (=>
      ( and (= |$knormal:111| 0) (= |$alpha-64:c0_COEFFICIENT_1193| 0) (= |$alpha-63:c1_COEFFICIENT_1195| 0) (= |$alpha-62:c2_COEFFICIENT_1196| 0) (|main_1042$unknown:15| |$alpha-61:u_1043| |$alpha-60:s_id_x_1343| |$alpha-59:set_flag_id_1346|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:80| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-14:s_1032| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true (|succ_1030$unknown:29| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$knormal:16| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true )
      (|succ_1030$unknown:42| |$V-reftype:55| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$V-reftype:83| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-14:s_1032| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) (|succ_1030$unknown:43| |$V-reftype:83| |$V-reftype:82| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true (|succ_1030$unknown:29| |$V-reftype:82| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$knormal:16| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true )
      (|succ_1030$unknown:30| |$V-reftype:83| |$V-reftype:82| |$V-reftype:80| |$alpha-14:s_1032| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$knormal:16| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:263| Int) (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:31| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (= |$V-reftype:263| |$knormal:31|) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true (|succ_1030$unknown:34| |$knormal:31| |$knormal:12| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$knormal:16| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true )
      (|succ_1030$unknown:47| |$V-reftype:263| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) (|$knormal:12| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$knormal:4| |$knormal:6|)) (= |$knormal:6| (+ |$knormal:5| |$alpha-19:c12_COEFFICIENT_1238|)) (= |$knormal:5| (* |$alpha-20:c11_COEFFICIENT_1237| |$alpha-5:m_EXPARAM_1232|)) (= |$knormal:4| (* |$alpha-21:c10_COEFFICIENT_1236| |$alpha-11:s_EXPARAM_1234|)) (= |$knormal:3| (* |$alpha-18:c9_COEFFICIENT_1235| |$alpha-17:z_1033|)) (= |$knormal:16| (+ |$knormal:3| |$knormal:7|)) (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true (|succ_1030$unknown:43| |$knormal:12| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true )
      (|succ_1030$unknown:33| |$knormal:12| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$knormal:16| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) )
    (=>
      ( and (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) )
    (=>
      ( and (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1593| Int) (|$alpha-11:s_EXPARAM_1234| Int) (|$alpha-12:x_DO_NOT_CARE_1590| Int) (|$alpha-13:x_DO_NOT_CARE_1591| Int) (|$alpha-15:set_flag_id_1346| Int) (|$alpha-16:s_id_x_1343| Int) (|$alpha-17:z_1033| Int) (|$alpha-18:c9_COEFFICIENT_1235| Int) (|$alpha-19:c12_COEFFICIENT_1238| Int) (|$alpha-20:c11_COEFFICIENT_1237| Int) (|$alpha-21:c10_COEFFICIENT_1236| Int) (|$alpha-3:x_DO_NOT_CARE_1596| Int) (|$alpha-4:x_DO_NOT_CARE_1597| Int) (|$alpha-5:m_EXPARAM_1232| Int) (|$alpha-6:x_DO_NOT_CARE_1594| Int) (|$alpha-7:x_DO_NOT_CARE_1595| Int) (|$alpha-9:x_DO_NOT_CARE_1592| Int) )
    (=>
      ( and (= |$alpha-21:c10_COEFFICIENT_1236| 0) (= |$alpha-20:c11_COEFFICIENT_1237| 0) (= |$alpha-19:c12_COEFFICIENT_1238| 0) (= |$alpha-18:c9_COEFFICIENT_1235| 0) (|succ_1030$unknown:46| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|) true true true true true true true true true true true true )
      (|succ_1030$unknown:42| |$alpha-17:z_1033| |$alpha-16:s_id_x_1343| |$alpha-15:set_flag_id_1346| |$alpha-13:x_DO_NOT_CARE_1591| |$alpha-12:x_DO_NOT_CARE_1590| |$alpha-11:s_EXPARAM_1234| |$alpha-10:x_DO_NOT_CARE_1593| |$alpha-9:x_DO_NOT_CARE_1592| |$alpha-7:x_DO_NOT_CARE_1595| |$alpha-6:x_DO_NOT_CARE_1594| |$alpha-5:m_EXPARAM_1232| |$alpha-4:x_DO_NOT_CARE_1597| |$alpha-3:x_DO_NOT_CARE_1596|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:162| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:83| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:113| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:114| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:222| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:113| |$V-reftype:222| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:82| |$V-reftype:222| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:152| Int) (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:78| |$V-reftype:152| |$V-reftype:213| |$V-reftype:211| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:109| |$V-reftype:152| |$V-reftype:213| |$V-reftype:211| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$V-reftype:215| Int) (|$V-reftype:216| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:110| |$V-reftype:216| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:78| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:79| |$V-reftype:216| |$V-reftype:215| |$V-reftype:213| |$V-reftype:211| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$V-reftype:139| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:193| Int) (|$V-reftype:195| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-43:z_1038| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (|two_1036$unknown:69| |$V-reftype:134| |$V-reftype:195| |$V-reftype:193| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:193| Int) (|$V-reftype:195| Int) (|$V-reftype:197| Int) (|$V-reftype:198| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-43:z_1038| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (|two_1036$unknown:101| |$V-reftype:198| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:69| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:70| |$V-reftype:198| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:128| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-43:z_1038| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (|two_1036$unknown:66| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:96| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:97| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:177| Int) (|$V-reftype:179| Int) (|$V-reftype:181| Int) (|$V-reftype:183| Int) (|$V-reftype:188| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-38:x_DO_NOT_CARE_1584| Int) (|$alpha-39:x_DO_NOT_CARE_1585| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-43:z_1038| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (|two_1036$unknown:96| |$V-reftype:188| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-40:z_EXPARAM_1210| |$alpha-39:x_DO_NOT_CARE_1585| |$alpha-38:x_DO_NOT_CARE_1584| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:65| |$V-reftype:188| |$V-reftype:125| |$V-reftype:123| |$V-reftype:183| |$V-reftype:181| |$V-reftype:179| |$V-reftype:177| |$alpha-43:z_1038| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and true true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and true (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:58| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:69| |$V-reftype:134| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:82| |$V-reftype:134| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:157| Int) (|$V-reftype:159| Int) (|$V-reftype:161| Int) (|$V-reftype:162| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:58| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:83| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:69| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:70| |$V-reftype:162| |$V-reftype:161| |$V-reftype:159| |$V-reftype:157| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:127| Int) (|$V-reftype:128| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:58| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:66| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) (|two_1036$unknown:78| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:79| |$V-reftype:128| |$V-reftype:127| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$V-reftype:125| Int) (|$V-reftype:141| Int) (|$V-reftype:143| Int) (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:152| Int) (|$alpha-32:x_DO_NOT_CARE_1588| Int) (|$alpha-33:x_DO_NOT_CARE_1589| Int) (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-35:x_DO_NOT_CARE_1586| Int) (|$alpha-36:x_DO_NOT_CARE_1587| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-41:set_flag_id_1346| Int) (|$alpha-42:s_id_x_1343| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:58| Int) (|$knormal:62| Int) )
    (=>
      ( and (|two_1036$unknown:78| |$V-reftype:152| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:50| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|) true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      (|two_1036$unknown:65| |$V-reftype:152| |$V-reftype:125| |$V-reftype:123| |$V-reftype:147| |$V-reftype:145| |$V-reftype:143| |$V-reftype:141| |$knormal:58| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$knormal:62| |$alpha-42:s_id_x_1343| |$alpha-41:set_flag_id_1346| |$alpha-36:x_DO_NOT_CARE_1587| |$alpha-35:x_DO_NOT_CARE_1586| |$alpha-34:f_EXPARAM_1206| |$alpha-33:x_DO_NOT_CARE_1589| |$alpha-32:x_DO_NOT_CARE_1588|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and true (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| (+ |$knormal:41| |$knormal:43|)) (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$knormal:43| (+ |$knormal:42| |$alpha-44:c8_COEFFICIENT_1221|)) (= |$knormal:42| (* |$alpha-45:c7_COEFFICIENT_1220| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:41| (* |$alpha-46:c6_COEFFICIENT_1219| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:f_EXPARAM_1206| Int) (|$alpha-40:z_EXPARAM_1210| Int) (|$alpha-44:c8_COEFFICIENT_1221| Int) (|$alpha-45:c7_COEFFICIENT_1220| Int) (|$alpha-46:c6_COEFFICIENT_1219| Int) (|$alpha-47:c5_COEFFICIENT_1215| Int) (|$alpha-48:c4_COEFFICIENT_1214| Int) (|$alpha-49:c3_COEFFICIENT_1213| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| (+ |$knormal:44| |$knormal:46|)) (= |$knormal:46| (+ |$knormal:45| |$alpha-47:c5_COEFFICIENT_1215|)) (= |$knormal:45| (* |$alpha-48:c4_COEFFICIENT_1214| |$alpha-34:f_EXPARAM_1206|)) (= |$knormal:44| (* |$alpha-49:c3_COEFFICIENT_1213| |$alpha-40:z_EXPARAM_1210|)) (= |$alpha-49:c3_COEFFICIENT_1213| 0) (= |$alpha-48:c4_COEFFICIENT_1214| 0) (= |$alpha-47:c5_COEFFICIENT_1215| 0) (= |$alpha-46:c6_COEFFICIENT_1219| 0) (= |$alpha-45:c7_COEFFICIENT_1220| 0) (= |$alpha-44:c8_COEFFICIENT_1221| 0) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:285| Int) (|$alpha-50:x_DO_NOT_CARE_1582| Int) (|$alpha-51:x_DO_NOT_CARE_1583| Int) (|$alpha-52:f_EXPARAM_1204| Int) (|$alpha-53:x_DO_NOT_CARE_1580| Int) (|$alpha-54:x_DO_NOT_CARE_1581| Int) (|$alpha-56:set_flag_id_1346| Int) (|$alpha-57:s_id_x_1343| Int) (|$alpha-58:z_1041| Int) )
    (=>
      ( and (= |$V-reftype:285| |$alpha-58:z_1041|) true true true true true true true true )
      (|zero_1039$unknown:127| |$V-reftype:285| |$alpha-58:z_1041| |$alpha-57:s_id_x_1343| |$alpha-56:set_flag_id_1346| |$alpha-54:x_DO_NOT_CARE_1581| |$alpha-53:x_DO_NOT_CARE_1580| |$alpha-52:f_EXPARAM_1204| |$alpha-51:x_DO_NOT_CARE_1583| |$alpha-50:x_DO_NOT_CARE_1582|)
    )
  )
)
(assert
  (forall ( (|$knormal:114| Int) (|$knormal:116| Int) (|$knormal:119| Int) )
    (=>
      ( and (= |$knormal:119| 1) (= |$knormal:116| 0) (= |$knormal:114| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:114| Int) (|$knormal:116| Int) (|$knormal:119| Int) )
    (=>
      ( and (= |$knormal:119| 1) (= |$knormal:116| 0) (= |$knormal:114| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:114| Int) (|$knormal:116| Int) (|$knormal:119| Int) )
    (=>
      ( and (= |$knormal:119| 1) (= |$knormal:116| 0) (= |$knormal:114| 0) )
      (|main_1042$unknown:15| |$knormal:119| |$knormal:116| |$knormal:114|)
    )
  )
)
(check-sat)

(get-model)

(exit)

