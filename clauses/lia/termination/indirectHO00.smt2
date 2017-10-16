(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
  
     let id_without_checking_1121 set_flag_id_1095 x_1031 =
       let set_flag_id_1095 = true
       in
         x_1031
  
     let rec id_1030 prev_set_flag_id_1094 x_1031 =
       let u =if prev_set_flag_id_1094 then
                let u_1229 = fail ()
                in
                  bot()
              else () in
              id_without_checking_1121 prev_set_flag_id_1094 x_1031
  
     let app_1032 x_DO_NOT_CARE_1208 h_EXPARAM_1090 x_DO_NOT_CARE_1207 h_1033 set_flag_id_1095 v_1034 =
       h_1033 set_flag_id_1095 () set_flag_id_1095 v_1034
  
     let rec f_1035 x_DO_NOT_CARE_1206 n_1036 set_flag_id_1095 u_1037 =
       if n_1036 > 0 then
         app_1032 set_flag_id_1095
           ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
           set_flag_id_1095 (f_1035 set_flag_id_1095 (n_1036 - 1))
       else
         id_1030
  
     let main r =
       let set_flag_id_1095 = false in
       f_1035 set_flag_id_1095 r set_flag_id_1095 () set_flag_id_1095
         ()
")

(set-logic HORN)

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |id_1030$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |id_without_checking_1121$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-15:v_1034| Int) (|$knormal:11| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$V-reftype:65| |$knormal:17|) true (|app_1032$unknown:8| |$knormal:17| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true true (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true )
      (|app_1032$unknown:11| |$V-reftype:65| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-15:v_1034| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| 1) true true true (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-15:v_1034| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| 1) true true true (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-15:v_1034| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| 1) true true true (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-15:v_1034| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:11| 1) true true true (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) true )
      (|app_1032$unknown:7| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:21| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) (|f_1035$unknown:19| |$V-reftype:20| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) true true true true true (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:20| |$V-reftype:18| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) )
      (|f_1035$unknown:20| |$V-reftype:21| |$V-reftype:20| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true (|app_1032$unknown:7| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) true true true )
      (|f_1035$unknown:19| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) (|f_1035$unknown:20| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|) true true true true (|app_1032$unknown:7| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) true true true )
      (|app_1032$unknown:8| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:55| |$knormal:2|) (|bot$unknown:13| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:13| |$V-reftype:55| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:61| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (= |$V-reftype:61| |$knormal:5|) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (|id_without_checking_1121$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:13| |$knormal:7| |$knormal:6|) )
      (|id_1030$unknown:25| |$V-reftype:61| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:13| |$knormal:7| |$knormal:6|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|bot$unknown:13| |$knormal:7| |$knormal:6|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:35| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) (|f_1035$unknown:19| |$V-reftype:35| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) true true true true true )
      (|app_1032$unknown:10| |$V-reftype:35| |$V-reftype:18| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:18|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Int) (|$V-reftype:42| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:18|))) (|f_1035$unknown:19| |$V-reftype:35| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) true true true true true )
      (|id_1030$unknown:24| |$V-reftype:35| |$V-reftype:42|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$V-reftype:44| Int) (|$V-reftype:45| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-19:u_1037| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:18|))) (|id_1030$unknown:25| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42|) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) true true true true true )
      (|f_1035$unknown:20| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:18|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:18|)) true true true true )
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
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:6| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:6| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true (|fail$unknown:22| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (= |$V-reftype:63| |$knormal:5|) (not (not (= 0 |$alpha-6:prev_set_flag_id_1094|))) (|id_without_checking_1121$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true )
      (|id_1030$unknown:25| |$V-reftype:63| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (not (= 0 |$alpha-6:prev_set_flag_id_1094|)) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true )
      (|fail$unknown:21| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (not (not (= 0 |$alpha-6:prev_set_flag_id_1094|))) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (= |$alpha-9:u| 1) (not (not (= 0 |$alpha-6:prev_set_flag_id_1094|))) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-3:set_flag_id_1095| Int) (|$alpha-4:x_1031| Int) (|$alpha-5:set_flag_id_1095| Int) )
    (=>
      ( and (= |$alpha-5:set_flag_id_1095| 1) (= |$V-reftype:58| |$alpha-4:x_1031|) true true )
      (|id_without_checking_1121$unknown:28| |$V-reftype:58| |$alpha-4:x_1031| |$alpha-3:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:r| Int) (|$alpha-23:set_flag_id_1095| Int) (|$knormal:38| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:38| 1) (= |$alpha-23:set_flag_id_1095| 0) )
      (|f_1035$unknown:19| |$knormal:43| |$alpha-23:set_flag_id_1095| |$knormal:38| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(check-sat)

(get-model)

(exit)

