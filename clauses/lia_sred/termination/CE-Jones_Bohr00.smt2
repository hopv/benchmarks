(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c9_COEFFICIENT_1286 = 0
     let rec c8_COEFFICIENT_1285 = 0
     let rec c7_COEFFICIENT_1284 = 0
     let rec c6_COEFFICIENT_1273 = 0
     let rec c5_COEFFICIENT_1272 = 0
     let rec c4_COEFFICIENT_1267 = 0
     let rec c3_COEFFICIENT_1266 = 0
     let rec c2_COEFFICIENT_1257 = 0
     let rec c1_COEFFICIENT_1256 = 0
     let rec c0_COEFFICIENT_1250 = 0
  
     let f1_without_checking_1361 x_DO_NOT_CARE_1733 x_DO_NOT_CARE_1734 u_1031 x_DO_NOT_CARE_1731 x_DO_NOT_CARE_1732 c_EXPARAM_1293 x_DO_NOT_CARE_1729 x_DO_NOT_CARE_1730 c_1032 set_flag_f1_1304 s_f1_c_EXPARAM_1296 d_1033 =
       let set_flag_f1_1304 = true
       in
       let s_f1_c_EXPARAM_1296 = c_EXPARAM_1293
       in
         d_1033
  
     let rec f1_1030 x_DO_NOT_CARE_1367 x_DO_NOT_CARE_1368 u_1031 x_DO_NOT_CARE_1365 x_DO_NOT_CARE_1366 c_EXPARAM_1293 x_DO_NOT_CARE_1363 x_DO_NOT_CARE_1364 c_1032 prev_set_flag_f1_1303 s_prev_f1_c_EXPARAM_1300 d_1033 =
       let u = if prev_set_flag_f1_1303 then
                let u_2056 = fail ()
                in
                  bot()
               else () in
              f1_without_checking_1361 x_DO_NOT_CARE_1367 x_DO_NOT_CARE_1368
                u_1031 x_DO_NOT_CARE_1365 x_DO_NOT_CARE_1366 c_EXPARAM_1293
                x_DO_NOT_CARE_1363 x_DO_NOT_CARE_1364 c_1032
                prev_set_flag_f1_1303 s_prev_f1_c_EXPARAM_1300 d_1033
  
     let f2_1034 x_DO_NOT_CARE_1727 x_DO_NOT_CARE_1728 u_1035 x_DO_NOT_CARE_1725 x_DO_NOT_CARE_1726 a_EXPARAM_1279 x_DO_NOT_CARE_1723 x_DO_NOT_CARE_1724 a_1036 x_DO_NOT_CARE_1721 x_DO_NOT_CARE_1722 b_EXPARAM_1282 set_flag_f1_1304 s_f1_c_EXPARAM_1296 b_1037 =
       a_1036 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c7_COEFFICIENT_1284 * b_EXPARAM_1282) +
          ((c8_COEFFICIENT_1285 * a_EXPARAM_1279) + c9_COEFFICIENT_1286))
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f1_1030 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1035)
  
     let f3_1038 x_DO_NOT_CARE_1719 x_DO_NOT_CARE_1720 u_1039 x_DO_NOT_CARE_1717 x_DO_NOT_CARE_1718 a_EXPARAM_1261 set_flag_f1_1304 s_f1_c_EXPARAM_1296 a_1040 =
       a_1040 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c5_COEFFICIENT_1272 * a_EXPARAM_1261) + c6_COEFFICIENT_1273)
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f2_1034 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1039 set_flag_f1_1304
           s_f1_c_EXPARAM_1296
           ((c3_COEFFICIENT_1266 * a_EXPARAM_1261) + c4_COEFFICIENT_1267)
           set_flag_f1_1304 s_f1_c_EXPARAM_1296 a_1040)
  
     let f4_1041 x_DO_NOT_CARE_1715 x_DO_NOT_CARE_1716 u_1042 set_flag_f1_1304 s_f1_c_EXPARAM_1296 v_1043 =
       v_1043
  
     let f5_1044 x_DO_NOT_CARE_1713 x_DO_NOT_CARE_1714 u_1045 x_DO_NOT_CARE_1711 x_DO_NOT_CARE_1712 e_EXPARAM_1254 set_flag_f1_1304 s_f1_c_EXPARAM_1296 e_1046 =
       e_1046 set_flag_f1_1304 s_f1_c_EXPARAM_1296
         ((c1_COEFFICIENT_1256 * e_EXPARAM_1254) + c2_COEFFICIENT_1257)
         set_flag_f1_1304 s_f1_c_EXPARAM_1296
         (f4_1041 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1045)
  
     let main_1047 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048 =
       let zz_1032_1049 =
         f3_1038 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048 set_flag_f1_1304
           s_f1_c_EXPARAM_1296 c0_COEFFICIENT_1250 set_flag_f1_1304
           s_f1_c_EXPARAM_1296
           (f5_1044 set_flag_f1_1304 s_f1_c_EXPARAM_1296 u_1048)
       in
         ()
  
     let main =
       main_1047 false 0 ()
")

(set-logic HORN)

(declare-fun |f3_1038$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:103|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f1_without_checking_1361$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f3_1038$unknown:106|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:145|
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
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$alpha-19:u_1031| Int) (|$alpha-25:c_1032| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$cond-alpha-rename:1605| Int) (|$cond-alpha-rename:1606| Int) (|$cond-alpha-rename:2103| Int) (|$cond-alpha-rename:2104| Int) (|$cond-alpha-rename:224| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:27| 1) (|f3_1038$unknown:106| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2104| |$cond-alpha-rename:2103| (+ (* 0 |$cond-alpha-rename:224|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:2104| |$cond-alpha-rename:2103| |$cond-alpha-rename:1606| |$cond-alpha-rename:1605| 0 |$cond-alpha-rename:1606| |$cond-alpha-rename:1605| |$alpha-19:u_1031| |$cond-alpha-rename:1606| |$cond-alpha-rename:1605|) (|fail$unknown:145| |$knormal:29| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) (= 0 0) )
      (|f1_without_checking_1361$unknown:30| |$V-reftype:25| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$cond-alpha-rename:2104| |$cond-alpha-rename:2103| 0 |$cond-alpha-rename:2104| |$cond-alpha-rename:2103| |$alpha-19:u_1031| |$cond-alpha-rename:2104| |$cond-alpha-rename:2103|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:u_1031| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$cond-alpha-rename:1607| Int) (|$cond-alpha-rename:1608| Int) (|$cond-alpha-rename:2108| Int) (|$cond-alpha-rename:2109| Int) (|$cond-alpha-rename:239| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:27| 1) (|f3_1038$unknown:106| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2109| |$cond-alpha-rename:2108| (+ (* 0 |$cond-alpha-rename:239|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:2109| |$cond-alpha-rename:2108| |$cond-alpha-rename:1608| |$cond-alpha-rename:1607| 0 |$cond-alpha-rename:1608| |$cond-alpha-rename:1607| |$alpha-19:u_1031| |$cond-alpha-rename:1608| |$cond-alpha-rename:1607|) (|fail$unknown:145| |$knormal:29| 1) (not (= 0 |$alpha-26:prev_set_flag_f1_1303|)) )
      (|f1_1030$unknown:18| |$alpha-28:d_1033| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2109| |$cond-alpha-rename:2108| 0 |$cond-alpha-rename:2109| |$cond-alpha-rename:2108| |$alpha-19:u_1031| |$cond-alpha-rename:2109| |$cond-alpha-rename:2108|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$alpha-19:u_1031| Int) (|$alpha-25:c_1032| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$cond-alpha-rename:1609| Int) (|$cond-alpha-rename:1610| Int) (|$cond-alpha-rename:2113| Int) (|$cond-alpha-rename:2114| Int) (|$cond-alpha-rename:254| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2114| |$cond-alpha-rename:2113| (+ (* 0 |$cond-alpha-rename:254|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:2114| |$cond-alpha-rename:2113| |$cond-alpha-rename:1610| |$cond-alpha-rename:1609| 0 |$cond-alpha-rename:1610| |$cond-alpha-rename:1609| |$alpha-19:u_1031| |$cond-alpha-rename:1610| |$cond-alpha-rename:1609|) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) (= 0 0) )
      (|f1_without_checking_1361$unknown:30| |$V-reftype:25| |$V-reftype:25| |$V-reftype:23| |$alpha-25:c_1032| |$cond-alpha-rename:2114| |$cond-alpha-rename:2113| 0 |$cond-alpha-rename:2114| |$cond-alpha-rename:2113| |$alpha-19:u_1031| |$cond-alpha-rename:2114| |$cond-alpha-rename:2113|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:u_1031| Int) (|$alpha-26:prev_set_flag_f1_1303| Int) (|$alpha-27:s_prev_f1_c_EXPARAM_1300| Int) (|$alpha-28:d_1033| Int) (|$cond-alpha-rename:1611| Int) (|$cond-alpha-rename:1612| Int) (|$cond-alpha-rename:2118| Int) (|$cond-alpha-rename:2119| Int) (|$cond-alpha-rename:269| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2119| |$cond-alpha-rename:2118| (+ (* 0 |$cond-alpha-rename:269|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:2119| |$cond-alpha-rename:2118| |$cond-alpha-rename:1612| |$cond-alpha-rename:1611| 0 |$cond-alpha-rename:1612| |$cond-alpha-rename:1611| |$alpha-19:u_1031| |$cond-alpha-rename:1612| |$cond-alpha-rename:1611|) (not (not (= 0 |$alpha-26:prev_set_flag_f1_1303|))) )
      (|f1_1030$unknown:18| |$alpha-28:d_1033| |$alpha-28:d_1033| |$alpha-27:s_prev_f1_c_EXPARAM_1300| |$alpha-26:prev_set_flag_f1_1303| |$cond-alpha-rename:2119| |$cond-alpha-rename:2118| 0 |$cond-alpha-rename:2119| |$cond-alpha-rename:2118| |$alpha-19:u_1031| |$cond-alpha-rename:2119| |$cond-alpha-rename:2118|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:122| Int) (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$cond-alpha-rename:2128| Int) (|$cond-alpha-rename:2129| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| (+ (* 0 0) 0) |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| 0 |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| |$alpha-51:u_1039| |$cond-alpha-rename:2129| |$cond-alpha-rename:2128|) (= 0 0) )
      (|f3_1038$unknown:106| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| 0 |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| |$cond-alpha-rename:2129| |$cond-alpha-rename:2128| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$V-reftype:116| Int) (|$alpha-51:u_1039| Int) (|$cond-alpha-rename:1619| Int) (|$cond-alpha-rename:1620| Int) (|$cond-alpha-rename:2138| Int) (|$cond-alpha-rename:2139| Int) (|$cond-alpha-rename:842| Int) )
    (=>
      ( and (|f1_1030$unknown:18| |$V-reftype:116| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| (+ 0 0) |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| |$alpha-51:u_1039| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138|) (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| (+ (* 0 |$cond-alpha-rename:842|) (+ 0 0)) |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| 0 |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| |$alpha-51:u_1039| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619|) (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| (+ (* 0 |$cond-alpha-rename:842|) (+ 0 0)) |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| 0 |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| |$alpha-51:u_1039| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619|) (= 0 0) )
      (|f3_1038$unknown:103| |$V-reftype:116| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| 0 |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| 0 |$cond-alpha-rename:2139| |$cond-alpha-rename:2138| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| 0 |$cond-alpha-rename:1620| |$cond-alpha-rename:1619| |$alpha-51:u_1039| |$cond-alpha-rename:1620| |$cond-alpha-rename:1619|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$V-reftype:215| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$alpha-55:set_flag_f1_1304| Int) (|$alpha-56:s_f1_c_EXPARAM_1296| Int) )
    (=>
      ( and (|f3_1038$unknown:110| |$V-reftype:215| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|) )
      (|f3_1038$unknown:106| |$V-reftype:215| |$V-reftype:206| |$V-reftype:204| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| (+ (* 0 |$alpha-54:a_EXPARAM_1261|) 0) |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-56:s_f1_c_EXPARAM_1296| |$alpha-55:set_flag_f1_1304| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$alpha-51:u_1039| Int) (|$cond-alpha-rename:2523| Int) (|$cond-alpha-rename:2524| Int) )
    (=>
      ( and (= 0 0) (= (+ 0 0) (+ 0 0)) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ (* 0 0) 0) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|) (|f3_1038$unknown:103| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ 0 0) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|) )
      (|f3_1038$unknown:103| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| 0 |$cond-alpha-rename:2524| |$cond-alpha-rename:2523| |$alpha-51:u_1039| |$cond-alpha-rename:2524| |$cond-alpha-rename:2523|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:2669| Int) (|$cond-alpha-rename:2675| Int) (|$cond-alpha-rename:2676| Int) (|$cond-alpha-rename:2677| Int) (|$cond-alpha-rename:2678| Int) (|$cond-alpha-rename:2679| Int) (|$cond-alpha-rename:2680| Int) (|$cond-alpha-rename:2681| Int) (|$cond-alpha-rename:2693| Int) )
    ( and (|f3_1038$unknown:106| |$cond-alpha-rename:2677| |$cond-alpha-rename:2676| |$cond-alpha-rename:2675| |$cond-alpha-rename:2681| |$cond-alpha-rename:2680| (+ (* 0 |$cond-alpha-rename:2693|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:2681| |$cond-alpha-rename:2680| |$cond-alpha-rename:2679| |$cond-alpha-rename:2678| 0 |$cond-alpha-rename:2679| |$cond-alpha-rename:2678| |$cond-alpha-rename:2669| |$cond-alpha-rename:2679| |$cond-alpha-rename:2678|) (not (= 0 |$cond-alpha-rename:2675|)) )
    )
  )
)
(check-sat)

(get-model)

