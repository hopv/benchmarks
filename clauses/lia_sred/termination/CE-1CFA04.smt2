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
  
     let id_1030 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253 x_1031 =
       x_1031
  
     let rec omega_1032 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253 x_1033 =
       omega_1032 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251
         s_f_z_1253 x_1033
  
     let rec f_without_checking_1285 x_DO_NOT_CARE_1419 x_DO_NOT_CARE_1420 x_DO_NOT_CARE_1421 x_DO_NOT_CARE_1422 x_EXPARAM_1133 x_DO_NOT_CARE_1415 x_DO_NOT_CARE_1416 x_DO_NOT_CARE_1417 x_DO_NOT_CARE_1418 x_1035 x_DO_NOT_CARE_1411 x_DO_NOT_CARE_1412 x_DO_NOT_CARE_1413 x_DO_NOT_CARE_1414 y_EXPARAM_1134 x_DO_NOT_CARE_1407 x_DO_NOT_CARE_1408 x_DO_NOT_CARE_1409 x_DO_NOT_CARE_1410 y_1036 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253 z_1037 =
       let set_flag_f_1260 = true
       in
       let s_f_z_1253 = z_1037
       in
       let s_f_y_EXPARAM_1251 = y_EXPARAM_1134
       in
       let s_f_x_EXPARAM_1249 = x_EXPARAM_1133
       in
         y_1036 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253
           z_1037
  
     let rec f_1034 x_DO_NOT_CARE_1299 x_DO_NOT_CARE_1300 x_DO_NOT_CARE_1301 x_DO_NOT_CARE_1302 x_EXPARAM_1133 x_DO_NOT_CARE_1295 x_DO_NOT_CARE_1296 x_DO_NOT_CARE_1297 x_DO_NOT_CARE_1298 x_1035 x_DO_NOT_CARE_1291 x_DO_NOT_CARE_1292 x_DO_NOT_CARE_1293 x_DO_NOT_CARE_1294 y_EXPARAM_1134 x_DO_NOT_CARE_1287 x_DO_NOT_CARE_1288 x_DO_NOT_CARE_1289 x_DO_NOT_CARE_1290 y_1036 prev_set_flag_f_1259 s_prev_f_x_EXPARAM_1254 s_prev_f_y_EXPARAM_1256 s_prev_f_z_1258 z_1037 =
       let u = if prev_set_flag_f_1259 then
                let u_7669 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1285 x_DO_NOT_CARE_1299 x_DO_NOT_CARE_1300
                x_DO_NOT_CARE_1301 x_DO_NOT_CARE_1302 x_EXPARAM_1133
                x_DO_NOT_CARE_1295 x_DO_NOT_CARE_1296 x_DO_NOT_CARE_1297
                x_DO_NOT_CARE_1298 x_1035 x_DO_NOT_CARE_1291 x_DO_NOT_CARE_1292
                x_DO_NOT_CARE_1293 x_DO_NOT_CARE_1294 y_EXPARAM_1134
                x_DO_NOT_CARE_1287 x_DO_NOT_CARE_1288 x_DO_NOT_CARE_1289
                x_DO_NOT_CARE_1290 y_1036 prev_set_flag_f_1259
                s_prev_f_x_EXPARAM_1254 s_prev_f_y_EXPARAM_1256 s_prev_f_z_1258
                z_1037
  
     let rec app_1038 x_DO_NOT_CARE_1403 x_DO_NOT_CARE_1404 x_DO_NOT_CARE_1405 x_DO_NOT_CARE_1406 h_EXPARAM_1131 x_DO_NOT_CARE_1399 x_DO_NOT_CARE_1400 x_DO_NOT_CARE_1401 x_DO_NOT_CARE_1402 h_1039 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253 x_1040 =
       h_1039 set_flag_f_1260 s_f_x_EXPARAM_1249 s_f_y_EXPARAM_1251 s_f_z_1253
         x_1040
  
     let main =
       f_without_checking_1285 false 0 0 0 c5_COEFFICIENT_1125 false 0 0 0
         (app_1038 false 0 0 0 c4_COEFFICIENT_1123 false 0 0 0
           (f_1034 false 0 0 0 c1_COEFFICIENT_1117 false 0 0 0
             (app_1038 false 0 0 0 c0_COEFFICIENT_1115 false 0 0 0 id_1030) false
             0 0 0 c3_COEFFICIENT_1120 false 0 0 0
             (app_1038 false 0 0 0 c2_COEFFICIENT_1118 false 0 0 0 omega_1032)))
         false 0 0 0 c7_COEFFICIENT_1128 false 0 0 0
         (app_1038 false 0 0 0 c6_COEFFICIENT_1126 false 0 0 0 id_1030) false 0 0
         0 1
")

(set-logic HORN)

(declare-fun |f_1034$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:97|
  ( Int Int ) Bool
)

(declare-fun |f_1034$unknown:37|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1285$unknown:89|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1285$unknown:94|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1285$unknown:74|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1285$unknown:73|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:109|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:15|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$knormal:193| Int) )
    (=>
      ( and (|f_1034$unknown:59| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$knormal:193| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$knormal:193| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:15| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$knormal:193| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:193| Int) (|$V-reftype:195| Int) (|$V-reftype:197| Int) (|$V-reftype:199| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |id_1030| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:15| |$V-reftype:199| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |id_1030| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:193| Int) (|$V-reftype:195| Int) (|$V-reftype:197| Int) (|$V-reftype:199| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |id_1030| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:15| |$V-reftype:199| |$V-reftype:199| |$V-reftype:197| |$V-reftype:195| |$V-reftype:193| |id_1030| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:207| Int) (|$V-reftype:209| Int) (|$V-reftype:211| Int) (|$V-reftype:213| Int) (|$V-reftype:214| Int) (|omega_1032| Int) )
    (=>
      ( and (|omega_1032$unknown:109| |$V-reftype:214| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032|) (|app_1038$unknown:20| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:15| |$V-reftype:214| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$cond-alpha-rename:186| Int) (|$knormal:221| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:186| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:73| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:186| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:1237| Int) (|$cond-alpha-rename:1238| Int) (|$cond-alpha-rename:1239| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:1241| Int) (|$cond-alpha-rename:187| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:187| |$cond-alpha-rename:1241| |$cond-alpha-rename:1241| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:1241| |$cond-alpha-rename:1241| 0 0 1 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1241| |$cond-alpha-rename:1240| |$cond-alpha-rename:1239| |$cond-alpha-rename:1238| |$cond-alpha-rename:1237| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:187| |$cond-alpha-rename:1241| |$cond-alpha-rename:1241| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:23| |$knormal:2| 1) )
      (|bot$unknown:23| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:368| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (= 0 0) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) (|fail$unknown:97| |$knormal:73| 1) (|f_without_checking_1285$unknown:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:37| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:15| |$cond-alpha-rename:368| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:368| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1244| Int) (|$cond-alpha-rename:1245| Int) (|$cond-alpha-rename:1246| Int) (|$cond-alpha-rename:1247| Int) (|$cond-alpha-rename:1248| Int) (|$cond-alpha-rename:574| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:574| |$cond-alpha-rename:1248| |$cond-alpha-rename:1248| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:1248| |$cond-alpha-rename:1248| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_1034$unknown:52| |$cond-alpha-rename:1248| |$cond-alpha-rename:1248| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1248| |$cond-alpha-rename:1247| |$cond-alpha-rename:1246| |$cond-alpha-rename:1245| |$cond-alpha-rename:1244| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) (= 0 0) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:574| |$cond-alpha-rename:1248| |$cond-alpha-rename:1248| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) (|fail$unknown:97| |$knormal:73| 1) (|f_without_checking_1285$unknown:73| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:37| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1251| Int) (|$cond-alpha-rename:1252| Int) (|$cond-alpha-rename:1253| Int) (|$cond-alpha-rename:1254| Int) (|$cond-alpha-rename:1255| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1255| |$cond-alpha-rename:1254| |$cond-alpha-rename:1253| |$cond-alpha-rename:1252| |$cond-alpha-rename:1251| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_1034$unknown:52| |$cond-alpha-rename:1255| |$cond-alpha-rename:1255| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1613| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) (|fail$unknown:97| |$knormal:73| 1) (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:1613| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:59| |$cond-alpha-rename:1613| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) (|fail$unknown:97| |$knormal:73| 1) (|bot$unknown:23| |$knormal:71| 1) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:378| Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) (|f_without_checking_1285$unknown:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:37| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:15| |$cond-alpha-rename:378| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:378| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1258| Int) (|$cond-alpha-rename:1259| Int) (|$cond-alpha-rename:1260| Int) (|$cond-alpha-rename:1261| Int) (|$cond-alpha-rename:1262| Int) (|$cond-alpha-rename:584| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:584| |$cond-alpha-rename:1262| |$cond-alpha-rename:1262| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:1262| |$cond-alpha-rename:1262| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:52| |$cond-alpha-rename:1262| |$cond-alpha-rename:1262| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1262| |$cond-alpha-rename:1261| |$cond-alpha-rename:1260| |$cond-alpha-rename:1259| |$cond-alpha-rename:1258| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) (= 0 0) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:584| |$cond-alpha-rename:1262| |$cond-alpha-rename:1262| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) (|f_without_checking_1285$unknown:73| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:37| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1265| Int) (|$cond-alpha-rename:1266| Int) (|$cond-alpha-rename:1267| Int) (|$cond-alpha-rename:1268| Int) (|$cond-alpha-rename:1269| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1269| |$cond-alpha-rename:1268| |$cond-alpha-rename:1267| |$cond-alpha-rename:1266| |$cond-alpha-rename:1265| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_1034$unknown:52| |$cond-alpha-rename:1269| |$cond-alpha-rename:1269| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:1615| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:1615| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:59| |$cond-alpha-rename:1615| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:71| Int) (|$knormal:109| Int) )
    (=>
      ( and (|f_1034$unknown:37| |$V-reftype:71| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:109| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:20| |$V-reftype:71| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:109| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$knormal:136| Int) )
    (=>
      ( and (|f_1034$unknown:52| |$V-reftype:101| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:136| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:20| |$V-reftype:101| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:136| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$knormal:221| Int) )
    (=>
      ( and (|f_without_checking_1285$unknown:73| |$V-reftype:142| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:20| |$V-reftype:142| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:1272| Int) (|$cond-alpha-rename:1273| Int) (|$cond-alpha-rename:1274| Int) (|$cond-alpha-rename:1275| Int) (|$cond-alpha-rename:1276| Int) )
    (=>
      ( and (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:1276| |$cond-alpha-rename:1275| |$cond-alpha-rename:1274| |$cond-alpha-rename:1273| |$cond-alpha-rename:1272| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:20| |$cond-alpha-rename:1276| |$cond-alpha-rename:1276| 0 0 1 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1969| Int) (|$cond-alpha-rename:1970| Int) (|$cond-alpha-rename:1971| Int) (|$cond-alpha-rename:1972| Int) (|$cond-alpha-rename:1973| Int) )
    ( and (|app_1038$unknown:20| |$cond-alpha-rename:1973| |$cond-alpha-rename:1972| |$cond-alpha-rename:1971| |$cond-alpha-rename:1970| |$cond-alpha-rename:1969| 0 0 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:1969|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_f_y_EXPARAM_1251| Int) (|$alpha-11:s_f_z_1253| Int) (|$alpha-12:x_1033| Int) (|$alpha-8:set_flag_f_1260| Int) (|$alpha-9:s_f_x_EXPARAM_1249| Int) (|$knormal:11| Int) )
    (=>
      ( and (|omega_1032$unknown:109| |$knormal:11| |$alpha-12:x_1033| |$alpha-11:s_f_z_1253| |$alpha-10:s_f_y_EXPARAM_1251| |$alpha-9:s_f_x_EXPARAM_1249| |$alpha-8:set_flag_f_1260|) )
      (|omega_1032$unknown:109| |$knormal:11| |$alpha-12:x_1033| |$alpha-11:s_f_z_1253| |$alpha-10:s_f_y_EXPARAM_1251| |$alpha-9:s_f_x_EXPARAM_1249| |$alpha-8:set_flag_f_1260|)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_without_checking_1285$unknown:94| 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)
