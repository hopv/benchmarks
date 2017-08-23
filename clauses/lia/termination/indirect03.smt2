(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_f_1191 s_f_x_1188 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 h_EXPARAM_1087 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 h_1033 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 v_1034 set_flag_f_1191 s_f_x_1188 u_1035 =
       h_1033 set_flag_f_1191 s_f_x_1188 v_1034 set_flag_f_1191 s_f_x_1188 u_1035
  
     let rec f_1036 f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037 =
       let u =if prev_set_flag_f_1190 then
                let u_11994 = fail ()
                in
                  bot()
              else () in
              f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037
  
     let rec f_without_checking_1199 set_flag_f_1191 s_f_x_1188 x_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_x_1188 = x_1037
       in
         if x_1037 > 0 then
           app_1032 set_flag_f_1191 s_f_x_1188
             ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
             set_flag_f_1191 s_f_x_1188 (f_1036 f_without_checking_1199) set_flag_f_1191 s_f_x_1188
             (x_1037 - 1)
         else
           id_1030
  
     let main_1038 r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_without_checking_1199 set_flag_f_1191 s_f_x_1188 r
         set_flag_f_1191 s_f_x_1188 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:50|
  ( Int Int ) Bool
)

(declare-fun |main_1038$unknown:49|
  ( Int ) Bool
)

(declare-fun |id_1030$unknown:48|
  ( Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:47|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:46|
  ( Int Int ) Bool
)

(declare-fun |id_1030$unknown:45|
  ( Int ) Bool
)

(declare-fun |fail$unknown:43|
  ( Int ) Bool
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

(declare-fun |f_1036$unknown:25|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:26|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:27|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:44|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:28|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:29|
  ( Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:42|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:41|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:40|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:39|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:34|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:33|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:38|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:36|
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
  (forall ( (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$alpha-14:v_1034| Int) (|$alpha-16:s_f_x_1188| Int) (|$knormal:13| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-17:u_1035| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$V-reftype:98| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:12| |$knormal:13| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:13| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:14| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:16| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:17| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:2| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:3| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:4| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (|app_1032$unknown:5| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) (= |$V-reftype:98| |$knormal:13|) )
      (|app_1032$unknown:19| |$V-reftype:98| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
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
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:25| Int) (|$V-reftype:60| Int) (|$V-reftype:19| Int) (|$V-reftype:62| Int) (|$V-reftype:58| Int) (|$alpha-26:x_1037| Int) (|$knormal:29| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:19| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:33| |$V-reftype:19| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:21| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:25| Int) (|$V-reftype:60| Int) (|$V-reftype:64| Int) (|$V-reftype:62| Int) (|$V-reftype:58| Int) (|$alpha-26:x_1037| Int) (|$knormal:29| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:34| |$V-reftype:21| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:67| Int) (|$knormal:29| Int) (|$alpha-26:x_1037| Int) (|$V-reftype:58| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:60| Int) (|$knormal:25| Int) (|$alpha-29:set_flag_f_1191| Int) (|$V-reftype:66| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|app_1032$unknown:10| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:11| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_1036$unknown:35| |$V-reftype:67| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:12| |$V-reftype:67| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-25:s_f_x_1188| Int) (|$knormal:29| Int) (|$alpha-26:x_1037| Int) (|$V-reftype:32| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$V-reftype:34| Int) (|$knormal:43| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:19| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-29:set_flag_f_1191| Int) (|$V-reftype:11| Int) (|$alpha-26:x_1037| Int) (|$knormal:29| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:6| |$V-reftype:11| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:29| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:13| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:25| Int) (|$alpha-26:x_1037| Int) (|$knormal:29| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:13| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:30| |$V-reftype:13| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:15| Int) (|$knormal:29| Int) (|$alpha-26:x_1037| Int) (|$knormal:25| Int) (|$alpha-29:set_flag_f_1191| Int) (|$V-reftype:58| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) )
    (=>
      ( and (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:15| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:31| |$V-reftype:15| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:17| Int) (|$V-reftype:60| Int) (|$knormal:29| Int) (|$alpha-26:x_1037| Int) (|$knormal:25| Int) (|$alpha-29:set_flag_f_1191| Int) (|$V-reftype:58| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|app_1032$unknown:6| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:7| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|app_1032$unknown:9| |$V-reftype:17| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:32| |$V-reftype:17| |$V-reftype:60| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:20| |$alpha-1:$$tmp::1|) (|bot$unknown:21| |$knormal:2| |$knormal:1|) (= |$V-reftype:95| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:21| |$V-reftype:95| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:21| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$V-reftype:48| Int) (|$V-reftype:52| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$V-reftype:53| Int) (|$V-reftype:50| Int) (|$alpha-21:x_1037| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:34| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$V-reftype:65| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$knormal:21| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:34| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$V-reftype:63| Int) (|$V-reftype:48| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:63| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$V-reftype:61| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:61| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:25| |$V-reftype:61| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:22| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:23| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| |$knormal:19|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|f_1036$unknown:24| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:41| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_1036$unknown:22| |$V-reftype:41|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:36| |$V-reftype:41|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|f_without_checking_1199| Int) (|$V-reftype:43| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:43| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:37| |$V-reftype:43| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|f_without_checking_1199| Int) (|$V-reftype:71| Int) (|$V-reftype:45| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:24| |$V-reftype:45| |$V-reftype:71| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:38| |$V-reftype:45| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:73| Int) (|$V-reftype:71| Int) (|f_without_checking_1199| Int) (|$V-reftype:47| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:24| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:25| |$V-reftype:47| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:39| |$V-reftype:47| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:73| Int) (|$V-reftype:71| Int) (|f_without_checking_1199| Int) (|$V-reftype:75| Int) (|$V-reftype:49| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:24| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:25| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:26| |$V-reftype:49| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:40| |$V-reftype:49| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:77| Int) (|$V-reftype:75| Int) (|f_without_checking_1199| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:51| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:24| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:25| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:26| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$V-reftype:77| Int) (|$V-reftype:75| Int) (|f_without_checking_1199| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:79| Int) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:80| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_1036$unknown:22| |f_without_checking_1199|) (|f_1036$unknown:23| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:24| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:25| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:26| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_1036$unknown:27| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:42| |$V-reftype:80| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|f_1036$unknown:28| |$V-reftype:80| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-21:x_1037| Int) (|$V-reftype:50| Int) (|$V-reftype:53| Int) (|$V-reftype:52| Int) (|$V-reftype:48| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (|f_1036$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:34| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:u| Int) (|$V-reftype:50| Int) (|$V-reftype:48| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$V-reftype:65| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:34| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$V-reftype:48| Int) (|$V-reftype:63| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:33| |$V-reftype:63| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:26| |$V-reftype:63| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:u| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$V-reftype:61| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:32| |$V-reftype:61| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:25| |$V-reftype:61| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$knormal:21| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$knormal:22| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:19| 1) (= |$knormal:21| 1) )
      (|bot$unknown:20| |$knormal:19|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (not (= |$alpha-19:prev_set_flag_f_1190| 0)) (= |$knormal:21| 1) )
      (|fail$unknown:43| |$knormal:21|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:22| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:u| Int) (|$alpha-21:x_1037| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-19:prev_set_flag_f_1190| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:23| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (|f_1036$unknown:29| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:30| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (= |$alpha-19:prev_set_flag_f_1190| 0) (= |$alpha-23:u| 1) )
      (|f_1036$unknown:24| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$V-reftype:78| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:78| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:18| |$V-reftype:78| |$V-reftype:34| |$V-reftype:32| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$V-reftype:76| Int) (|$V-reftype:32| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:76| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:17| |$V-reftype:76| |$V-reftype:32| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$V-reftype:74| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:74| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:16| |$V-reftype:74| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$V-reftype:74| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:74| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (not |$knormal:23|) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) )
      (|id_1030$unknown:45| |$V-reftype:74|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$V-reftype:76| Int) (|$V-reftype:85| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:76| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (not |$knormal:23|) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) )
      (|id_1030$unknown:46| |$V-reftype:76| |$V-reftype:85|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$V-reftype:78| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:78| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (not |$knormal:23|) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) )
      (|id_1030$unknown:47| |$V-reftype:78| |$V-reftype:87| |$V-reftype:85|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$V-reftype:90| Int) (|$V-reftype:89| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:39| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:40| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|id_1030$unknown:48| |$V-reftype:90| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85|) (not |$knormal:23|) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:90| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:1| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:13| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:14| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:15| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:2| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:3| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-29:set_flag_f_1191| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-26:x_1037| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-24:set_flag_f_1191| Int) (|$knormal:23| Bool) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:4| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:24| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$knormal:23| Bool) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:29| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:36| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:37| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:38| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) |$knormal:23| (= |$alpha-27:c1_COEFFICIENT_1085| 0) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-29:set_flag_f_1191| 1) (= |$knormal:23| (> |$alpha-26:x_1037| 0)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:43| (- |$alpha-26:x_1037| 1)) )
      (|app_1032$unknown:5| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:112| Int) (|$alpha-31:r| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:57| Int) (|$knormal:55| Int) (|$alpha-32:set_flag_f_1191| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:42| |$knormal:57| |$knormal:55| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|) (|main_1038$unknown:49| |$alpha-31:r|) (= |$V-reftype:112| |$knormal:57|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|main_1038$unknown:50| |$V-reftype:112| |$alpha-31:r|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:43| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:x_1031| Int) (|$alpha-4:s_f_x_1188| Int) (|$alpha-3:set_flag_f_1191| Int) (|$V-reftype:97| Int) )
    (=>
      ( and (|id_1030$unknown:45| |$alpha-3:set_flag_f_1191|) (|id_1030$unknown:46| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|) (|id_1030$unknown:47| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|) (= |$V-reftype:97| |$alpha-5:x_1031|) )
      (|id_1030$unknown:48| |$V-reftype:97| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:s_f_x_1188| Int) (|$alpha-31:r| Int) (|$alpha-32:set_flag_f_1191| Int) (|$knormal:55| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:36| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-32:set_flag_f_1191| Int) (|$alpha-31:r| Int) (|$alpha-33:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:37| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:s_f_x_1188| Int) (|$alpha-31:r| Int) (|$alpha-32:set_flag_f_1191| Int) (|$knormal:55| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:38| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-32:set_flag_f_1191| Int) (|$alpha-31:r| Int) (|$alpha-33:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:39| |$alpha-32:set_flag_f_1191| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:s_f_x_1188| Int) (|$alpha-31:r| Int) (|$alpha-32:set_flag_f_1191| Int) (|$knormal:55| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:40| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-32:set_flag_f_1191| Int) (|$alpha-31:r| Int) (|$alpha-33:s_f_x_1188| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) (= |$alpha-32:set_flag_f_1191| 0) (= |$alpha-33:s_f_x_1188| 0) (= |$knormal:55| 1) )
      (|f_without_checking_1199$unknown:41| |$knormal:55| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(check-sat)

