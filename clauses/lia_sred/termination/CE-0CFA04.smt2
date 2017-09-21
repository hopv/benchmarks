(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
  
     let id_1030 set_flag_f_1191 s_f_x_EXPARAM_1180 s_f_y_EXPARAM_1182 s_f_z_1184 x_1031 =
       x_1031
  
     let rec omega_1032 set_flag_f_1191 s_f_x_EXPARAM_1180 s_f_y_EXPARAM_1182 s_f_z_1184 x_1033 =
       omega_1032 set_flag_f_1191 s_f_x_EXPARAM_1180 s_f_y_EXPARAM_1182
         s_f_z_1184 x_1033
  
     let rec f_without_checking_1206 x_DO_NOT_CARE_1259 x_DO_NOT_CARE_1260 x_DO_NOT_CARE_1261 x_DO_NOT_CARE_1262 x_EXPARAM_1092 x_DO_NOT_CARE_1255 x_DO_NOT_CARE_1256 x_DO_NOT_CARE_1257 x_DO_NOT_CARE_1258 x_1035 x_DO_NOT_CARE_1251 x_DO_NOT_CARE_1252 x_DO_NOT_CARE_1253 x_DO_NOT_CARE_1254 y_EXPARAM_1093 x_DO_NOT_CARE_1247 x_DO_NOT_CARE_1248 x_DO_NOT_CARE_1249 x_DO_NOT_CARE_1250 y_1036 set_flag_f_1191 s_f_x_EXPARAM_1180 s_f_y_EXPARAM_1182 s_f_z_1184 z_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_z_1184 = z_1037
       in
       let s_f_y_EXPARAM_1182 = y_EXPARAM_1093
       in
       let s_f_x_EXPARAM_1180 = x_EXPARAM_1092
       in
         y_1036 set_flag_f_1191 s_f_x_EXPARAM_1180 s_f_y_EXPARAM_1182 s_f_z_1184
           z_1037
  
     let rec f_1034 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 x_EXPARAM_1092 x_DO_NOT_CARE_1216 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 x_1035 x_DO_NOT_CARE_1212 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 x_DO_NOT_CARE_1215 y_EXPARAM_1093 x_DO_NOT_CARE_1208 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 x_DO_NOT_CARE_1211 y_1036 prev_set_flag_f_1190 s_prev_f_x_EXPARAM_1185 s_prev_f_y_EXPARAM_1187 s_prev_f_z_1189 z_1037 =
       let u = if prev_set_flag_f_1190 then
                let u_5975 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1206 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221
                x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 x_EXPARAM_1092
                x_DO_NOT_CARE_1216 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218
                x_DO_NOT_CARE_1219 x_1035 x_DO_NOT_CARE_1212 x_DO_NOT_CARE_1213
                x_DO_NOT_CARE_1214 x_DO_NOT_CARE_1215 y_EXPARAM_1093
                x_DO_NOT_CARE_1208 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210
                x_DO_NOT_CARE_1211 y_1036 prev_set_flag_f_1190
                s_prev_f_x_EXPARAM_1185 s_prev_f_y_EXPARAM_1187 s_prev_f_z_1189
                z_1037
  
     let main =
       f_without_checking_1206 false 0 0 0 c2_COEFFICIENT_1088 false 0 0 0
         (f_1034 false 0 0 0 c0_COEFFICIENT_1084 false 0 0 0 id_1030 false 0 0 0
           c1_COEFFICIENT_1085 false 0 0 0 omega_1032) false 0 0 0
         c3_COEFFICIENT_1089 false 0 0 0 id_1030 false 0 0 0 1
")

(set-logic HORN)

(declare-fun |f_1034$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1206$unknown:68|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:88|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1206$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:76|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1206$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (= 0 0) (not (= 0 |$alpha-62:prev_set_flag_f_1190|)) (|fail$unknown:76| |$knormal:73| 1) (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1206$unknown:52| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) (|bot$unknown:2| |$knormal:71| 1) )
      (|f_without_checking_1206$unknown:53| |$V-reftype:31| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$V-reftype:61| Int) (|$V-reftype:62| Int) (|$alpha-61:y_1036| Int) (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:71| 1) (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) (|fail$unknown:76| |$knormal:73| 1) (|omega_1032$unknown:88| |$V-reftype:62| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$alpha-61:y_1036|) (not (= 0 |$alpha-62:prev_set_flag_f_1190|)) (= 0 0) )
      (|f_without_checking_1206$unknown:68| |$V-reftype:62| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$alpha-61:y_1036| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:380| Int) (|$knormal:71| Int) (|$knormal:73| Int) )
    (=>
      ( and (not (= 0 |$alpha-62:prev_set_flag_f_1190|)) (|fail$unknown:76| |$knormal:73| 1) (|f_without_checking_1206$unknown:68| |$cond-alpha-rename:380| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) (|bot$unknown:2| |$knormal:71| 1) )
      (|f_1034$unknown:38| |$cond-alpha-rename:380| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$alpha-51:x_1035| Int) (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (= 0 0) (not (not (= 0 |$alpha-62:prev_set_flag_f_1190|))) (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) (|f_without_checking_1206$unknown:52| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1206$unknown:53| |$V-reftype:31| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-51:x_1035| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$V-reftype:61| Int) (|$V-reftype:62| Int) (|$alpha-61:y_1036| Int) (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) )
    (=>
      ( and (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) (|omega_1032$unknown:88| |$V-reftype:62| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$alpha-61:y_1036|) (not (not (= 0 |$alpha-62:prev_set_flag_f_1190|))) (= 0 0) )
      (|f_without_checking_1206$unknown:68| |$V-reftype:62| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |$V-reftype:55| |$alpha-61:y_1036| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-62:prev_set_flag_f_1190| Int) (|$alpha-63:s_prev_f_x_EXPARAM_1185| Int) (|$alpha-64:s_prev_f_y_EXPARAM_1187| Int) (|$alpha-65:s_prev_f_z_1189| Int) (|$alpha-66:z_1037| Int) (|$cond-alpha-rename:382| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-62:prev_set_flag_f_1190|))) (|f_without_checking_1206$unknown:68| |$cond-alpha-rename:382| |$alpha-66:z_1037| |$alpha-66:z_1037| 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1206$unknown:52| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:38| |$cond-alpha-rename:382| |$alpha-66:z_1037| |$alpha-65:s_prev_f_z_1189| |$alpha-64:s_prev_f_y_EXPARAM_1187| |$alpha-63:s_prev_f_x_EXPARAM_1185| |$alpha-62:prev_set_flag_f_1190| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:74| Int) (|$knormal:128| Int) )
    (=>
      ( and (|f_1034$unknown:38| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$knormal:128| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) (|f_without_checking_1206$unknown:52| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$knormal:128| 0 0 0 0 0 0 0 0 0) )
      (|f_without_checking_1206$unknown:53| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$knormal:128| 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:158| Int) (|id_1030| Int) )
    (=>
      ( and true )
      (|f_without_checking_1206$unknown:68| |$V-reftype:158| |$V-reftype:158| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |id_1030| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:525| Int) )
    ( and (|f_without_checking_1206$unknown:52| |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$cond-alpha-rename:523| |$cond-alpha-rename:522| |$cond-alpha-rename:521| 0 0 0 0 0 0 0 0 0) (not (= 0 |$cond-alpha-rename:521|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_f_y_EXPARAM_1182| Int) (|$alpha-11:s_f_z_1184| Int) (|$alpha-12:x_1033| Int) (|$alpha-8:set_flag_f_1191| Int) (|$alpha-9:s_f_x_EXPARAM_1180| Int) (|$knormal:11| Int) )
    (=>
      ( and (|omega_1032$unknown:88| |$knormal:11| |$alpha-12:x_1033| |$alpha-11:s_f_z_1184| |$alpha-10:s_f_y_EXPARAM_1182| |$alpha-9:s_f_x_EXPARAM_1180| |$alpha-8:set_flag_f_1191|) )
      (|omega_1032$unknown:88| |$knormal:11| |$alpha-12:x_1033| |$alpha-11:s_f_z_1184| |$alpha-10:s_f_y_EXPARAM_1182| |$alpha-9:s_f_x_EXPARAM_1180| |$alpha-8:set_flag_f_1191|)
    )
  )
)
(check-sat)

(get-model)

