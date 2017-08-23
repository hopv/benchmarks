(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
  
     let id_1030 set_flag_f_1191 s_f_x_1188 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 h_EXPARAM_1087 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 h_1033 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 v_1034 set_flag_f_1191 s_f_x_1188 u_1035 =
       h_1033 set_flag_f_1191 s_f_x_1188 v_1034 set_flag_f_1191 s_f_x_1188 u_1035
  
     let rec f_without_checking_1199 set_flag_f_1191 s_f_x_1188 x_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_x_1188 = x_1037
       in
         if x_1037 > 0 then
           app_1032 set_flag_f_1191 s_f_x_1188
             ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
             set_flag_f_1191 s_f_x_1188 f_without_checking_1199 set_flag_f_1191
             s_f_x_1188 (x_1037 - 1)
         else
           id_1030
  
     let rec f_1036 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037 =
       let u = if prev_set_flag_f_1190 then
                let u_10809 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037
  
     let main_1038 r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_1036 set_flag_f_1191 s_f_x_1188 r set_flag_f_1191 s_f_x_1188
       ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:40|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |id_1030$unknown:38|
  ( Int ) Bool
)

(declare-fun |main_1038$unknown:43|
  ( Int Int ) Bool
)

(declare-fun |main_1038$unknown:42|
  ( Int ) Bool
)

(declare-fun |fail$unknown:36|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:28|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:27|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:26|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:25|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:22|
  ( Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:34|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:33|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:29|
  ( Int ) Bool
)

(declare-fun |app_1032$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:6|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:10|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:19|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:5|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |app_1032$unknown:18|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:17|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:16|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:15|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:14|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:13|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-14:v_1034| Int) (|$alpha-16:s_f_x_1188| Int) (|$knormal:13| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-17:u_1035| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$V-reftype:84| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:12| |$knormal:13| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (= |$V-reftype:84| |$knormal:13|) )
      (|app_1032$unknown:19| |$V-reftype:84| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:u_1035| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:10| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_f_1191| Int) (|$alpha-14:v_1034| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:11| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:u_1035| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:6| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_f_1191| Int) (|$alpha-14:v_1034| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:7| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:u_1035| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:8| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_f_1191| Int) (|$alpha-14:v_1034| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) )
      (|app_1032$unknown:9| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-23:set_flag_f_1191| Int) (|f_without_checking_1199| Int) (|$V-reftype:59| Int) (|$V-reftype:19| Int) (|$V-reftype:61| Int) (|$V-reftype:57| Int) (|$alpha-20:x_1037| Int) (|$knormal:19| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:19| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:33| |$V-reftype:19| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-19:s_f_x_1188| Int) (|$V-reftype:21| Int) (|$alpha-23:set_flag_f_1191| Int) (|f_without_checking_1199| Int) (|$V-reftype:59| Int) (|$V-reftype:63| Int) (|$V-reftype:61| Int) (|$V-reftype:57| Int) (|$alpha-20:x_1037| Int) (|$knormal:19| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:34| |$V-reftype:21| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$V-reftype:66| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:19| Int) (|$alpha-20:x_1037| Int) (|$V-reftype:57| Int) (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:59| Int) (|f_without_checking_1199| Int) (|$alpha-23:set_flag_f_1191| Int) (|$V-reftype:65| Int) (|$alpha-19:s_f_x_1188| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:11| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:12| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-19:s_f_x_1188| Int) (|$knormal:19| Int) (|$alpha-20:x_1037| Int) (|$V-reftype:32| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$V-reftype:34| Int) (|$knormal:32| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:19| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:34| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:35| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-23:set_flag_f_1191| Int) (|$V-reftype:11| Int) (|$alpha-20:x_1037| Int) (|$knormal:19| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:6| |$V-reftype:11| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:29| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-19:s_f_x_1188| Int) (|$V-reftype:13| Int) (|$alpha-23:set_flag_f_1191| Int) (|f_without_checking_1199| Int) (|$alpha-20:x_1037| Int) (|$knormal:19| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:13| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:30| |$V-reftype:13| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$V-reftype:15| Int) (|$knormal:19| Int) (|$alpha-20:x_1037| Int) (|f_without_checking_1199| Int) (|$alpha-23:set_flag_f_1191| Int) (|$V-reftype:57| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:15| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:31| |$V-reftype:15| |$V-reftype:57| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-19:s_f_x_1188| Int) (|$V-reftype:17| Int) (|$V-reftype:59| Int) (|$knormal:19| Int) (|$alpha-20:x_1037| Int) (|f_without_checking_1199| Int) (|$alpha-23:set_flag_f_1191| Int) (|$V-reftype:57| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|app_1032$unknown:6| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:17| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|f_without_checking_1199$unknown:32| |$V-reftype:17| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:20| |$alpha-1:$$tmp::1|) (|bot$unknown:21| |$knormal:2| |$knormal:1|) (= |$V-reftype:81| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:21| |$V-reftype:81| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:20| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:20| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$V-reftype:47| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:41| Int) (|$knormal:40| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:42| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:47| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:32| |$V-reftype:47| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$V-reftype:49| Int) (|$V-reftype:61| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:41| Int) (|$knormal:40| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:49| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:33| |$V-reftype:49| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$V-reftype:51| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$knormal:42| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:34| |$V-reftype:51| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$V-reftype:66| Int) (|$V-reftype:65| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:29| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:41| Int) (|$knormal:40| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:42| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:30| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:41| |$knormal:40|) (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|f_without_checking_1199$unknown:31| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:u| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$V-reftype:47| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:47| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:32| |$V-reftype:47| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$V-reftype:61| Int) (|$V-reftype:49| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:49| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:33| |$V-reftype:49| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:u| Int) (|$V-reftype:63| Int) (|$V-reftype:61| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$V-reftype:51| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:34| |$V-reftype:51| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:61| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:25| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Int) (|$knormal:42| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:40| 1) (= |$knormal:42| 1) )
      (|bot$unknown:20| |$knormal:40|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:42| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (not (= |$alpha-25:prev_set_flag_f_1190| 0)) (= |$knormal:42| 1) )
      (|fail$unknown:36| |$knormal:42|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:29| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:u| Int) (|$alpha-27:x_1037| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-25:prev_set_flag_f_1190| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:30| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:23| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) (= |$alpha-25:prev_set_flag_f_1190| 0) (= |$alpha-29:u| 1) )
      (|f_without_checking_1199$unknown:31| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:98| Int) (|$alpha-30:r| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:55| Int) (|$knormal:53| Int) (|$alpha-31:set_flag_f_1191| Int) )
    (=>
      ( and (|f_1036$unknown:28| |$knormal:55| |$knormal:53| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|) (|main_1038$unknown:42| |$alpha-30:r|) (= |$V-reftype:98| |$knormal:55|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|main_1038$unknown:43| |$V-reftype:98| |$alpha-30:r|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$V-reftype:64| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:34| |$V-reftype:64| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:18| |$V-reftype:64| |$V-reftype:34| |$V-reftype:32| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$V-reftype:62| Int) (|$V-reftype:32| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:62| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:17| |$V-reftype:62| |$V-reftype:32| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$V-reftype:60| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:60| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:16| |$V-reftype:60| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$V-reftype:60| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:60| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (not |$knormal:14|) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) )
      (|id_1030$unknown:38| |$V-reftype:60|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$V-reftype:62| Int) (|$V-reftype:71| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:62| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (not |$knormal:14|) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) )
      (|id_1030$unknown:39| |$V-reftype:62| |$V-reftype:71|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$V-reftype:64| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:34| |$V-reftype:64| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (not |$knormal:14|) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) )
      (|id_1030$unknown:40| |$V-reftype:64| |$V-reftype:73| |$V-reftype:71|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$V-reftype:76| Int) (|$V-reftype:75| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:32| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:33| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:34| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|id_1030$unknown:41| |$V-reftype:76| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71|) (not |$knormal:14|) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) )
      (|f_without_checking_1199$unknown:35| |$V-reftype:76| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:1| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:13| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:14| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:15| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:2| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:3| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-23:set_flag_f_1191| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-20:x_1037| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-18:set_flag_f_1191| Int) (|$knormal:14| Bool) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:4| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:15| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$knormal:14| Bool) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:29| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:30| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) (|f_without_checking_1199$unknown:31| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|) |$knormal:14| (= |$alpha-21:c1_COEFFICIENT_1085| 0) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-23:set_flag_f_1191| 1) (= |$knormal:14| (> |$alpha-20:x_1037| 0)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:32| (- |$alpha-20:x_1037| 1)) )
      (|app_1032$unknown:5| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:36| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:x_1031| Int) (|$alpha-4:s_f_x_1188| Int) (|$alpha-3:set_flag_f_1191| Int) (|$V-reftype:83| Int) )
    (=>
      ( and (|id_1030$unknown:38| |$alpha-3:set_flag_f_1191|) (|id_1030$unknown:39| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|) (|id_1030$unknown:40| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|) (= |$V-reftype:83| |$alpha-5:x_1031|) )
      (|id_1030$unknown:41| |$V-reftype:83| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_x_1188| Int) (|$alpha-30:r| Int) (|$alpha-31:set_flag_f_1191| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:22| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$alpha-31:set_flag_f_1191| Int) (|$alpha-30:r| Int) (|$alpha-32:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:23| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_x_1188| Int) (|$alpha-30:r| Int) (|$alpha-31:set_flag_f_1191| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:24| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$alpha-31:set_flag_f_1191| Int) (|$alpha-30:r| Int) (|$alpha-32:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:25| |$alpha-31:set_flag_f_1191| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:s_f_x_1188| Int) (|$alpha-30:r| Int) (|$alpha-31:set_flag_f_1191| Int) (|$knormal:53| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:26| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Int) (|$alpha-31:set_flag_f_1191| Int) (|$alpha-30:r| Int) (|$alpha-32:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:42| |$alpha-30:r|) (= |$alpha-31:set_flag_f_1191| 0) (= |$alpha-32:s_f_x_1188| 0) (= |$knormal:53| 1) )
      (|f_1036$unknown:27| |$knormal:53| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(check-sat)

