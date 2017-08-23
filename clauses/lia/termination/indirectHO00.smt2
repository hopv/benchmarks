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
  
     let main_1038 r =
       let set_flag_id_1095 = false in
       f_1035 set_flag_id_1095 r set_flag_id_1095 () set_flag_id_1095
         ()
")

(set-logic HORN)

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |main_1038$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |main_1038$unknown:29|
  ( Int ) Bool
)

(declare-fun |id_without_checking_1121$unknown:27|
  ( Int Int ) Bool
)

(declare-fun |id_without_checking_1121$unknown:26|
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

(declare-fun |id_1030$unknown:23|
  ( Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:12|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:20|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:19|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:18|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:17|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:14|
  ( Int ) Bool
)

(declare-fun |app_1032$unknown:7|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:6|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:5|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:9|
  ( Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |app_1032$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$knormal:17| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-15:v_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-11:h_EXPARAM_1090| Int) (|$knormal:11| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:2| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:3| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:8| |$knormal:17| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:9| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (= |$V-reftype:65| |$knormal:17|) (= |$knormal:11| 1) )
      (|app_1032$unknown:11| |$V-reftype:65| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-15:v_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-11:h_EXPARAM_1090| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:2| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:3| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:9| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (= |$knormal:11| 1) )
      (|app_1032$unknown:4| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-15:v_1034| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$knormal:11| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:2| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:3| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:9| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (= |$knormal:11| 1) )
      (|app_1032$unknown:5| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$alpha-15:v_1034| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-11:h_EXPARAM_1090| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:2| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:3| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:9| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (= |$knormal:11| 1) )
      (|app_1032$unknown:6| |$alpha-14:set_flag_id_1095| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:h_EXPARAM_1090| Int) (|$alpha-14:set_flag_id_1095| Int) (|$alpha-10:x_DO_NOT_CARE_1208| Int) (|$alpha-15:v_1034| Int) (|$alpha-12:x_DO_NOT_CARE_1207| Int) (|$knormal:11| Int) )
    (=>
      ( and (|app_1032$unknown:1| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:10| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:2| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:3| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (|app_1032$unknown:9| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|) (= |$knormal:11| 1) )
      (|app_1032$unknown:7| |$alpha-15:v_1034| |$alpha-14:set_flag_id_1095| |$knormal:11| |$alpha-14:set_flag_id_1095| |$alpha-12:x_DO_NOT_CARE_1207| |$alpha-11:h_EXPARAM_1090| |$alpha-10:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$knormal:25| Int) (|$V-reftype:18| Int) (|$V-reftype:21| Int) (|$V-reftype:20| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) )
    (=>
      ( and (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:20| |$V-reftype:18| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:20| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|f_1035$unknown:20| |$V-reftype:21| |$V-reftype:20| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$V-reftype:7| Int) (|$knormal:25| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) )
    (=>
      ( and (|app_1032$unknown:4| |$V-reftype:7| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|f_1035$unknown:16| |$V-reftype:7| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-17:n_1036| Int) (|$V-reftype:32| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$alpha-18:set_flag_id_1095| Int) (|$V-reftype:11| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) )
    (=>
      ( and (|app_1032$unknown:4| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:5| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:6| |$V-reftype:11| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|f_1035$unknown:18| |$V-reftype:11| |$V-reftype:32| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$V-reftype:32| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$alpha-18:set_flag_id_1095| Int) (|$V-reftype:34| Int) (|$V-reftype:13| Int) (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:19| Int) )
    (=>
      ( and (|app_1032$unknown:4| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:5| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:6| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:7| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|f_1035$unknown:19| |$V-reftype:13| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$knormal:21| Int) (|$alpha-17:n_1036| Int) (|$V-reftype:36| Int) (|$V-reftype:34| Int) (|$alpha-18:set_flag_id_1095| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$V-reftype:32| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$V-reftype:37| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:19| Int) )
    (=>
      ( and (|app_1032$unknown:4| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:5| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:6| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:7| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:20| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:8| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-18:set_flag_id_1095| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$V-reftype:9| Int) (|$alpha-17:n_1036| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:19| Int) )
    (=>
      ( and (|app_1032$unknown:4| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|app_1032$unknown:5| |$V-reftype:9| |$knormal:23| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|) (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|f_1035$unknown:17| |$V-reftype:9| |$knormal:23| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:12| |$alpha-1:$$tmp::1|) (|bot$unknown:13| |$knormal:2| |$knormal:1|) (= |$V-reftype:55| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:13| |$V-reftype:55| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:12| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:12| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$knormal:5| Int) (|$alpha-7:x_1031| Int) (|$knormal:8| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) (|$alpha-6:prev_set_flag_id_1094| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:7| |$knormal:6|) (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (|id_without_checking_1121$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (not (= |$alpha-6:prev_set_flag_id_1094| 0)) (= |$V-reftype:61| |$knormal:5|) (= |$knormal:6| 1) (= |$knormal:8| 1) )
      (|id_1030$unknown:25| |$V-reftype:61| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$knormal:9| Int) (|$knormal:7| Int) (|$knormal:6| Int) (|$knormal:8| Int) (|$alpha-7:x_1031| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:7| |$knormal:6|) (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (not (= |$alpha-6:prev_set_flag_id_1094| 0)) (= |$knormal:6| 1) (= |$knormal:8| 1) )
      (|id_without_checking_1121$unknown:26| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x_1031| Int) (|$knormal:8| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) (|$alpha-6:prev_set_flag_id_1094| Int) )
    (=>
      ( and (|bot$unknown:13| |$knormal:7| |$knormal:6|) (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (not (= |$alpha-6:prev_set_flag_id_1094| 0)) (= |$knormal:6| 1) (= |$knormal:8| 1) )
      (|id_without_checking_1121$unknown:27| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$V-reftype:18| Int) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$V-reftype:35| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:35| |$V-reftype:18| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:10| |$V-reftype:35| |$V-reftype:18| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:21| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$V-reftype:33| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:33| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:9| |$V-reftype:33| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$V-reftype:33| Int) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:33| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (not |$knormal:18|) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) )
      (|id_1030$unknown:23| |$V-reftype:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$V-reftype:35| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$V-reftype:42| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:35| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (not |$knormal:18|) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) )
      (|id_1030$unknown:24| |$V-reftype:35| |$V-reftype:42|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$V-reftype:45| Int) (|$V-reftype:44| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$V-reftype:42| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:18| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:19| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|id_1030$unknown:25| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42|) (not |$knormal:18|) (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) )
      (|f_1035$unknown:20| |$V-reftype:45| |$V-reftype:44| |$V-reftype:42| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:1| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:21| Int) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:19| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:2| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:19| (* |$alpha-21:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) (= |$knormal:25| (+ |$knormal:19| |$alpha-20:c1_COEFFICIENT_1088|)) )
      (|app_1032$unknown:3| |$alpha-18:set_flag_id_1095| |$knormal:25| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-17:n_1036| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-19:u_1037| Int) (|$knormal:18| Bool) (|$alpha-21:c0_COEFFICIENT_1087| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) )
      (|f_1035$unknown:14| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:c0_COEFFICIENT_1087| Int) (|$knormal:18| Bool) (|$alpha-19:u_1037| Int) (|$alpha-16:x_DO_NOT_CARE_1206| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_id_1095| Int) (|$alpha-20:c1_COEFFICIENT_1088| Int) (|$knormal:21| Int) )
    (=>
      ( and (|f_1035$unknown:14| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:15| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:16| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) (|f_1035$unknown:17| |$alpha-19:u_1037| |$alpha-18:set_flag_id_1095| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1206|) |$knormal:18| (= |$alpha-20:c1_COEFFICIENT_1088| 0) (= |$alpha-21:c0_COEFFICIENT_1087| 0) (= |$knormal:18| (> |$alpha-17:n_1036| 0)) (= |$knormal:21| (- |$alpha-17:n_1036| 1)) )
      (|f_1035$unknown:15| |$knormal:21| |$alpha-18:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-23:set_flag_id_1095| Int) (|$knormal:45| Int) (|$knormal:43| Int) (|$knormal:38| Int) (|$alpha-22:r| Int) )
    (=>
      ( and (|f_1035$unknown:20| |$knormal:45| |$knormal:43| |$alpha-23:set_flag_id_1095| |$knormal:38| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|) (|main_1038$unknown:29| |$alpha-22:r|) (= |$V-reftype:75| |$knormal:45|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|main_1038$unknown:30| |$V-reftype:75| |$alpha-22:r|)
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
  (forall ( (|$knormal:6| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$alpha-7:x_1031| Int) )
    (=>
      ( and (|fail$unknown:22| |$knormal:9| |$knormal:8|) (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (not (= |$alpha-6:prev_set_flag_id_1094| 0)) (= |$knormal:6| 1) (= |$knormal:8| 1) )
      (|bot$unknown:12| |$knormal:6|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) (|$knormal:5| Int) (|$V-reftype:63| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (|id_without_checking_1121$unknown:28| |$knormal:5| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (= |$alpha-6:prev_set_flag_id_1094| 0) (= |$V-reftype:63| |$knormal:5|) (= |$alpha-9:u| 1) )
      (|id_1030$unknown:25| |$V-reftype:63| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x_1031| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$knormal:8| Int) )
    (=>
      ( and (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (not (= |$alpha-6:prev_set_flag_id_1094| 0)) (= |$knormal:8| 1) )
      (|fail$unknown:21| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x_1031| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-9:u| Int) )
    (=>
      ( and (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (= |$alpha-6:prev_set_flag_id_1094| 0) (= |$alpha-9:u| 1) )
      (|id_without_checking_1121$unknown:26| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:u| Int) (|$alpha-6:prev_set_flag_id_1094| Int) (|$alpha-7:x_1031| Int) )
    (=>
      ( and (|id_1030$unknown:23| |$alpha-6:prev_set_flag_id_1094|) (|id_1030$unknown:24| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|) (= |$alpha-6:prev_set_flag_id_1094| 0) (= |$alpha-9:u| 1) )
      (|id_without_checking_1121$unknown:27| |$alpha-7:x_1031| |$alpha-6:prev_set_flag_id_1094|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:set_flag_id_1095| Int) (|$alpha-4:x_1031| Int) (|$V-reftype:58| Int) (|$alpha-5:set_flag_id_1095| Int) )
    (=>
      ( and (|id_without_checking_1121$unknown:26| |$alpha-3:set_flag_id_1095|) (|id_without_checking_1121$unknown:27| |$alpha-4:x_1031| |$alpha-3:set_flag_id_1095|) (= |$V-reftype:58| |$alpha-4:x_1031|) (= |$alpha-5:set_flag_id_1095| 1) )
      (|id_without_checking_1121$unknown:28| |$V-reftype:58| |$alpha-4:x_1031| |$alpha-3:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$alpha-22:r| Int) (|$alpha-23:set_flag_id_1095| Int) (|$knormal:43| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:14| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-23:set_flag_id_1095| Int) (|$alpha-22:r| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:15| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$alpha-22:r| Int) (|$alpha-23:set_flag_id_1095| Int) (|$knormal:43| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:16| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-23:set_flag_id_1095| Int) (|$alpha-22:r| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:17| |$knormal:38| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$alpha-22:r| Int) (|$alpha-23:set_flag_id_1095| Int) (|$knormal:43| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:18| |$alpha-23:set_flag_id_1095| |$knormal:38| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$alpha-23:set_flag_id_1095| Int) (|$alpha-22:r| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1038$unknown:29| |$alpha-22:r|) (= |$alpha-23:set_flag_id_1095| 0) (= |$knormal:38| 1) (= |$knormal:43| 1) )
      (|f_1035$unknown:19| |$knormal:43| |$alpha-23:set_flag_id_1095| |$knormal:38| |$alpha-23:set_flag_id_1095| |$alpha-22:r| |$alpha-23:set_flag_id_1095|)
    )
  )
)
(check-sat)

