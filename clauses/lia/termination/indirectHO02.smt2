(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_f_1187 s_f_n_1182 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 h_EXPARAM_1090 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218 h_1033 set_flag_f_1187 s_f_n_1182 v_1034 =
       h_1033 set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 v_1034
  
     let rec f_without_checking_1197 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 n_1036 set_flag_f_1187 s_f_n_1182 u_1037 =
       let set_flag_f_1187 = true
       in
       let s_f_n_1182 = n_1036
       in
         if n_1036 > 0 then
           app_1032 set_flag_f_1187 s_f_n_1182
             ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
             set_flag_f_1187 s_f_n_1182
             (f_without_checking_1197 set_flag_f_1187 s_f_n_1182 (n_1036 - 1))
         else
           id_1030
  
     let rec f_1035 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037 =
       let u  =if prev_set_flag_f_1186 then
                let u_8614 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200
                n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037
  
     let main r =
       let set_flag_f_1187 = false in
       let s_f_n_1182 = 0 in
       f_1035 set_flag_f_1187 s_f_n_1182 r set_flag_f_1187 s_f_n_1182
         () set_flag_f_1187 s_f_n_1182 ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:44|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:39|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:24|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:16|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:91| Int) (|$alpha-10:x_DO_NOT_CARE_1218| Int) (|$alpha-12:set_flag_f_1187| Int) (|$alpha-13:s_f_n_1182| Int) (|$alpha-14:v_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1219| Int) (|$alpha-7:x_DO_NOT_CARE_1220| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1217| Int) (|$knormal:14| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$V-reftype:91| |$knormal:14|) true true true true true true true (|app_1032$unknown:12| |$knormal:14| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$knormal:6| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|) true )
      (|app_1032$unknown:16| |$V-reftype:91| |$alpha-14:v_1034| |$alpha-13:s_f_n_1182| |$alpha-12:set_flag_f_1187| |$alpha-10:x_DO_NOT_CARE_1218| |$alpha-9:x_DO_NOT_CARE_1217| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1220| |$alpha-6:x_DO_NOT_CARE_1219|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) (|f_without_checking_1197$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$V-reftype:63| |$knormal:22| |$knormal:20| |$alpha-17:n_1036| |$alpha-23:set_flag_f_1187|) true true true true true true true true true true true true )
      (|app_1032$unknown:12| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$V-reftype:65| |$V-reftype:63| |$knormal:22| |$alpha-17:n_1036| |$alpha-23:set_flag_f_1187| |$knormal:26| |$alpha-17:n_1036| |$alpha-23:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-15:x_DO_NOT_CARE_1215| Int) (|$alpha-16:x_DO_NOT_CARE_1216| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_f_1187| Int) (|$alpha-19:s_f_n_1182| Int) (|$alpha-20:u_1037| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true (|app_1032$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-17:n_1036| |$alpha-23:set_flag_f_1187| |$knormal:26| |$alpha-17:n_1036| |$alpha-23:set_flag_f_1187|) )
      (|f_without_checking_1197$unknown:38| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-20:u_1037| |$alpha-19:s_f_n_1182| |$alpha-18:set_flag_f_1187| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1216| |$alpha-15:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:87| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:87| |$knormal:2|) (|bot$unknown:18| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:18| |$V-reftype:87| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) true true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_without_checking_1197$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      (|f_1035$unknown:28| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true (|bot$unknown:18| |$knormal:48| |$knormal:47|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) true true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$V-reftype:69| Int) (|$V-reftype:71| Int) (|$V-reftype:72| Int) (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_without_checking_1197$unknown:38| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      (|f_1035$unknown:28| |$V-reftype:72| |$V-reftype:71| |$V-reftype:69| |$V-reftype:67| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:49| 1) (= |$knormal:47| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|fail$unknown:40| |$knormal:50| |$knormal:49|) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| 1) (not (= 0 |$alpha-28:prev_set_flag_f_1186|)) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      (|fail$unknown:39| |$knormal:49|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:x_DO_NOT_CARE_1199| Int) (|$alpha-26:x_DO_NOT_CARE_1200| Int) (|$alpha-27:n_1036| Int) (|$alpha-28:prev_set_flag_f_1186| Int) (|$alpha-29:s_prev_f_n_1184| Int) (|$alpha-30:u_1037| Int) (|$alpha-32:u| Int) )
    (=>
      ( and (= |$alpha-32:u| 1) (not (not (= 0 |$alpha-28:prev_set_flag_f_1186|))) (|f_1035$unknown:24| |$alpha-30:u_1037| |$alpha-29:s_prev_f_n_1184| |$alpha-28:prev_set_flag_f_1186| |$alpha-27:n_1036| |$alpha-26:x_DO_NOT_CARE_1200| |$alpha-25:x_DO_NOT_CARE_1199|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:15|))) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:15|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:15|))) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:82| Int) (|$alpha-15:x_DO_NOT_CARE_1215| Int) (|$alpha-16:x_DO_NOT_CARE_1216| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:set_flag_f_1187| Int) (|$alpha-19:s_f_n_1182| Int) (|$alpha-20:u_1037| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:15|))) (|id_1030$unknown:44| |$V-reftype:82| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77|) true true true true true true true true true )
      (|f_without_checking_1197$unknown:38| |$V-reftype:82| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$alpha-20:u_1037| |$alpha-19:s_f_n_1182| |$alpha-18:set_flag_f_1187| |$alpha-17:n_1036| |$alpha-16:x_DO_NOT_CARE_1216| |$alpha-15:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:20| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:26| (+ |$knormal:16| |$alpha-21:c1_COEFFICIENT_1088|)) (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= |$knormal:16| (* |$alpha-22:c0_COEFFICIENT_1087| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-21:c1_COEFFICIENT_1088| Int) (|$alpha-22:c0_COEFFICIENT_1087| Int) (|$alpha-23:set_flag_f_1187| Int) (|$knormal:15| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:20| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:15|)) (> |$alpha-17:n_1036| 0)) (= |$alpha-23:set_flag_f_1187| 1) (= |$alpha-22:c0_COEFFICIENT_1087| 0) (= |$alpha-21:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:15|)) true true true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:39| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:89| Int) (|$alpha-3:set_flag_f_1187| Int) (|$alpha-4:s_f_n_1182| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:89| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:44| |$V-reftype:89| |$alpha-5:x_1031| |$alpha-4:s_f_n_1182| |$alpha-3:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-33:r| Int) (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      (|f_1035$unknown:24| |$knormal:60| |$alpha-35:s_f_n_1182| |$alpha-34:set_flag_f_1187| |$alpha-33:r| |$alpha-35:s_f_n_1182| |$alpha-34:set_flag_f_1187|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-34:set_flag_f_1187| Int) (|$alpha-35:s_f_n_1182| Int) (|$knormal:60| Int) (|$knormal:67| Int) )
    (=>
      ( and (= |$knormal:67| 1) (= |$knormal:60| 1) (= |$alpha-35:s_f_n_1182| 0) (= |$alpha-34:set_flag_f_1187| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

