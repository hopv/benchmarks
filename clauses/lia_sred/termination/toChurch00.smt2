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

(declare-fun |compose_without_checking_1188$unknown:73|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:116|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_without_checking_1188$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |compose_1030$unknown:31|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:76|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:110|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:32| Int) (|$alpha-41:f_1031| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:721| Int) (|$cond-alpha-rename:722| Int) (|$cond-alpha-rename:723| Int) (|$cond-alpha-rename:724| Int) (|$cond-alpha-rename:725| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:72| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723| (+ (* 0 |$cond-alpha-rename:722|) (+ (* 0 |$cond-alpha-rename:721|) 0)) |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723| (+ (* 0 |$cond-alpha-rename:722|) (+ (* 0 |$cond-alpha-rename:721|) 0)) |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723|) (|fail$unknown:76| |$knormal:74| 1) (|toChurch_1038$unknown:110| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (not (= |$cond-alpha-rename:87| 0)) (not (= (- |$cond-alpha-rename:721| 1) 0)) (not (= |$cond-alpha-rename:721| 0)) (= (+ (* 0 |$cond-alpha-rename:92|) (+ (* 0 |$cond-alpha-rename:87|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:722|) (+ (* 0 |$cond-alpha-rename:721|) 0))) (+ (* 0 (- |$cond-alpha-rename:721| 1)) 0))) )
      (|compose_without_checking_1188$unknown:53| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723| (+ (* 0 |$cond-alpha-rename:92|) (+ (* 0 |$cond-alpha-rename:87|) 0)) |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724| |$cond-alpha-rename:723|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:630| Int) (|$cond-alpha-rename:631| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:634| Int) (|$cond-alpha-rename:748| Int) (|$cond-alpha-rename:749| Int) (|$cond-alpha-rename:750| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:753| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:72| 1) (|compose_1030$unknown:31| |$cond-alpha-rename:634| |$cond-alpha-rename:634| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) 1 |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:749|) (+ (* 0 |$cond-alpha-rename:748|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:749|) (+ (* 0 |$cond-alpha-rename:748|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:634| |$cond-alpha-rename:633| |$cond-alpha-rename:632| |$cond-alpha-rename:631| |$cond-alpha-rename:630| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (|fail$unknown:76| |$knormal:74| 1) (|toChurch_1038$unknown:116| |$V-reftype:62| |$cond-alpha-rename:634| |$cond-alpha-rename:634| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) 1 |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (- |$cond-alpha-rename:155| 1) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (not (= |$cond-alpha-rename:155| 0)) (not (= (- |$cond-alpha-rename:748| 1) 0)) (not (= |$cond-alpha-rename:748| 0)) (= (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:749|) (+ (* 0 |$cond-alpha-rename:748|) 0))) (+ (* 0 (- |$cond-alpha-rename:748| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:749|) (+ (* 0 |$cond-alpha-rename:748|) 0))) (+ (* 0 (- |$cond-alpha-rename:748| 1)) 0))) )
      (|compose_without_checking_1188$unknown:68| |$V-reftype:62| |$cond-alpha-rename:634| |$cond-alpha-rename:634| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) 1 |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750| (+ (* 0 |$cond-alpha-rename:156|) (+ (* 0 |$cond-alpha-rename:155|) 0)) |$cond-alpha-rename:753| |$cond-alpha-rename:752| |$cond-alpha-rename:751| |$cond-alpha-rename:750|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:638| Int) (|$cond-alpha-rename:639| Int) (|$cond-alpha-rename:640| Int) (|$cond-alpha-rename:641| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:776| Int) (|$cond-alpha-rename:777| Int) (|$cond-alpha-rename:778| Int) (|$cond-alpha-rename:779| Int) (|$cond-alpha-rename:780| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:72| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777|) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:641| |$cond-alpha-rename:640| |$cond-alpha-rename:639| |$cond-alpha-rename:638| |$cond-alpha-rename:637| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777|) (|fail$unknown:76| |$knormal:74| 1) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (not (= (- |$cond-alpha-rename:775| 1) 0)) (not (= |$cond-alpha-rename:775| 0)) )
      (|compose_1030$unknown:31| |$cond-alpha-rename:641| |$cond-alpha-rename:641| (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) 1 |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777| (+ (* 0 (+ (* 0 |$cond-alpha-rename:776|) (+ (* 0 |$cond-alpha-rename:775|) 0))) (+ (* 0 (- |$cond-alpha-rename:775| 1)) 0)) |$cond-alpha-rename:780| |$cond-alpha-rename:779| |$cond-alpha-rename:778| |$cond-alpha-rename:777|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:802| Int) (|$cond-alpha-rename:803| Int) (|$cond-alpha-rename:804| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:807| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:72| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804|) (|compose_without_checking_1188$unknown:53| |$cond-alpha-rename:659| |$cond-alpha-rename:658| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) 1 |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804|) (|compose_without_checking_1188$unknown:68| |$cond-alpha-rename:658| |$alpha-56:x_1033| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) 1 |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804|) (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804|) (|fail$unknown:76| |$knormal:74| 1) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (not (= (- |$cond-alpha-rename:802| 1) 0)) (not (= |$cond-alpha-rename:802| 0)) )
      (|compose_1030$unknown:38| |$cond-alpha-rename:659| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804| (+ (* 0 (+ (* 0 |$cond-alpha-rename:803|) (+ (* 0 |$cond-alpha-rename:802|) 0))) (+ (* 0 (- |$cond-alpha-rename:802| 1)) 0)) |$cond-alpha-rename:807| |$cond-alpha-rename:806| |$cond-alpha-rename:805| |$cond-alpha-rename:804|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:829| Int) (|$cond-alpha-rename:830| Int) (|$cond-alpha-rename:831| Int) (|$cond-alpha-rename:832| Int) (|$cond-alpha-rename:833| Int) (|$cond-alpha-rename:834| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:72| 1) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| (+ (* 0 |$cond-alpha-rename:830|) (+ (* 0 |$cond-alpha-rename:829|) 0)) |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| (+ (* 0 |$cond-alpha-rename:830|) (+ (* 0 |$cond-alpha-rename:829|) 0)) |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831|) (|fail$unknown:76| |$knormal:74| 1) (not (= 0 |$alpha-52:prev_set_flag_compose_1147|)) (not (= (- |$cond-alpha-rename:829| 1) 0)) (not (= |$cond-alpha-rename:829| 0)) )
      (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| (+ (* 0 (+ (* 0 |$cond-alpha-rename:830|) (+ (* 0 |$cond-alpha-rename:829|) 0))) (+ (* 0 (- |$cond-alpha-rename:829| 1)) 0)) |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831| (+ (* 0 (+ (* 0 |$cond-alpha-rename:830|) (+ (* 0 |$cond-alpha-rename:829|) 0))) (+ (* 0 (- |$cond-alpha-rename:829| 1)) 0)) |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832| |$cond-alpha-rename:831|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:31| Int) (|$V-reftype:32| Int) (|$alpha-41:f_1031| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:856| Int) (|$cond-alpha-rename:857| Int) (|$cond-alpha-rename:858| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:861| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| (+ (* 0 |$cond-alpha-rename:857|) (+ (* 0 |$cond-alpha-rename:856|) 0)) |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| (+ (* 0 |$cond-alpha-rename:857|) (+ (* 0 |$cond-alpha-rename:856|) 0)) |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858|) (|toChurch_1038$unknown:110| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| |$cond-alpha-rename:128| |$cond-alpha-rename:127| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119|) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (not (= |$cond-alpha-rename:123| 0)) (not (= (- |$cond-alpha-rename:856| 1) 0)) (not (= |$cond-alpha-rename:856| 0)) (= (+ (* 0 |$cond-alpha-rename:128|) (+ (* 0 |$cond-alpha-rename:123|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:857|) (+ (* 0 |$cond-alpha-rename:856|) 0))) (+ (* 0 (- |$cond-alpha-rename:856| 1)) 0))) )
      (|compose_without_checking_1188$unknown:53| |$V-reftype:32| |$V-reftype:31| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-41:f_1031| |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858| (+ (* 0 |$cond-alpha-rename:128|) (+ (* 0 |$cond-alpha-rename:123|) 0)) |$cond-alpha-rename:861| |$cond-alpha-rename:860| |$cond-alpha-rename:859| |$cond-alpha-rename:858|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:647| Int) (|$cond-alpha-rename:648| Int) (|$cond-alpha-rename:883| Int) (|$cond-alpha-rename:884| Int) (|$cond-alpha-rename:885| Int) (|$cond-alpha-rename:886| Int) (|$cond-alpha-rename:887| Int) (|$cond-alpha-rename:888| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$cond-alpha-rename:648| |$cond-alpha-rename:648| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) 1 |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885|) (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:884|) (+ (* 0 |$cond-alpha-rename:883|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:884|) (+ (* 0 |$cond-alpha-rename:883|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885|) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:648| |$cond-alpha-rename:647| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:644| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885|) (|toChurch_1038$unknown:116| |$V-reftype:62| |$cond-alpha-rename:648| |$cond-alpha-rename:648| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) 1 |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (- |$cond-alpha-rename:182| 1) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885|) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (not (= |$cond-alpha-rename:182| 0)) (not (= (- |$cond-alpha-rename:883| 1) 0)) (not (= |$cond-alpha-rename:883| 0)) (= (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:884|) (+ (* 0 |$cond-alpha-rename:883|) 0))) (+ (* 0 (- |$cond-alpha-rename:883| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:884|) (+ (* 0 |$cond-alpha-rename:883|) 0))) (+ (* 0 (- |$cond-alpha-rename:883| 1)) 0))) )
      (|compose_without_checking_1188$unknown:68| |$V-reftype:62| |$cond-alpha-rename:648| |$cond-alpha-rename:648| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) 1 |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| (+ (* 0 |$cond-alpha-rename:183|) (+ (* 0 |$cond-alpha-rename:182|) 0)) |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:910| Int) (|$cond-alpha-rename:911| Int) (|$cond-alpha-rename:912| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912|) (|compose_without_checking_1188$unknown:73| |$cond-alpha-rename:655| |$cond-alpha-rename:654| |$cond-alpha-rename:653| |$cond-alpha-rename:652| |$cond-alpha-rename:651| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912|) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (not (= (- |$cond-alpha-rename:910| 1) 0)) (not (= |$cond-alpha-rename:910| 0)) )
      (|compose_1030$unknown:31| |$cond-alpha-rename:655| |$cond-alpha-rename:655| (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) 1 |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912| (+ (* 0 (+ (* 0 |$cond-alpha-rename:911|) (+ (* 0 |$cond-alpha-rename:910|) 0))) (+ (* 0 (- |$cond-alpha-rename:910| 1)) 0)) |$cond-alpha-rename:915| |$cond-alpha-rename:914| |$cond-alpha-rename:913| |$cond-alpha-rename:912|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:937| Int) (|$cond-alpha-rename:938| Int) (|$cond-alpha-rename:939| Int) (|$cond-alpha-rename:940| Int) (|$cond-alpha-rename:941| Int) (|$cond-alpha-rename:942| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939|) (|compose_without_checking_1188$unknown:53| |$cond-alpha-rename:662| |$cond-alpha-rename:661| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) 1 |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939|) (|compose_without_checking_1188$unknown:68| |$cond-alpha-rename:661| |$alpha-56:x_1033| |$alpha-56:x_1033| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) 1 |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939|) (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939|) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (not (= (- |$cond-alpha-rename:937| 1) 0)) (not (= |$cond-alpha-rename:937| 0)) )
      (|compose_1030$unknown:38| |$cond-alpha-rename:662| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| (+ (* 0 (+ (* 0 |$cond-alpha-rename:938|) (+ (* 0 |$cond-alpha-rename:937|) 0))) (+ (* 0 (- |$cond-alpha-rename:937| 1)) 0)) |$cond-alpha-rename:942| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939|)
    )
  )
)
(assert
  (forall ( (|$alpha-52:prev_set_flag_compose_1147| Int) (|$alpha-53:s_prev_compose_f_EXPARAM_1142| Int) (|$alpha-54:s_prev_compose_g_EXPARAM_1144| Int) (|$alpha-55:s_prev_compose_x_1146| Int) (|$alpha-56:x_1033| Int) (|$cond-alpha-rename:964| Int) (|$cond-alpha-rename:965| Int) (|$cond-alpha-rename:966| Int) (|$cond-alpha-rename:967| Int) (|$cond-alpha-rename:968| Int) (|$cond-alpha-rename:969| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| (+ (* 0 |$cond-alpha-rename:965|) (+ (* 0 |$cond-alpha-rename:964|) 0)) |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| (+ (* 0 |$cond-alpha-rename:965|) (+ (* 0 |$cond-alpha-rename:964|) 0)) |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966|) (not (not (= 0 |$alpha-52:prev_set_flag_compose_1147|))) (not (= (- |$cond-alpha-rename:964| 1) 0)) (not (= |$cond-alpha-rename:964| 0)) )
      (|compose_without_checking_1188$unknown:73| |$alpha-56:x_1033| |$alpha-55:s_prev_compose_x_1146| |$alpha-54:s_prev_compose_g_EXPARAM_1144| |$alpha-53:s_prev_compose_f_EXPARAM_1142| |$alpha-52:prev_set_flag_compose_1147| |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| (+ (* 0 (+ (* 0 |$cond-alpha-rename:965|) (+ (* 0 |$cond-alpha-rename:964|) 0))) (+ (* 0 (- |$cond-alpha-rename:964| 1)) 0)) |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966| (+ (* 0 (+ (* 0 |$cond-alpha-rename:965|) (+ (* 0 |$cond-alpha-rename:964|) 0))) (+ (* 0 (- |$cond-alpha-rename:964| 1)) 0)) |$cond-alpha-rename:969| |$cond-alpha-rename:968| |$cond-alpha-rename:967| |$cond-alpha-rename:966|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:74| Int) (|$cond-alpha-rename:991| Int) (|$cond-alpha-rename:992| Int) (|$cond-alpha-rename:993| Int) (|$cond-alpha-rename:994| Int) (|$cond-alpha-rename:995| Int) (|$cond-alpha-rename:996| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (+ (* 0 |$cond-alpha-rename:992|) (+ (* 0 |$cond-alpha-rename:991|) 0)) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (+ (* 0 |$cond-alpha-rename:992|) (+ (* 0 |$cond-alpha-rename:991|) 0)) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993|) (|compose_1030$unknown:38| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (+ (* 0 (+ (* 0 |$cond-alpha-rename:992|) (+ (* 0 |$cond-alpha-rename:991|) 0))) (+ (* 0 (- |$cond-alpha-rename:991| 1)) 0)) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (+ (* 0 (+ (* 0 |$cond-alpha-rename:992|) (+ (* 0 |$cond-alpha-rename:991|) 0))) (+ (* 0 (- |$cond-alpha-rename:991| 1)) 0)) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993|) (not (= |$cond-alpha-rename:991| 0)) (not (= (- |$cond-alpha-rename:991| 1) 0)) )
      (|toChurch_1038$unknown:116| |$V-reftype:74| |$V-reftype:73| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (+ (* 0 |$cond-alpha-rename:992|) (+ (* 0 |$cond-alpha-rename:991|) 0)) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993| (- |$cond-alpha-rename:991| 1) |$cond-alpha-rename:996| |$cond-alpha-rename:995| |$cond-alpha-rename:994| |$cond-alpha-rename:993|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1018| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1020| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:681| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) )
    ( and (|compose_1030$unknown:31| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682| |$cond-alpha-rename:681| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020| (+ (* 0 |$cond-alpha-rename:1019|) (+ (* 0 |$cond-alpha-rename:1018|) 0)) |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020| (+ (* 0 |$cond-alpha-rename:1019|) (+ (* 0 |$cond-alpha-rename:1018|) 0)) |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020|) (not (= 0 |$cond-alpha-rename:681|)) (not (= |$cond-alpha-rename:1018| 0)) (not (= (- |$cond-alpha-rename:1018| 1) 0)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:150| Int) (|$V-reftype:152| Int) (|$V-reftype:154| Int) (|$V-reftype:156| Int) (|$V-reftype:158| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:1046| Int) (|$cond-alpha-rename:1047| Int) (|$cond-alpha-rename:1048| Int) (|$cond-alpha-rename:1049| Int) (|$cond-alpha-rename:1050| Int) )
    (=>
      ( and (|compose_1030$unknown:31| |$V-reftype:158| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| (+ (* 0 |$cond-alpha-rename:1046|) (+ (* 0 |$cond-alpha-rename:1045|) 0)) |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| (+ (* 0 |$cond-alpha-rename:1046|) (+ (* 0 |$cond-alpha-rename:1045|) 0)) |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047|) (= (- |$cond-alpha-rename:1045| 1) 0) (not (= |$cond-alpha-rename:1045| 0)) )
      (|toChurch_1038$unknown:116| |$V-reftype:158| |$V-reftype:158| |$V-reftype:156| |$V-reftype:154| |$V-reftype:152| |$V-reftype:150| |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| (+ (* 0 |$cond-alpha-rename:1046|) (+ (* 0 |$cond-alpha-rename:1045|) 0)) |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047| (- |$cond-alpha-rename:1045| 1) |$cond-alpha-rename:1050| |$cond-alpha-rename:1049| |$cond-alpha-rename:1048| |$cond-alpha-rename:1047|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:166| Int) (|$V-reftype:168| Int) (|$V-reftype:170| Int) (|$V-reftype:172| Int) (|$alpha-93:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-93:x_1043| 0) )
      (|toChurch_1038$unknown:110| (+ |$V-reftype:172| 1) |$V-reftype:172| |$V-reftype:170| |$V-reftype:168| |$V-reftype:166| |succ_1036| 0 0 0 0 (+ (* 0 |$alpha-93:x_1043|) 0) 0 0 0 0 |$alpha-93:x_1043| 0 0 0 0)
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

