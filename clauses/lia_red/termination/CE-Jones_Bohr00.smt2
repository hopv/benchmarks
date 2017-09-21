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

(declare-fun |fail$unknown:145|
  ( Int Int ) Bool
)

(declare-fun |f3_1038$unknown:106|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:122| Int) (|$V-reftype:204| Int) (|$V-reftype:206| Int) (|$alpha-49:x_DO_NOT_CARE_1719| Int) (|$alpha-50:x_DO_NOT_CARE_1720| Int) (|$alpha-51:u_1039| Int) (|$alpha-52:x_DO_NOT_CARE_1717| Int) (|$alpha-53:x_DO_NOT_CARE_1718| Int) (|$alpha-54:a_EXPARAM_1261| Int) (|$cond-alpha-rename:2414| Int) (|$cond-alpha-rename:2415| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| (+ (* 0 0) 0) |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| 0 |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| |$alpha-51:u_1039| |$cond-alpha-rename:2415| |$cond-alpha-rename:2414|) (= 0 0) )
      (|f3_1038$unknown:106| |$V-reftype:122| |$V-reftype:206| |$V-reftype:204| |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| 0 |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| |$cond-alpha-rename:2415| |$cond-alpha-rename:2414| |$alpha-54:a_EXPARAM_1261| |$alpha-53:x_DO_NOT_CARE_1718| |$alpha-52:x_DO_NOT_CARE_1717| |$alpha-51:u_1039| |$alpha-50:x_DO_NOT_CARE_1720| |$alpha-49:x_DO_NOT_CARE_1719|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$alpha-51:u_1039| Int) (|$cond-alpha-rename:1869| Int) (|$cond-alpha-rename:1870| Int) (|$cond-alpha-rename:3240| Int) (|$cond-alpha-rename:3241| Int) (|$cond-alpha-rename:3242| Int) (|$cond-alpha-rename:3243| Int) (|$cond-alpha-rename:3255| Int) (|$cond-alpha-rename:3275| Int) (|$cond-alpha-rename:3277| Int) (|$cond-alpha-rename:992| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:3275| 1) (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| (+ (* 0 |$cond-alpha-rename:992|) (+ 0 0)) |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| 0 |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| |$alpha-51:u_1039| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869|) (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| (+ (* 0 |$cond-alpha-rename:3255|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$cond-alpha-rename:3241| |$cond-alpha-rename:3240| 0 |$cond-alpha-rename:3241| |$cond-alpha-rename:3240| |$alpha-51:u_1039| |$cond-alpha-rename:3241| |$cond-alpha-rename:3240|) (|fail$unknown:145| |$cond-alpha-rename:3277| 1) (not (= 0 |$V-reftype:111|)) (= 0 0) (= 0 (+ (* 0 (+ (* 0 |$cond-alpha-rename:3255|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) )
      (|f3_1038$unknown:103| |$V-reftype:115| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| 0 |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| 0 |$cond-alpha-rename:3243| |$cond-alpha-rename:3242| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| 0 |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| |$alpha-51:u_1039| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:111| Int) (|$V-reftype:113| Int) (|$V-reftype:115| Int) (|$alpha-51:u_1039| Int) (|$cond-alpha-rename:1869| Int) (|$cond-alpha-rename:1870| Int) (|$cond-alpha-rename:3278| Int) (|$cond-alpha-rename:3279| Int) (|$cond-alpha-rename:3280| Int) (|$cond-alpha-rename:3281| Int) (|$cond-alpha-rename:3293| Int) (|$cond-alpha-rename:992| Int) )
    (=>
      ( and (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| (+ (* 0 |$cond-alpha-rename:992|) (+ 0 0)) |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| 0 |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| |$alpha-51:u_1039| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869|) (|f3_1038$unknown:106| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| (+ (* 0 |$cond-alpha-rename:3293|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| |$cond-alpha-rename:3279| |$cond-alpha-rename:3278| 0 |$cond-alpha-rename:3279| |$cond-alpha-rename:3278| |$alpha-51:u_1039| |$cond-alpha-rename:3279| |$cond-alpha-rename:3278|) (not (not (= 0 |$V-reftype:111|))) (= 0 0) (= 0 (+ (* 0 (+ (* 0 |$cond-alpha-rename:3293|) (+ (* 0 (+ (* 0 0) 0)) 0))) 0)) )
      (|f3_1038$unknown:103| |$V-reftype:115| |$V-reftype:115| |$V-reftype:113| |$V-reftype:111| |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| 0 |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| 0 |$cond-alpha-rename:3281| |$cond-alpha-rename:3280| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| 0 |$cond-alpha-rename:1870| |$cond-alpha-rename:1869| |$alpha-51:u_1039| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869|)
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
  (forall ( (|$V-reftype:145| Int) (|$V-reftype:147| Int) (|$V-reftype:149| Int) (|$V-reftype:150| Int) (|$alpha-51:u_1039| Int) (|$cond-alpha-rename:2869| Int) (|$cond-alpha-rename:2870| Int) )
    (=>
      ( and (= 0 0) (= (+ 0 0) (+ 0 0)) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|) (|f3_1038$unknown:106| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ (* 0 0) 0) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|) (|f3_1038$unknown:103| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ 0 0) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| (+ (* 0 (+ 0 0)) (+ 0 0)) |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|) )
      (|f3_1038$unknown:103| |$V-reftype:150| |$V-reftype:149| |$V-reftype:147| |$V-reftype:145| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| 0 |$cond-alpha-rename:2870| |$cond-alpha-rename:2869| |$alpha-51:u_1039| |$cond-alpha-rename:2870| |$cond-alpha-rename:2869|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:3027| Int) (|$cond-alpha-rename:3033| Int) (|$cond-alpha-rename:3034| Int) (|$cond-alpha-rename:3035| Int) (|$cond-alpha-rename:3036| Int) (|$cond-alpha-rename:3037| Int) (|$cond-alpha-rename:3038| Int) (|$cond-alpha-rename:3039| Int) (|$cond-alpha-rename:3051| Int) )
    ( and (|f3_1038$unknown:106| |$cond-alpha-rename:3035| |$cond-alpha-rename:3034| |$cond-alpha-rename:3033| |$cond-alpha-rename:3039| |$cond-alpha-rename:3038| (+ (* 0 |$cond-alpha-rename:3051|) (+ (* 0 (+ (* 0 0) 0)) 0)) |$cond-alpha-rename:3039| |$cond-alpha-rename:3038| |$cond-alpha-rename:3037| |$cond-alpha-rename:3036| 0 |$cond-alpha-rename:3037| |$cond-alpha-rename:3036| |$cond-alpha-rename:3027| |$cond-alpha-rename:3037| |$cond-alpha-rename:3036|) (not (= 0 |$cond-alpha-rename:3033|)) )
    )
  )
)
(check-sat)

(get-model)

