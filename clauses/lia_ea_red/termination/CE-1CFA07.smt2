(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c7_COEFFICIENT_1128 = 0
     let rec c6_COEFFICIENT_1126 = 0
     let rec c5_COEFFICIENT_1125 = 0
     let rec c4_COEFFICIENT_1123 = 0
     let rec c3_COEFFICIENT_1120 = 0
     let rec c2_COEFFICIENT_1118 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1115 = 0
  
     let id_1030 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1031 =
       x_1031
  
     let rec omega_1032 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1033 =
       omega_1032 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1033
  
     let f_1034 x_DO_NOT_CARE_1438 x_DO_NOT_CARE_1439 x_DO_NOT_CARE_1440 x_EXPARAM_1133 x_DO_NOT_CARE_1435 x_DO_NOT_CARE_1436 x_DO_NOT_CARE_1437 x_1035 x_DO_NOT_CARE_1432 x_DO_NOT_CARE_1433 x_DO_NOT_CARE_1434 y_EXPARAM_1134 x_DO_NOT_CARE_1429 x_DO_NOT_CARE_1430 x_DO_NOT_CARE_1431 y_1036 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 z_1037 =
       y_1036 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 z_1037
  
     let app_without_checking_1355 x_DO_NOT_CARE_1426 x_DO_NOT_CARE_1427 x_DO_NOT_CARE_1428 h_EXPARAM_1131 x_DO_NOT_CARE_1423 x_DO_NOT_CARE_1424 x_DO_NOT_CARE_1425 h_1039 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1040 =
       let set_flag_app_1344 = true
       in
       let s_app_x_1339 = x_1040
       in
       let s_app_h_EXPARAM_1337 = h_EXPARAM_1131
       in
         h_1039 set_flag_app_1344 s_app_h_EXPARAM_1337 s_app_x_1339 x_1040
  
     let rec app_1038 x_DO_NOT_CARE_1360 x_DO_NOT_CARE_1361 x_DO_NOT_CARE_1362 h_EXPARAM_1131 x_DO_NOT_CARE_1357 x_DO_NOT_CARE_1358 x_DO_NOT_CARE_1359 h_1039 prev_set_flag_app_1343 s_prev_app_h_EXPARAM_1340 s_prev_app_x_1342 x_1040 =
       let u = if prev_set_flag_app_1343 then
                let u_17381 = fail ()
                in
                  bot()
               else () in
              app_without_checking_1355 x_DO_NOT_CARE_1360 x_DO_NOT_CARE_1361
                x_DO_NOT_CARE_1362 h_EXPARAM_1131 x_DO_NOT_CARE_1357
                x_DO_NOT_CARE_1358 x_DO_NOT_CARE_1359 h_1039
                prev_set_flag_app_1343 s_prev_app_h_EXPARAM_1340
                s_prev_app_x_1342 x_1040
  
     let main =
       f_1034 false 0 0 c5_COEFFICIENT_1125 false 0 0
         (app_without_checking_1355 false 0 0 c4_COEFFICIENT_1123 false 0 0
           (f_1034 false 0 0 c1_COEFFICIENT_1117 false 0 0
             (app_without_checking_1355 false 0 0 c0_COEFFICIENT_1115 false 0 0
               id_1030) false 0 0 c3_COEFFICIENT_1120 false 0 0
             (app_1038 false 0 0 c2_COEFFICIENT_1118 false 0 0 omega_1032)))
         false 0 0 c7_COEFFICIENT_1128 false 0 0
         (app_without_checking_1355 false 0 0 c6_COEFFICIENT_1126 false 0 0
           id_1030) false 0 0 1
")

(set-logic HORN)

(declare-fun |f_1034$unknown:47|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1355$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:77|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:67|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |app_without_checking_1355$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:2481| Int) (|$cond-alpha-rename:2482| Int) (|$cond-alpha-rename:2483| Int) (|$cond-alpha-rename:2484| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:516| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (= 0 0) (not (= 0 1)) (|omega_1032$unknown:77| |$V-reftype:23| |$cond-alpha-rename:516| |$cond-alpha-rename:516| 0 1) (|fail$unknown:67| |$knormal:50| 1) (|bot$unknown:36| |$knormal:48| 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:516| |$cond-alpha-rename:515| |$cond-alpha-rename:514| |$cond-alpha-rename:513| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2484| |$cond-alpha-rename:2483| |$cond-alpha-rename:2482| |$cond-alpha-rename:2481| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$V-reftype:23| |$cond-alpha-rename:516| |$cond-alpha-rename:516| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:516| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (= 0 0) (not (= 0 0)) (|omega_1032$unknown:77| |$V-reftype:23| |$cond-alpha-rename:516| |$cond-alpha-rename:516| 0 1) (|fail$unknown:67| |$knormal:50| 1) (|bot$unknown:36| |$knormal:48| 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:516| |$cond-alpha-rename:515| |$cond-alpha-rename:514| |$cond-alpha-rename:513| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$V-reftype:23| |$cond-alpha-rename:516| |$cond-alpha-rename:516| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:2493| Int) (|$cond-alpha-rename:2494| Int) (|$cond-alpha-rename:2495| Int) (|$cond-alpha-rename:2496| Int) (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 1))) (|omega_1032$unknown:77| |$V-reftype:23| |$cond-alpha-rename:521| |$cond-alpha-rename:521| 0 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:521| |$cond-alpha-rename:520| |$cond-alpha-rename:519| |$cond-alpha-rename:518| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2496| |$cond-alpha-rename:2495| |$cond-alpha-rename:2494| |$cond-alpha-rename:2493| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$V-reftype:23| |$cond-alpha-rename:521| |$cond-alpha-rename:521| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 0))) (|omega_1032$unknown:77| |$V-reftype:23| |$cond-alpha-rename:521| |$cond-alpha-rename:521| 0 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:521| |$cond-alpha-rename:520| |$cond-alpha-rename:519| |$cond-alpha-rename:518| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$V-reftype:23| |$cond-alpha-rename:521| |$cond-alpha-rename:521| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2505| Int) (|$cond-alpha-rename:2506| Int) (|$cond-alpha-rename:2507| Int) (|$cond-alpha-rename:2508| Int) (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (= 0 0) (not (= 0 1)) (|fail$unknown:67| |$knormal:50| 1) (|bot$unknown:36| |$knormal:48| 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2508| |$cond-alpha-rename:2507| |$cond-alpha-rename:2506| |$cond-alpha-rename:2505| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2508| |$cond-alpha-rename:2508| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:50| Int) )
    (=>
      ( and (= 0 0) (not (= 0 0)) (|fail$unknown:67| |$knormal:50| 1) (|bot$unknown:36| |$knormal:48| 1) )
      (|app_without_checking_1355$unknown:33| 1 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2517| Int) (|$cond-alpha-rename:2518| Int) (|$cond-alpha-rename:2519| Int) (|$cond-alpha-rename:2520| Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 1))) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2520| |$cond-alpha-rename:2519| |$cond-alpha-rename:2518| |$cond-alpha-rename:2517| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2520| |$cond-alpha-rename:2520| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 0))) )
      (|app_without_checking_1355$unknown:33| 1 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2173| Int) (|$cond-alpha-rename:2176| Int) (|$cond-alpha-rename:2178| Int) (|$cond-alpha-rename:2529| Int) (|$cond-alpha-rename:2530| Int) (|$cond-alpha-rename:2531| Int) (|$cond-alpha-rename:2541| Int) (|$cond-alpha-rename:2542| Int) (|$cond-alpha-rename:2543| Int) (|$cond-alpha-rename:2544| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 1) (= 0 0) (= 0 0) (= 0 0) (|fail$unknown:67| |$cond-alpha-rename:2178| 1) (|bot$unknown:36| |$cond-alpha-rename:2176| 1) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2544| |$cond-alpha-rename:2544| 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2544| |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2544| |$cond-alpha-rename:2543| |$cond-alpha-rename:2542| |$cond-alpha-rename:2541| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2544| |$cond-alpha-rename:2531| |$cond-alpha-rename:2530| |$cond-alpha-rename:2529| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| |$cond-alpha-rename:2544| |$cond-alpha-rename:2544| 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| |$cond-alpha-rename:2544| |$cond-alpha-rename:2544| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2173| Int) (|$cond-alpha-rename:2176| Int) (|$cond-alpha-rename:2178| Int) (|$cond-alpha-rename:2529| Int) (|$cond-alpha-rename:2530| Int) (|$cond-alpha-rename:2531| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 1) (= 1 0) (= 0 0) (= 0 0) (= 0 1) (|fail$unknown:67| |$cond-alpha-rename:2178| 1) (|bot$unknown:36| |$cond-alpha-rename:2176| 1) (|app_without_checking_1355$unknown:33| 0 0 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:2531| |$cond-alpha-rename:2530| |$cond-alpha-rename:2529| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2173| Int) (|$cond-alpha-rename:2176| Int) (|$cond-alpha-rename:2178| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2554| Int) (|$cond-alpha-rename:2555| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 1) (= 1 0) (= 0 0) (= 0 0) (= 0 1) (|fail$unknown:67| |$cond-alpha-rename:2178| 1) (|bot$unknown:36| |$cond-alpha-rename:2176| 1) (|app_without_checking_1355$unknown:33| 0 0 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:2555| |$cond-alpha-rename:2554| |$cond-alpha-rename:2553| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2173| Int) (|$cond-alpha-rename:2176| Int) (|$cond-alpha-rename:2178| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 0) (= 0 0) (= 0 1) (|fail$unknown:67| |$cond-alpha-rename:2178| 1) (|bot$unknown:36| |$cond-alpha-rename:2176| 1) (|app_without_checking_1355$unknown:33| 0 0 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2173| 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2211| Int) (|$cond-alpha-rename:2565| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2567| Int) (|$cond-alpha-rename:2568| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 1) (= 0 0) (= 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2568| |$cond-alpha-rename:2568| 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2568| |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2568| |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2211| |$cond-alpha-rename:2568| |$cond-alpha-rename:2568| 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2211| |$cond-alpha-rename:2568| |$cond-alpha-rename:2568| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2211| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    (=>
      ( and (= 1 0) (= 0 0) (= 0 1) (|app_without_checking_1355$unknown:33| 0 0 0 1 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:33| 0 |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| 0 0 0 0 0 0 0) (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2211| 0 0 0 1 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:2211| 0 0 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:535| Int) (|$cond-alpha-rename:536| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:536| |$cond-alpha-rename:535| |$cond-alpha-rename:534| |$cond-alpha-rename:533| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:536| |$cond-alpha-rename:536| |$cond-alpha-rename:536| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:539| Int) (|$cond-alpha-rename:540| Int) (|$cond-alpha-rename:541| Int) )
    (=>
      ( and (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:541| |$cond-alpha-rename:540| |$cond-alpha-rename:539| |$cond-alpha-rename:538| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:29| |$cond-alpha-rename:541| |$cond-alpha-rename:541| |$cond-alpha-rename:541| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:36| |$knormal:2| 1) )
      (|bot$unknown:36| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:90| Int) (|$knormal:159| Int) )
    (=>
      ( and (|f_1034$unknown:47| |$V-reftype:90| |$V-reftype:63| |$V-reftype:61| |$knormal:159| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:33| |$V-reftype:90| |$V-reftype:63| |$V-reftype:61| |$knormal:159| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:90| Int) (|$knormal:71| Int) )
    (=>
      ( and (|f_1034$unknown:47| |$V-reftype:90| |$V-reftype:63| |$V-reftype:61| |$knormal:71| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:33| |$V-reftype:90| |$V-reftype:63| |$V-reftype:61| |$knormal:71| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2577| Int) (|$cond-alpha-rename:2578| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2580| Int) )
    (=>
      ( and (= 0 0) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2580| |$cond-alpha-rename:2579| |$cond-alpha-rename:2578| |$cond-alpha-rename:2577| 0 0 0 0 0 0 0) )
      (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2580| |$cond-alpha-rename:2580| 0 1 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and (= 0 0) )
      (|app_without_checking_1355$unknown:33| 1 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:2589| Int) (|$cond-alpha-rename:2590| Int) (|$cond-alpha-rename:2591| Int) (|$cond-alpha-rename:2592| Int) )
    ( and (= 0 0) (not (= 0 1)) (|app_without_checking_1355$unknown:33| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| |$cond-alpha-rename:2590| |$cond-alpha-rename:2589| 0 0 0 0 0 0 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-7:set_flag_app_1344| Int) (|$alpha-8:s_app_h_EXPARAM_1337| Int) (|$alpha-9:s_app_x_1339| Int) (|$knormal:9| Int) )
    (=>
      ( and (|omega_1032$unknown:77| |$knormal:9| |$alpha-10:x_1033| |$alpha-9:s_app_x_1339| |$alpha-8:s_app_h_EXPARAM_1337| |$alpha-7:set_flag_app_1344|) )
      (|omega_1032$unknown:77| |$knormal:9| |$alpha-10:x_1033| |$alpha-9:s_app_x_1339| |$alpha-8:s_app_h_EXPARAM_1337| |$alpha-7:set_flag_app_1344|)
    )
  )
)
(check-sat)

(exit)

