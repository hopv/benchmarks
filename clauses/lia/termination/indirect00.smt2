(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_without_checking_1118 set_flag_id_1092 x_1031 =
       let set_flag_id_1092 = true
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1091 x_1031 =
       let u =if prev_set_flag_id_1091 then
                let u_1232 = fail ()
                in
                  bot()
              else () in
               id_without_checking_1118 prev_set_flag_id_1091 x_1031
  
     let app_1032 x_DO_NOT_CARE_1208 h_EXPARAM_1087 x_DO_NOT_CARE_1207 h_1033 x_DO_NOT_CARE_1206 v_1034 set_flag_id_1092 u_1035 =
       h_1033 set_flag_id_1092 v_1034 set_flag_id_1092 u_1035
  
     let rec f_1036 set_flag_id_1092 x_1037 =
       if x_1037 > 0 then
         app_1032 set_flag_id_1092
           ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
           set_flag_id_1092 f_1036 set_flag_id_1092 (x_1037 - 1)
       else
         id_1030
  
     let main r =
       let set_flag_id_1092 = false in
       f_1036 set_flag_id_1092 r set_flag_id_1092 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |id_1030$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |id_without_checking_1118$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:20|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:13|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1087| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:x_DO_NOT_CARE_1206| Int) (|$alpha-15:v_1034| Int) (|$alpha-16:set_flag_id_1092| Int) (|$alpha-17:u_1035| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$V-reftype:64| |$knormal:16|) true (|app_1032$unknown:8| |$knormal:16| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-16:set_flag_id_1092| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true (|app_1032$unknown:12| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true true )
      (|app_1032$unknown:13| |$V-reftype:64| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1087| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:x_DO_NOT_CARE_1206| Int) (|$alpha-15:v_1034| Int) (|$alpha-16:set_flag_id_1092| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and true true true (|app_1032$unknown:12| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1087| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:x_DO_NOT_CARE_1206| Int) (|$alpha-15:v_1034| Int) (|$alpha-16:set_flag_id_1092| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and true true true (|app_1032$unknown:12| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1087| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:x_DO_NOT_CARE_1206| Int) (|$alpha-15:v_1034| Int) (|$alpha-16:set_flag_id_1092| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and true true true (|app_1032$unknown:12| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1087| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:x_DO_NOT_CARE_1206| Int) (|$alpha-15:v_1034| Int) (|$alpha-16:set_flag_id_1092| Int) (|$alpha-17:u_1035| Int) )
    (=>
      ( and true true true (|app_1032$unknown:12| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-14:x_DO_NOT_CARE_1206| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|) true true true )
      (|app_1032$unknown:7| |$alpha-17:u_1035| |$alpha-16:set_flag_id_1092| |$alpha-15:v_1034| |$alpha-16:set_flag_id_1092| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1087| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) (|f_1036$unknown:19| |$V-reftype:24| |$V-reftype:22| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) true true true (|app_1032$unknown:13| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$knormal:29| |$alpha-18:set_flag_id_1092| |$alpha-18:set_flag_id_1092| |$knormal:20| |$alpha-18:set_flag_id_1092|) )
      (|f_1036$unknown:20| |$V-reftype:25| |$V-reftype:24| |$V-reftype:22| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) (|f_1036| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true (|app_1032$unknown:7| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |f_1036| |$alpha-18:set_flag_id_1092| |$knormal:20| |$alpha-18:set_flag_id_1092|) true true true )
      (|f_1036$unknown:19| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |f_1036|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) (|f_1036| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) (|f_1036$unknown:20| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |f_1036|) true true (|app_1032$unknown:7| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |f_1036| |$alpha-18:set_flag_id_1092| |$knormal:20| |$alpha-18:set_flag_id_1092|) true true true )
      (|app_1032$unknown:8| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |f_1036| |$alpha-18:set_flag_id_1092| |$knormal:20| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:55| |$knormal:2|) (|bot$unknown:15| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:15| |$V-reftype:55| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:61| Int) (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (= |$V-reftype:61| |$knormal:5|) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (|id_without_checking_1118$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:15| |$knormal:7| |$knormal:6|) )
      (|id_1030$unknown:25| |$V-reftype:61| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:15| |$knormal:7| |$knormal:6|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:15| |$knormal:7| |$knormal:6|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:35| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) (|f_1036$unknown:19| |$V-reftype:35| |$V-reftype:22| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) true true true )
      (|app_1032$unknown:12| |$V-reftype:35| |$V-reftype:22| |$knormal:29| |$alpha-18:set_flag_id_1092| |$alpha-18:set_flag_id_1092| |$knormal:20| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:17|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Int) (|$V-reftype:42| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:17|))) (|f_1036$unknown:19| |$V-reftype:35| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) true true true )
      (|id_1030$unknown:24| |$V-reftype:35| |$V-reftype:42|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:45| Int) (|$alpha-18:set_flag_id_1092| Int) (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:17|))) (|id_1030$unknown:25| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42|) (|f_1036$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|) true true true )
      (|f_1036$unknown:20| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42| |$alpha-19:x_1037| |$alpha-18:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-19:x_1037| Int) (|$alpha-20:c1_COEFFICIENT_1085| Int) (|$alpha-21:c0_COEFFICIENT_1084| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| (- |$alpha-19:x_1037| 1)) (= |$knormal:20| (+ |$knormal:18| |$alpha-20:c1_COEFFICIENT_1085|)) (= |$knormal:18| (* |$alpha-21:c0_COEFFICIENT_1084| |$alpha-19:x_1037|)) (= (not (= 0 |$knormal:17|)) (> |$alpha-19:x_1037| 0)) (= |$alpha-21:c0_COEFFICIENT_1084| 0) (= |$alpha-20:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:17|)) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:21| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (= |$V-reftype:63| |$knormal:5|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1091|))) (|id_without_checking_1118$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true )
      (|id_1030$unknown:25| |$V-reftype:63| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1091|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true )
      (|fail$unknown:21| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (not (not (= 0 |$alpha-6:prev_set_flag_id_1091|))) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1091| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (not (not (= 0 |$alpha-6:prev_set_flag_id_1091|))) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1091|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-3:set_flag_id_1092| Int) (|$alpha-4:x_1031| Int) (|$alpha-5:set_flag_id_1092| Int) )
    (=>
      ( and (= |$alpha-5:set_flag_id_1092| 1) (= |$V-reftype:58| |$alpha-4:x_1031|) true true )
      (|id_without_checking_1118$unknown:28| |$V-reftype:58| |$alpha-4:x_1031| |$alpha-3:set_flag_id_1092|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1092| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$alpha-23:set_flag_id_1092| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1092| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$alpha-23:set_flag_id_1092| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1092| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$alpha-23:set_flag_id_1092| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:r| Int) (|$alpha-23:set_flag_id_1092| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$alpha-23:set_flag_id_1092| 0) )
      (|f_1036$unknown:19| |$knormal:37| |$alpha-23:set_flag_id_1092| |$alpha-22:r| |$alpha-23:set_flag_id_1092|)
    )
  )
)
(check-sat)

(get-model)

(exit)

