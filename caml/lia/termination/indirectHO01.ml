
let rec bot _ = bot ()
let fail _ = assert false

   let rec c1_COEFFICIENT_1088 = 0
   let rec c0_COEFFICIENT_1087 = 0
   let id_1030 set_flag_app_1138 s_app_h_EXPARAM_1131 x_1031 = x_1031

   let app_without_checking_1158 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 h_EXPARAM_1090 x_DO_NOT_CARE_1211 x_DO_NOT_CARE_1212 h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 v_1034 =
     let set_flag_app_1138 = true
     in
     let s_app_h_EXPARAM_1131 = h_EXPARAM_1090
     in
       h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
         s_app_h_EXPARAM_1131 v_1034

   let rec app_1032 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163 h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033 prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034 =
     let u = if prev_set_flag_app_1137 then
              if (7 * 1) + (1 * s_prev_app_h_EXPARAM_1134) >
                 (7 * 1) + (1 * h_EXPARAM_1090) &&
                 (7 * 1) + (1 * h_EXPARAM_1090) >= 0 then
                ()
              else
                let u_4585 = fail ()
                in
                  bot()
             else () in
            app_without_checking_1158 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163
              h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033
              prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034

   let rec f_1035 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 n_1036 set_flag_app_1138 s_app_h_EXPARAM_1131 u_1037 =
     if n_1036 > 0 then
       app_1032 set_flag_app_1138 s_app_h_EXPARAM_1131
         ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
         set_flag_app_1138 s_app_h_EXPARAM_1131
         (f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 (n_1036 - 1))
     else
       id_1030

   let main r =
     let set_flag_app_1138 = false in
     let s_app_h_EXPARAM_1131 = 0 in
     f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 0
       set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
       s_app_h_EXPARAM_1131 ()
