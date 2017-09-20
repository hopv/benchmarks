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

(declare-fun |f_1034$unknown:37|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:97|
  ( Int Int ) Bool
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

(declare-fun |app_1038$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:59|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:108| Int) (|$V-reftype:110| Int) (|$V-reftype:112| Int) (|$V-reftype:114| Int) (|$V-reftype:115| Int) (|$knormal:193| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$knormal:193| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:59| |$V-reftype:115| |$V-reftype:114| |$V-reftype:112| |$V-reftype:110| |$V-reftype:108| |$knormal:193| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
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
      ( and (|app_1038$unknown:20| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032| 0 0 0 0 0 0 0 0 0) (|omega_1032$unknown:109| |$V-reftype:214| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032|) )
      (|app_1038$unknown:15| |$V-reftype:214| |$V-reftype:213| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |omega_1032| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$cond-alpha-rename:9| Int) (|$knormal:221| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:9| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:73| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:9| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$knormal:221| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:185| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:10| |$cond-alpha-rename:185| |$cond-alpha-rename:185| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:185| |$cond-alpha-rename:185| 0 0 1 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:185| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:181| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:10| |$cond-alpha-rename:185| |$cond-alpha-rename:185| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
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
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:14| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:14| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_1034$unknown:37| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:14| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:34| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:34| |$cond-alpha-rename:192| |$cond-alpha-rename:192| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:192| |$cond-alpha-rename:192| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_1034$unknown:52| |$cond-alpha-rename:192| |$cond-alpha-rename:192| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:192| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:188| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:34| |$cond-alpha-rename:192| |$cond-alpha-rename:192| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_without_checking_1285$unknown:73| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_1034$unknown:37| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:196| |$cond-alpha-rename:195| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_1034$unknown:52| |$cond-alpha-rename:199| |$cond-alpha-rename:199| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:222| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:222| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_1034$unknown:59| |$cond-alpha-rename:222| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|bot$unknown:23| |$knormal:71| 1) (|fail$unknown:97| |$knormal:73| 1) (not (= 0 |$alpha-62:prev_set_flag_f_1259|)) )
      (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:24| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:24| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:37| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_without_checking_1285$unknown:74| |$cond-alpha-rename:24| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:44| Int) )
    (=>
      ( and (|app_1038$unknown:15| |$cond-alpha-rename:44| |$cond-alpha-rename:206| |$cond-alpha-rename:206| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$cond-alpha-rename:206| |$cond-alpha-rename:206| 0 0 1 0 0 0 0 0 0 0 0 0) (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:52| |$cond-alpha-rename:206| |$cond-alpha-rename:206| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:206| |$cond-alpha-rename:205| |$cond-alpha-rename:204| |$cond-alpha-rename:203| |$cond-alpha-rename:202| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:44| |$cond-alpha-rename:206| |$cond-alpha-rename:206| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:73| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_1034$unknown:37| |$V-reftype:142| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:213| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:213| |$cond-alpha-rename:212| |$cond-alpha-rename:211| |$cond-alpha-rename:210| |$cond-alpha-rename:209| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_1034$unknown:52| |$cond-alpha-rename:213| |$cond-alpha-rename:213| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:224| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:89| |$cond-alpha-rename:224| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1285$unknown:94| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
      (|f_1034$unknown:59| |$cond-alpha-rename:224| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1259| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1254| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1256| Int) (|$alpha-65:s_prev_f_z_1258| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (|app_1038$unknown:20| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1258| |$alpha-64:s_prev_f_y_EXPARAM_1256| |$alpha-63:s_prev_f_x_EXPARAM_1254| |$alpha-62:prev_set_flag_f_1259| 0 0 0 0 0 0 0 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1259|))) )
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
  (forall ( (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) )
    (=>
      ( and (|f_without_checking_1285$unknown:94| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:20| |$cond-alpha-rename:220| |$cond-alpha-rename:220| 0 0 1 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:247| Int) )
    ( and (|app_1038$unknown:20| |$cond-alpha-rename:247| |$cond-alpha-rename:246| |$cond-alpha-rename:245| |$cond-alpha-rename:244| |$cond-alpha-rename:243| 0 0 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:243|)) )
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
  (forall ( )
    (=>
      ( and true )
      (|f_without_checking_1285$unknown:94| 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

