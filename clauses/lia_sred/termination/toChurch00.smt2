(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c10_COEFFICIENT_1129 = 0
     let rec c9_COEFFICIENT_1128 = 0
     let rec c8_COEFFICIENT_1127 = 0
     let rec c7_COEFFICIENT_1125 = 0
     let rec c6_COEFFICIENT_1124 = 0
     let rec c5_COEFFICIENT_1123 = 0
     let rec c4_COEFFICIENT_1122 = 0
     let rec c3_COEFFICIENT_1121 = 0
     let rec c2_COEFFICIENT_1120 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1116 = 0
  
     let rec compose_without_checking_1188 x_DO_NOT_CARE_1419 x_DO_NOT_CARE_1420 x_DO_NOT_CARE_1421 x_DO_NOT_CARE_1422 f_EXPARAM_1133 x_DO_NOT_CARE_1415 x_DO_NOT_CARE_1416 x_DO_NOT_CARE_1417 x_DO_NOT_CARE_1418 f_1031 x_DO_NOT_CARE_1411 x_DO_NOT_CARE_1412 x_DO_NOT_CARE_1413 x_DO_NOT_CARE_1414 g_EXPARAM_1134 x_DO_NOT_CARE_1407 x_DO_NOT_CARE_1408 x_DO_NOT_CARE_1409 x_DO_NOT_CARE_1410 g_1032 set_flag_compose_1148 s_compose_f_EXPARAM_1137 s_compose_g_EXPARAM_1139 s_compose_x_1141 x_1033 =
       let set_flag_compose_1148 = true
       in
       let s_compose_x_1141 = x_1033
       in
       let s_compose_g_EXPARAM_1139 = g_EXPARAM_1134
       in
       let s_compose_f_EXPARAM_1137 = f_EXPARAM_1133
       in
         f_1031 set_flag_compose_1148 s_compose_f_EXPARAM_1137
           s_compose_g_EXPARAM_1139 s_compose_x_1141
           (g_1032 set_flag_compose_1148 s_compose_f_EXPARAM_1137
             s_compose_g_EXPARAM_1139 s_compose_x_1141 x_1033)
  
     let rec compose_1030 x_DO_NOT_CARE_1202 x_DO_NOT_CARE_1203 x_DO_NOT_CARE_1204 x_DO_NOT_CARE_1205 f_EXPARAM_1133 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 x_DO_NOT_CARE_1201 f_1031 x_DO_NOT_CARE_1194 x_DO_NOT_CARE_1195 x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 g_EXPARAM_1134 x_DO_NOT_CARE_1190 x_DO_NOT_CARE_1191 x_DO_NOT_CARE_1192 x_DO_NOT_CARE_1193 g_1032 prev_set_flag_compose_1147 s_prev_compose_f_EXPARAM_1142 s_prev_compose_g_EXPARAM_1144 s_prev_compose_x_1146 x_1033 =
       let u =if prev_set_flag_compose_1147 then
                let u_2450 = fail ()
                in
                  bot()
              else () in
              compose_without_checking_1188 x_DO_NOT_CARE_1202 x_DO_NOT_CARE_1203
                x_DO_NOT_CARE_1204 x_DO_NOT_CARE_1205 f_EXPARAM_1133
                x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200
                x_DO_NOT_CARE_1201 f_1031 x_DO_NOT_CARE_1194 x_DO_NOT_CARE_1195
                x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 g_EXPARAM_1134
                x_DO_NOT_CARE_1190 x_DO_NOT_CARE_1191 x_DO_NOT_CARE_1192
                x_DO_NOT_CARE_1193 g_1032 prev_set_flag_compose_1147
                s_prev_compose_f_EXPARAM_1142 s_prev_compose_g_EXPARAM_1144
                s_prev_compose_x_1146 x_1033
  
  
     let id_1034 set_flag_compose_1148 s_compose_f_EXPARAM_1137 s_compose_g_EXPARAM_1139 s_compose_x_1141 x_1035 =
       x_1035
  
     let succ_1036 set_flag_compose_1148 s_compose_f_EXPARAM_1137 s_compose_g_EXPARAM_1139 s_compose_x_1141 x_1037 =
       x_1037 + 1
  
     let rec toChurch_1038 x_DO_NOT_CARE_1403 x_DO_NOT_CARE_1404 x_DO_NOT_CARE_1405 x_DO_NOT_CARE_1406 n_1039 x_DO_NOT_CARE_1399 x_DO_NOT_CARE_1400 x_DO_NOT_CARE_1401 x_DO_NOT_CARE_1402 f_EXPARAM_1119 set_flag_compose_1148 s_compose_f_EXPARAM_1137 s_compose_g_EXPARAM_1139 s_compose_x_1141 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_compose_1148 s_compose_f_EXPARAM_1137
           s_compose_g_EXPARAM_1139 s_compose_x_1141
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_compose_1148 s_compose_f_EXPARAM_1137
           s_compose_g_EXPARAM_1139 s_compose_x_1141 f_1040 set_flag_compose_1148
           s_compose_f_EXPARAM_1137 s_compose_g_EXPARAM_1139 s_compose_x_1141
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_compose_1148 s_compose_f_EXPARAM_1137
           s_compose_g_EXPARAM_1139 s_compose_x_1141
           (toChurch_1038 set_flag_compose_1148 s_compose_f_EXPARAM_1137
             s_compose_g_EXPARAM_1139 s_compose_x_1141 (n_1039 - 1)
             set_flag_compose_1148 s_compose_f_EXPARAM_1137
             s_compose_g_EXPARAM_1139 s_compose_x_1141
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_compose_1148 s_compose_f_EXPARAM_1137
             s_compose_g_EXPARAM_1139 s_compose_x_1141 f_1040)
  
     let main_1041 x_1043 =
     let set_flag_compose_1148 = false in
     let s_compose_f_EXPARAM_1137 = 0 in
     let s_compose_g_EXPARAM_1139 = 0 in
     let s_compose_x_1141 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_compose_1148 s_compose_f_EXPARAM_1137
               s_compose_g_EXPARAM_1139 s_compose_x_1141 x_1043
               set_flag_compose_1148 s_compose_f_EXPARAM_1137
               s_compose_g_EXPARAM_1139 s_compose_x_1141
               ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_compose_1148 s_compose_f_EXPARAM_1137
               s_compose_g_EXPARAM_1139 s_compose_x_1141 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |compose_1030$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_without_checking_1188$unknown:68|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:116|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_without_checking_1188$unknown:73|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_without_checking_1188$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:76|
  ( Int Int ) Bool
)

(declare-fun |compose_1030$unknown:31|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:32| Int) (|$alpha-41:f_1031| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:2562| Int) (|$cond-alpha-rename:2563| Int) (|$cond-alpha-rename:2564| Int) (|$cond-alpha-rename:2565| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2567| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:87| 0)) (not (= (- |$cond-alpha-rename:2562| 1) 0)) (not (= |$cond-alpha-rename:2562| 0)) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (|toChurch_1038$unknown:110| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (|fail$unknown:76| |$knormal:74| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564| (+ (* 0 |$cond-alpha-rename:2563|) (+ (* 0 |$cond-alpha-rename:2562|) 0)) |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564| |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564| (+ (* 0 |$cond-alpha-rename:2563|) (+ (* 0 |$cond-alpha-rename:2562|) 0)) |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564|) (|bot$unknown:2| |$knormal:72| 1) )
      (|compose_without_checking_1188$unknown:53| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564| 0 |$cond-alpha-rename:2567| |$cond-alpha-rename:2566| |$cond-alpha-rename:2565| |$cond-alpha-rename:2564|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1088| Int) (|$cond-alpha-rename:1089| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1091| Int) (|$cond-alpha-rename:1092| Int) (|$cond-alpha-rename:2589| Int) (|$cond-alpha-rename:2590| Int) (|$cond-alpha-rename:2591| Int) (|$cond-alpha-rename:2592| Int) (|$cond-alpha-rename:2593| Int) (|$cond-alpha-rename:2594| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:266| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= 0 0) (not (= (- |$cond-alpha-rename:2589| 1) 0)) (not (= |$cond-alpha-rename:265| 0)) (not (= |$cond-alpha-rename:2589| 0)) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (|toChurch_1038$unknown:116| |$V-reftype:62| |$cond-alpha-rename:1092| |$cond-alpha-rename:1092| 0 0 1 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (+ (* 0 |$cond-alpha-rename:266|) (+ (* 0 |$cond-alpha-rename:265|) 0)) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (- |$cond-alpha-rename:265| 1) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591|) (|fail$unknown:76| |$knormal:74| 1) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:1092| |$cond-alpha-rename:1091| |$cond-alpha-rename:1090| |$cond-alpha-rename:1089| |$cond-alpha-rename:1088| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| 0 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| 0 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591|) (|compose_1030$unknown:31| |$cond-alpha-rename:1092| |$cond-alpha-rename:1092| 0 0 1 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (+ (* 0 |$cond-alpha-rename:266|) (+ (* 0 |$cond-alpha-rename:265|) 0)) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (+ (* 0 |$cond-alpha-rename:266|) (+ (* 0 |$cond-alpha-rename:265|) 0)) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (+ (* 0 |$cond-alpha-rename:2590|) (+ (* 0 |$cond-alpha-rename:2589|) 0)) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| (+ (* 0 |$cond-alpha-rename:2590|) (+ (* 0 |$cond-alpha-rename:2589|) 0)) |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591|) (|bot$unknown:2| |$knormal:72| 1) )
      (|compose_without_checking_1188$unknown:68| |$V-reftype:62| |$cond-alpha-rename:1092| |$cond-alpha-rename:1092| 0 0 1 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| 0 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591| 0 |$cond-alpha-rename:2594| |$cond-alpha-rename:2593| |$cond-alpha-rename:2592| |$cond-alpha-rename:2591|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1095| Int) (|$cond-alpha-rename:1096| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:1098| Int) (|$cond-alpha-rename:1099| Int) (|$cond-alpha-rename:2616| Int) (|$cond-alpha-rename:2617| Int) (|$cond-alpha-rename:2618| Int) (|$cond-alpha-rename:2619| Int) (|$cond-alpha-rename:2620| Int) (|$cond-alpha-rename:2621| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2616| 1) 0)) (not (= |$cond-alpha-rename:2616| 0)) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (|fail$unknown:76| |$knormal:74| 1) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:1099| |$cond-alpha-rename:1098| |$cond-alpha-rename:1097| |$cond-alpha-rename:1096| |$cond-alpha-rename:1095| |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| 0 |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| 0 |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| (+ (* 0 |$cond-alpha-rename:2617|) (+ (* 0 |$cond-alpha-rename:2616|) 0)) |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| (+ (* 0 |$cond-alpha-rename:2617|) (+ (* 0 |$cond-alpha-rename:2616|) 0)) |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618|) (|bot$unknown:2| |$knormal:72| 1) )
      (|compose_1030$unknown:31| |$cond-alpha-rename:1099| |$cond-alpha-rename:1099| 0 0 1 |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| 0 |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618| 0 |$cond-alpha-rename:2621| |$cond-alpha-rename:2620| |$cond-alpha-rename:2619| |$cond-alpha-rename:2618|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1348| Int) (|$cond-alpha-rename:1349| Int) (|$cond-alpha-rename:2643| Int) (|$cond-alpha-rename:2644| Int) (|$cond-alpha-rename:2645| Int) (|$cond-alpha-rename:2646| Int) (|$cond-alpha-rename:2647| Int) (|$cond-alpha-rename:2648| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2643| 1) 0)) (not (= |$cond-alpha-rename:2643| 0)) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (|fail$unknown:76| |$knormal:74| 1) (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645|) (|compose_without_checking_1188$unknown:68| |$cond-alpha-rename:1348| |$alpha-56:x_1033| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) 1 |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645|) (|compose_without_checking_1188$unknown:53| |$cond-alpha-rename:1349| |$cond-alpha-rename:1348| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) 1 |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0))) (+ (* 0 (- |$cond-alpha-rename:2643| 1)) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| (+ (* 0 |$cond-alpha-rename:2644|) (+ (* 0 |$cond-alpha-rename:2643|) 0)) |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645|) (|bot$unknown:2| |$knormal:72| 1) )
      (|compose_1030$unknown:38| |$cond-alpha-rename:1349| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| 0 |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645| 0 |$cond-alpha-rename:2648| |$cond-alpha-rename:2647| |$cond-alpha-rename:2646| |$cond-alpha-rename:2645|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:2670| Int) (|$cond-alpha-rename:2671| Int) (|$cond-alpha-rename:2672| Int) (|$cond-alpha-rename:2673| Int) (|$cond-alpha-rename:2674| Int) (|$cond-alpha-rename:2675| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2670| 1) 0)) (not (= |$cond-alpha-rename:2670| 0)) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (|fail$unknown:76| |$knormal:74| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| (+ (* 0 |$cond-alpha-rename:2671|) (+ (* 0 |$cond-alpha-rename:2670|) 0)) |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| (+ (* 0 |$cond-alpha-rename:2671|) (+ (* 0 |$cond-alpha-rename:2670|) 0)) |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672|) (|bot$unknown:2| |$knormal:72| 1) )
      (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| 0 |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672| 0 |$cond-alpha-rename:2675| |$cond-alpha-rename:2674| |$cond-alpha-rename:2673| |$cond-alpha-rename:2672|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:32| Int) (|$alpha-41:f_1031| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:2697| Int) (|$cond-alpha-rename:2698| Int) (|$cond-alpha-rename:2699| Int) (|$cond-alpha-rename:2700| Int) (|$cond-alpha-rename:2701| Int) (|$cond-alpha-rename:2702| Int) )
    (=>
      ( and (= 0 0) (not (= (- |$cond-alpha-rename:2697| 1) 0)) (not (= |$cond-alpha-rename:123| 0)) (not (= |$cond-alpha-rename:2697| 0)) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (|toChurch_1038$unknown:110| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699| |$cond-alpha-rename:128| |$cond-alpha-rename:127| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699| (+ (* 0 |$cond-alpha-rename:2698|) (+ (* 0 |$cond-alpha-rename:2697|) 0)) |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699| |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699| (+ (* 0 |$cond-alpha-rename:2698|) (+ (* 0 |$cond-alpha-rename:2697|) 0)) |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699|) )
      (|compose_without_checking_1188$unknown:53| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699| 0 |$cond-alpha-rename:2702| |$cond-alpha-rename:2701| |$cond-alpha-rename:2700| |$cond-alpha-rename:2699|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1102| Int) (|$cond-alpha-rename:1103| Int) (|$cond-alpha-rename:1104| Int) (|$cond-alpha-rename:1105| Int) (|$cond-alpha-rename:1106| Int) (|$cond-alpha-rename:2724| Int) (|$cond-alpha-rename:2725| Int) (|$cond-alpha-rename:2726| Int) (|$cond-alpha-rename:2727| Int) (|$cond-alpha-rename:2728| Int) (|$cond-alpha-rename:2729| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:293| Int) )
    (=>
      ( and (= 0 0) (not (= (- |$cond-alpha-rename:2724| 1) 0)) (not (= |$cond-alpha-rename:292| 0)) (not (= |$cond-alpha-rename:2724| 0)) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (|toChurch_1038$unknown:116| |$V-reftype:62| |$cond-alpha-rename:1106| |$cond-alpha-rename:1106| 0 0 1 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (+ (* 0 |$cond-alpha-rename:293|) (+ (* 0 |$cond-alpha-rename:292|) 0)) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (- |$cond-alpha-rename:292| 1) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726|) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:1106| |$cond-alpha-rename:1105| |$cond-alpha-rename:1104| |$cond-alpha-rename:1103| |$cond-alpha-rename:1102| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| 0 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| 0 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726|) (|compose_1030$unknown:31| |$cond-alpha-rename:1106| |$cond-alpha-rename:1106| 0 0 1 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (+ (* 0 |$cond-alpha-rename:293|) (+ (* 0 |$cond-alpha-rename:292|) 0)) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (+ (* 0 |$cond-alpha-rename:293|) (+ (* 0 |$cond-alpha-rename:292|) 0)) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (+ (* 0 |$cond-alpha-rename:2725|) (+ (* 0 |$cond-alpha-rename:2724|) 0)) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| (+ (* 0 |$cond-alpha-rename:2725|) (+ (* 0 |$cond-alpha-rename:2724|) 0)) |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726|) )
      (|compose_without_checking_1188$unknown:68| |$V-reftype:62| |$cond-alpha-rename:1106| |$cond-alpha-rename:1106| 0 0 1 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| 0 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726| 0 |$cond-alpha-rename:2729| |$cond-alpha-rename:2728| |$cond-alpha-rename:2727| |$cond-alpha-rename:2726|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1109| Int) (|$cond-alpha-rename:1110| Int) (|$cond-alpha-rename:1111| Int) (|$cond-alpha-rename:1112| Int) (|$cond-alpha-rename:1113| Int) (|$cond-alpha-rename:2751| Int) (|$cond-alpha-rename:2752| Int) (|$cond-alpha-rename:2753| Int) (|$cond-alpha-rename:2754| Int) (|$cond-alpha-rename:2755| Int) (|$cond-alpha-rename:2756| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2751| 1) 0)) (not (= |$cond-alpha-rename:2751| 0)) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:1113| |$cond-alpha-rename:1112| |$cond-alpha-rename:1111| |$cond-alpha-rename:1110| |$cond-alpha-rename:1109| |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| 0 |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| 0 |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| (+ (* 0 |$cond-alpha-rename:2752|) (+ (* 0 |$cond-alpha-rename:2751|) 0)) |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| (+ (* 0 |$cond-alpha-rename:2752|) (+ (* 0 |$cond-alpha-rename:2751|) 0)) |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753|) )
      (|compose_1030$unknown:31| |$cond-alpha-rename:1113| |$cond-alpha-rename:1113| 0 0 1 |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| 0 |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753| 0 |$cond-alpha-rename:2756| |$cond-alpha-rename:2755| |$cond-alpha-rename:2754| |$cond-alpha-rename:2753|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:1351| Int) (|$cond-alpha-rename:1352| Int) (|$cond-alpha-rename:2778| Int) (|$cond-alpha-rename:2779| Int) (|$cond-alpha-rename:2780| Int) (|$cond-alpha-rename:2781| Int) (|$cond-alpha-rename:2782| Int) (|$cond-alpha-rename:2783| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2778| 1) 0)) (not (= |$cond-alpha-rename:2778| 0)) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780|) (|compose_without_checking_1188$unknown:68| |$cond-alpha-rename:1351| |$alpha-56:x_1033| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) 1 |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780|) (|compose_without_checking_1188$unknown:53| |$cond-alpha-rename:1352| |$cond-alpha-rename:1351| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) 1 |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0))) (+ (* 0 (- |$cond-alpha-rename:2778| 1)) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| (+ (* 0 |$cond-alpha-rename:2779|) (+ (* 0 |$cond-alpha-rename:2778|) 0)) |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780|) )
      (|compose_1030$unknown:38| |$cond-alpha-rename:1352| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| 0 |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780| 0 |$cond-alpha-rename:2783| |$cond-alpha-rename:2782| |$cond-alpha-rename:2781| |$cond-alpha-rename:2780|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:2805| Int) (|$cond-alpha-rename:2806| Int) (|$cond-alpha-rename:2807| Int) (|$cond-alpha-rename:2808| Int) (|$cond-alpha-rename:2809| Int) (|$cond-alpha-rename:2810| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2805| 1) 0)) (not (= |$cond-alpha-rename:2805| 0)) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| (+ (* 0 |$cond-alpha-rename:2806|) (+ (* 0 |$cond-alpha-rename:2805|) 0)) |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| (+ (* 0 |$cond-alpha-rename:2806|) (+ (* 0 |$cond-alpha-rename:2805|) 0)) |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807|) )
      (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| 0 |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807| 0 |$cond-alpha-rename:2810| |$cond-alpha-rename:2809| |$cond-alpha-rename:2808| |$cond-alpha-rename:2807|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:74| Int) (|$cond-alpha-rename:2832| Int) (|$cond-alpha-rename:2833| Int) (|$cond-alpha-rename:2834| Int) (|$cond-alpha-rename:2835| Int) (|$cond-alpha-rename:2836| Int) (|$cond-alpha-rename:2837| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:2832| 1) 0)) (not (= |$cond-alpha-rename:2832| 0)) (|compose_1030$unknown:38| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2833|) (+ (* 0 |$cond-alpha-rename:2832|) 0))) (+ (* 0 (- |$cond-alpha-rename:2832| 1)) 0)) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (+ (* 0 (+ (* 0 |$cond-alpha-rename:2833|) (+ (* 0 |$cond-alpha-rename:2832|) 0))) (+ (* 0 (- |$cond-alpha-rename:2832| 1)) 0)) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834|) (|compose_1030$unknown:31| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (+ (* 0 |$cond-alpha-rename:2833|) (+ (* 0 |$cond-alpha-rename:2832|) 0)) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (+ (* 0 |$cond-alpha-rename:2833|) (+ (* 0 |$cond-alpha-rename:2832|) 0)) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834|) )
      (|toChurch_1038$unknown:116| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (+ (* 0 |$cond-alpha-rename:2833|) (+ (* 0 |$cond-alpha-rename:2832|) 0)) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834| (- |$cond-alpha-rename:2832| 1) |$cond-alpha-rename:2837| |$cond-alpha-rename:2836| |$cond-alpha-rename:2835| |$cond-alpha-rename:2834|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1603| Int) (|$cond-alpha-rename:1604| Int) (|$cond-alpha-rename:1605| Int) (|$cond-alpha-rename:1606| Int) (|$cond-alpha-rename:1607| Int) (|$cond-alpha-rename:2859| Int) (|$cond-alpha-rename:2860| Int) (|$cond-alpha-rename:2861| Int) (|$cond-alpha-rename:2862| Int) (|$cond-alpha-rename:2863| Int) (|$cond-alpha-rename:2864| Int) )
    ( and (not (= (- |$cond-alpha-rename:2859| 1) 0)) (not (= |$cond-alpha-rename:2859| 0)) (not (= 0 |$cond-alpha-rename:1603|)) (|compose_1030$unknown:31| |$cond-alpha-rename:1607| |$cond-alpha-rename:1606| |$cond-alpha-rename:1605| |$cond-alpha-rename:1604| |$cond-alpha-rename:1603| |$cond-alpha-rename:2864| |$cond-alpha-rename:2863| |$cond-alpha-rename:2862| |$cond-alpha-rename:2861| (+ (* 0 |$cond-alpha-rename:2860|) (+ (* 0 |$cond-alpha-rename:2859|) 0)) |$cond-alpha-rename:2864| |$cond-alpha-rename:2863| |$cond-alpha-rename:2862| |$cond-alpha-rename:2861| |$cond-alpha-rename:2864| |$cond-alpha-rename:2863| |$cond-alpha-rename:2862| |$cond-alpha-rename:2861| (+ (* 0 |$cond-alpha-rename:2860|) (+ (* 0 |$cond-alpha-rename:2859|) 0)) |$cond-alpha-rename:2864| |$cond-alpha-rename:2863| |$cond-alpha-rename:2862| |$cond-alpha-rename:2861|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:158| Int) (|$cond-alpha-rename:2886| Int) (|$cond-alpha-rename:2887| Int) (|$cond-alpha-rename:2888| Int) (|$cond-alpha-rename:2889| Int) (|$cond-alpha-rename:2890| Int) (|$cond-alpha-rename:2891| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:2886| 1)) (not (= |$cond-alpha-rename:2886| 0)) (|compose_1030$unknown:31| |$V-reftype:158| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888| (+ (* 0 |$cond-alpha-rename:2887|) (+ (* 0 |$cond-alpha-rename:2886|) 0)) |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888| |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888| (+ (* 0 |$cond-alpha-rename:2887|) (+ (* 0 |$cond-alpha-rename:2886|) 0)) |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888|) )
      (|toChurch_1038$unknown:116| |$V-reftype:158| |$V-reftype:158| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888| (+ (* 0 |$cond-alpha-rename:2887|) (+ (* 0 |$cond-alpha-rename:2886|) 0)) |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888| 0 |$cond-alpha-rename:2891| |$cond-alpha-rename:2890| |$cond-alpha-rename:2889| |$cond-alpha-rename:2888|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:166| Int) (|$V-reftype:168| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$alpha-93:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-93:x_1043| 0) )
      (|toChurch_1038$unknown:110| (+ |$V-reftype:172| 1) |$V-reftype:172| |$V-reftype:170| |$V-reftype:168| |$V-reftype:166| |succ_1036| 0 0 0 0 0 0 0 0 0 |$alpha-93:x_1043| 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:205| Int) (|$V-reftype:207| Int) (|$V-reftype:209| Int) (|$V-reftype:211| Int) (|$V-reftype:212| Int) (|$alpha-69:x_DO_NOT_CARE_1403| Int) (|$alpha-70:x_DO_NOT_CARE_1404| Int) (|$alpha-71:x_DO_NOT_CARE_1405| Int) (|$alpha-72:x_DO_NOT_CARE_1406| Int) (|$alpha-73:n_1039| Int) (|$alpha-74:x_DO_NOT_CARE_1399| Int) (|$alpha-75:x_DO_NOT_CARE_1400| Int) (|$alpha-76:x_DO_NOT_CARE_1401| Int) (|$alpha-77:x_DO_NOT_CARE_1402| Int) (|$alpha-78:f_EXPARAM_1119| Int) (|$alpha-79:set_flag_compose_1148| Int) (|$alpha-80:s_compose_f_EXPARAM_1137| Int) (|$alpha-81:s_compose_g_EXPARAM_1139| Int) (|$alpha-82:s_compose_x_1141| Int) (|$alpha-83:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:110| |$V-reftype:212| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |$V-reftype:205| |$alpha-83:f_1040| |$alpha-82:s_compose_x_1141| |$alpha-81:s_compose_g_EXPARAM_1139| |$alpha-80:s_compose_f_EXPARAM_1137| |$alpha-79:set_flag_compose_1148| |$alpha-78:f_EXPARAM_1119| |$alpha-77:x_DO_NOT_CARE_1402| |$alpha-76:x_DO_NOT_CARE_1401| |$alpha-75:x_DO_NOT_CARE_1400| |$alpha-74:x_DO_NOT_CARE_1399| |$alpha-73:n_1039| |$alpha-72:x_DO_NOT_CARE_1406| |$alpha-71:x_DO_NOT_CARE_1405| |$alpha-70:x_DO_NOT_CARE_1404| |$alpha-69:x_DO_NOT_CARE_1403|) (not (= |$alpha-73:n_1039| 0)) )
      (|toChurch_1038$unknown:110| |$V-reftype:212| |$V-reftype:211| |$V-reftype:209| |$V-reftype:207| |$V-reftype:205| |$alpha-83:f_1040| |$alpha-82:s_compose_x_1141| |$alpha-81:s_compose_g_EXPARAM_1139| |$alpha-80:s_compose_f_EXPARAM_1137| |$alpha-79:set_flag_compose_1148| (+ (* 0 |$alpha-78:f_EXPARAM_1119|) (+ (* 0 |$alpha-73:n_1039|) 0)) |$alpha-82:s_compose_x_1141| |$alpha-81:s_compose_g_EXPARAM_1139| |$alpha-80:s_compose_f_EXPARAM_1137| |$alpha-79:set_flag_compose_1148| (- |$alpha-73:n_1039| 1) |$alpha-82:s_compose_x_1141| |$alpha-81:s_compose_g_EXPARAM_1139| |$alpha-80:s_compose_f_EXPARAM_1137| |$alpha-79:set_flag_compose_1148|)
    )
  )
)
(check-sat)

(get-model)

