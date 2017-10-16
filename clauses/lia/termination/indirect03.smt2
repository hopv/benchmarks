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
  
     let main r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_without_checking_1199 set_flag_f_1191 s_f_x_1188 r
         set_flag_f_1191 s_f_x_1188 ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:48|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:43|
  ( Int ) Bool
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

(declare-fun |f_1036$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:42|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:41|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:34|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:19|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:18|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:98| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$V-reftype:98| |$knormal:13|) true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true (|app_1032$unknown:12| |$knormal:13| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true )
      (|app_1032$unknown:19| |$V-reftype:98| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      (|app_1032$unknown:11| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      (|app_1032$unknown:8| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) )
    (=>
      ( and true true true true (|app_1032$unknown:18| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$V-reftype:60| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:58| Int) (|$V-reftype:60| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true true (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true )
      (|f_1036$unknown:34| |$V-reftype:21| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$V-reftype:60| Int) (|$V-reftype:62| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:67| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true (|f_1036$unknown:35| |$V-reftype:67| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25|) true (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true true (|app_1032$unknown:11| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true )
      (|app_1032$unknown:12| |$V-reftype:67| |$V-reftype:66| |$V-reftype:64| |$V-reftype:62| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) true true true true true (|app_1032$unknown:19| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:58| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true (|app_1032$unknown:8| |$V-reftype:15| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true true )
      (|f_1036$unknown:31| |$V-reftype:15| |$V-reftype:58| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$V-reftype:60| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true (|app_1032$unknown:8| |$V-reftype:60| |$V-reftype:58| |$knormal:25| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:95| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:95| |$knormal:2|) (|bot$unknown:21| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:21| |$V-reftype:95| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:34| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:65| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:34| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:20| |$knormal:19|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) (|f_without_checking_1199| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) true true true true true )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:80| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:43| Int) (|f_without_checking_1199| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) (|f_without_checking_1199$unknown:42| |$V-reftype:80| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) true true true (|f_1036$unknown:27| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) true true true true true )
      (|f_1036$unknown:28| |$V-reftype:80| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) (|f_1036$unknown:34| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:65| Int) (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) (|f_1036$unknown:34| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      (|f_1036$unknown:27| |$V-reftype:65| |$V-reftype:50| |$V-reftype:48| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) true true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) true (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:21| 1) (= |$knormal:19| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|fail$unknown:44| |$knormal:22| |$knormal:21|) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1190|)) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      (|fail$unknown:43| |$knormal:21|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:prev_set_flag_f_1190| Int) (|$alpha-20:s_prev_f_x_1189| Int) (|$alpha-21:x_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1190|))) (|f_1036$unknown:31| |$alpha-21:x_1037| |$alpha-20:s_prev_f_x_1189| |$alpha-19:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:78| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) (|f_without_checking_1199$unknown:41| |$V-reftype:78| |$V-reftype:34| |$V-reftype:32| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) true true true true true )
      (|app_1032$unknown:18| |$V-reftype:78| |$V-reftype:34| |$V-reftype:32| |$knormal:43| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191| |$knormal:29| |$alpha-26:x_1037| |$alpha-29:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:23|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:23|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:23|))) (|f_without_checking_1199$unknown:41| |$V-reftype:78| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$V-reftype:90| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:23|))) (|id_1030$unknown:48| |$V-reftype:90| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85|) (|f_without_checking_1199$unknown:41| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) true true true true true )
      (|f_without_checking_1199$unknown:42| |$V-reftype:90| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:x_1037| Int) (|$alpha-27:c1_COEFFICIENT_1085| Int) (|$alpha-28:c0_COEFFICIENT_1084| Int) (|$alpha-29:set_flag_f_1191| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (- |$alpha-26:x_1037| 1)) (= |$knormal:29| (+ |$knormal:24| |$alpha-27:c1_COEFFICIENT_1085|)) (= |$knormal:24| (* |$alpha-28:c0_COEFFICIENT_1084| |$alpha-26:x_1037|)) (= (not (= 0 |$knormal:23|)) (> |$alpha-26:x_1037| 0)) (= |$alpha-29:set_flag_f_1191| 1) (= |$alpha-28:c0_COEFFICIENT_1084| 0) (= |$alpha-27:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:23|)) true true true )
      true
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
  (forall ( (|$V-reftype:97| Int) (|$alpha-3:set_flag_f_1191| Int) (|$alpha-4:s_f_x_1188| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:97| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:48| |$V-reftype:97| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:r| Int) (|$alpha-32:set_flag_f_1191| Int) (|$alpha-33:s_f_x_1188| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= |$alpha-33:s_f_x_1188| 0) (= |$alpha-32:set_flag_f_1191| 0) )
      (|f_without_checking_1199$unknown:41| |$knormal:55| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191| |$alpha-31:r| |$alpha-33:s_f_x_1188| |$alpha-32:set_flag_f_1191|)
    )
  )
)
(check-sat)

(get-model)

(exit)

