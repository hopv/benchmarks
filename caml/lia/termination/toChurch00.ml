
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

   let main x_1043 =
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
