
let rec bot _ = bot ()
let fail _ = assert false

   let rec c5_COEFFICIENT_1082 = 0
   let rec c4_COEFFICIENT_1081 = 0
   let rec c3_COEFFICIENT_1080 = 0
   let rec c2_COEFFICIENT_1078 = 0
   let rec c1_COEFFICIENT_1077 = 0
   let rec c0_COEFFICIENT_1076 = 0

   let rec app_without_checking_1193 x_DO_NOT_CARE_1221 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 f_EXPARAM_1084 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034 =
     let set_flag_app_1179 = true
     in
     let s_app_x_1174 = x_1034
     in
     let s_app_f_EXPARAM_1172 = f_EXPARAM_1084
     in
       f_1033 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1034

   let rec app_1030 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195 x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033 prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175 s_prev_app_x_1177 x_1034 =
     let u = if prev_set_flag_app_1178 then
              let u_11787 = fail ()
              in
                bot()
            else
() in
            app_without_checking_1193 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199
              x_DO_NOT_CARE_1200 f_EXPARAM_1084 x_DO_NOT_CARE_1195
              x_DO_NOT_CARE_1196 x_DO_NOT_CARE_1197 f_1033
              prev_set_flag_app_1178 s_prev_app_f_EXPARAM_1175
              s_prev_app_x_1177 x_1034


   let rec down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1035 =
     if x_1035 = 0 then
       ()
     else
       down_1031 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
         (x_1035 - 1)

   let rec up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 x_1036 =
     if x_1036 = 0 then
       ()
     else
       up_1032 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 (x_1036 + 1)

   let main_1037 t1_1039 t2_1040 =
     let set_flag_app_1179 = false in
     let s_app_f_EXPARAM_1172 = 0 in
     let s_app_x_1174  = 0 in
       if t1_1039 > 0 then
         app_1030 set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174
           ((c3_COEFFICIENT_1080 * t2_1040) +
            ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
           set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 down_1031
           set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t1_1039
       else
         if t2_1040 < 0 then
           app_without_checking_1193 set_flag_app_1179 s_app_f_EXPARAM_1172
             s_app_x_1174
             ((c0_COEFFICIENT_1076 * t2_1040) +
              ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 up_1032
             set_flag_app_1179 s_app_f_EXPARAM_1172 s_app_x_1174 t2_1040
         else
           ()
