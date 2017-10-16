(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_f_1187 s_f_n_1182 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 h_EXPARAM_1090 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218 h_1033 set_flag_f_1187 s_f_n_1182 v_1034 =
       h_1033 set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 v_1034
  
     let rec f_1035 f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037 =
       let u  =if prev_set_flag_f_1186 then
                let u_9957 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200
                n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037
  
     let rec f_without_checking_1197 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 n_1036 set_flag_f_1187 s_f_n_1182 u_1037 =
       let set_flag_f_1187 = true
       in
       let s_f_n_1182 = n_1036
       in
         if n_1036 > 0 then
           app_1032 set_flag_f_1187 s_f_n_1182
             ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
             set_flag_f_1187 s_f_n_1182
             (f_1035 f_without_checking_1197 set_flag_f_1187 s_f_n_1182 (n_1036 - 1))
         else
           id_1030
  
     let main r =
       let set_flag_f_1187 = false in
       let s_f_n_1182 = 0 in
       f_without_checking_1197 set_flag_f_1187 s_f_n_1182 r
         set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:54|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:49|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:50|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:34|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:48|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:47|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:37|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:16|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:15|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:111| Int) (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:14| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$V-reftype:111| |$knormal:14|) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true (|app_1032$unknown:12| |$knormal:14| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$knormal:6| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true )
      (|app_1032$unknown:16| |$V-reftype:111| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      (|app_1032$unknown:11| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$knormal:6| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      (|app_1032$unknown:8| |$knormal:6| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true (|app_1032$unknown:15| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true (|app_1032$unknown:8| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true (|app_1032$unknown:8| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true true (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true )
      (|f_1035$unknown:37| |$V-reftype:21| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$knormal:37| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$V-reftype:73| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true (|f_1035$unknown:38| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$knormal:37| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true (|app_1032$unknown:8| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true true (|app_1032$unknown:11| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true )
      (|app_1032$unknown:12| |$V-reftype:73| |$V-reftype:72| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-26:n_1036| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) true true true true true true true true (|app_1032$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) )
      (|f_without_checking_1197$unknown:48| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:64| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true (|app_1032$unknown:8| |$V-reftype:15| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true true )
      (|f_1035$unknown:34| |$V-reftype:15| |$V-reftype:64| |$knormal:39| |$knormal:37| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true (|app_1032$unknown:8| |$V-reftype:66| |$V-reftype:64| |$knormal:39| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:107| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:107| |$knormal:2|) (|bot$unknown:18| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:18| |$V-reftype:107| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:37| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|f_1035$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:71| Int) (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:37| |$V-reftype:71| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      (|f_1035$unknown:27| |$V-reftype:71| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:27| |$knormal:26|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) (|f_without_checking_1197| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true (|f_1035$unknown:27| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|) true true true true true true true true )
      (|f_without_checking_1197$unknown:47| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$V-reftype:91| Int) (|$V-reftype:92| Int) (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) (|f_without_checking_1197| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) (|f_without_checking_1197$unknown:48| |$V-reftype:92| |$V-reftype:91| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|) true true true true true true (|f_1035$unknown:27| |$V-reftype:91| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|) true true true true true true true true )
      (|f_1035$unknown:28| |$V-reftype:92| |$V-reftype:91| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:37| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true (|f_1035$unknown:28| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:71| Int) (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:37| |$V-reftype:71| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      (|f_1035$unknown:27| |$V-reftype:71| |$V-reftype:50| |$V-reftype:48| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) true true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) true (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:28| 1) (= |$knormal:26| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|fail$unknown:50| |$knormal:29| |$knormal:28|) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 1) (not (= 0 |$alpha-19:prev_set_flag_f_1186|)) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      (|fail$unknown:49| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:x_DO_NOT_CARE_1199| Int) (|$alpha-17:x_DO_NOT_CARE_1200| Int) (|$alpha-18:n_1036| Int) (|$alpha-19:prev_set_flag_f_1186| Int) (|$alpha-20:s_prev_f_n_1184| Int) (|$alpha-21:u_1037| Int) (|$alpha-23:u| Int) )
    (=>
      ( and (= |$alpha-23:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_f_1186|))) (|f_1035$unknown:34| |$alpha-21:u_1037| |$alpha-20:s_prev_f_n_1184| |$alpha-19:prev_set_flag_f_1186| |$alpha-18:n_1036| |$alpha-17:x_DO_NOT_CARE_1200| |$alpha-16:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:90| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-26:n_1036| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) (|f_without_checking_1197$unknown:47| |$V-reftype:90| |$V-reftype:28| |$V-reftype:26| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) true true true true true true true true )
      (|app_1032$unknown:15| |$V-reftype:90| |$V-reftype:28| |$V-reftype:26| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187| |$knormal:43| |$alpha-26:n_1036| |$alpha-32:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:30|))) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:30|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:102| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-26:n_1036| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:30|))) (|id_1030$unknown:54| |$V-reftype:102| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97|) (|f_without_checking_1197$unknown:47| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) true true true true true true true true )
      (|f_without_checking_1197$unknown:48| |$V-reftype:102| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:90| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-26:n_1036| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:30|))) (|f_without_checking_1197$unknown:47| |$V-reftype:90| |$V-reftype:99| |$V-reftype:97| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:37| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| (+ |$knormal:31| |$alpha-30:c1_COEFFICIENT_1088|)) (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= |$knormal:31| (* |$alpha-31:c0_COEFFICIENT_1087| |$alpha-26:n_1036|)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-26:n_1036| Int) (|$alpha-30:c1_COEFFICIENT_1088| Int) (|$alpha-31:c0_COEFFICIENT_1087| Int) (|$alpha-32:set_flag_f_1187| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-26:n_1036| 1)) (= (not (= 0 |$knormal:30|)) (> |$alpha-26:n_1036| 0)) (= |$alpha-32:set_flag_f_1187| 1) (= |$alpha-31:c0_COEFFICIENT_1087| 0) (= |$alpha-30:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:30|)) true true true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:49| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-3:set_flag_f_1187| Int) (|$alpha-4:s_f_n_1182| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:109| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:54| |$V-reftype:109| |$alpha-5:x_1031| |$alpha-4:s_f_n_1182| |$alpha-3:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:r| Int) (|$alpha-35:set_flag_f_1187| Int) (|$alpha-36:s_f_n_1182| Int) (|$knormal:62| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| 1) (= |$knormal:62| 1) (= |$alpha-36:s_f_n_1182| 0) (= |$alpha-35:set_flag_f_1187| 0) )
      (|f_without_checking_1197$unknown:47| |$knormal:69| |$alpha-36:s_f_n_1182| |$alpha-35:set_flag_f_1187| |$knormal:62| |$alpha-36:s_f_n_1182| |$alpha-35:set_flag_f_1187| |$alpha-34:r| |$alpha-36:s_f_n_1182| |$alpha-35:set_flag_f_1187|)
    )
  )
)
(check-sat)

(get-model)

(exit)

