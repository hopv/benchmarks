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
  
     let main r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_1036 set_flag_f_1191 s_f_x_1188 r set_flag_f_1191 s_f_x_1188
       ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:36|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:28|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |f_1036$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:19|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:84| Int) (|$alpha-10:x_DO_NOT_CARE_1221| Int) (|$alpha-12:x_DO_NOT_CARE_1218| Int) (|$alpha-13:x_DO_NOT_CARE_1219| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_f_1191| Int) (|$alpha-16:s_f_x_1188| Int) (|$alpha-17:u_1035| Int) (|$alpha-6:x_DO_NOT_CARE_1222| Int) (|$alpha-7:x_DO_NOT_CARE_1223| Int) (|$alpha-8:h_EXPARAM_1087| Int) (|$alpha-9:x_DO_NOT_CARE_1220| Int) (|$knormal:13| Int) )
    (=>
      ( and (= |$V-reftype:84| |$knormal:13|) true true true true true true true true true true (|app_1032$unknown:12| |$knormal:13| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|) true )
      (|app_1032$unknown:19| |$V-reftype:84| |$alpha-17:u_1035| |$alpha-16:s_f_x_1188| |$alpha-15:set_flag_f_1191| |$alpha-14:v_1034| |$alpha-13:x_DO_NOT_CARE_1219| |$alpha-12:x_DO_NOT_CARE_1218| |$alpha-10:x_DO_NOT_CARE_1221| |$alpha-9:x_DO_NOT_CARE_1220| |$alpha-8:h_EXPARAM_1087| |$alpha-7:x_DO_NOT_CARE_1223| |$alpha-6:x_DO_NOT_CARE_1222|)
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$V-reftype:59| Int) (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) (|f_without_checking_1199| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199|) true true true true true true true true true )
      (|app_1032$unknown:12| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$V-reftype:59| |$V-reftype:57| |f_without_checking_1199| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:37| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true (|app_1032$unknown:19| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$knormal:32| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191| |$knormal:19| |$alpha-20:x_1037| |$alpha-23:set_flag_f_1191|) )
      (|f_without_checking_1199$unknown:35| |$V-reftype:37| |$V-reftype:36| |$V-reftype:34| |$V-reftype:32| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:81| |$knormal:2|) (|bot$unknown:21| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:21| |$V-reftype:81| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) true true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true (|bot$unknown:21| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) true true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$V-reftype:66| Int) (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) (|f_without_checking_1199$unknown:35| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true true (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      (|f_1036$unknown:28| |$V-reftype:66| |$V-reftype:65| |$V-reftype:63| |$V-reftype:61| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:40| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|fail$unknown:37| |$knormal:43| |$knormal:42|) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| 1) (not (= 0 |$alpha-25:prev_set_flag_f_1190|)) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      (|fail$unknown:36| |$knormal:42|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:prev_set_flag_f_1190| Int) (|$alpha-26:s_prev_f_x_1189| Int) (|$alpha-27:x_1037| Int) (|$alpha-29:u| Int) )
    (=>
      ( and (= |$alpha-29:u| 1) (not (not (= 0 |$alpha-25:prev_set_flag_f_1190|))) (|f_1036$unknown:24| |$alpha-27:x_1037| |$alpha-26:s_prev_f_x_1189| |$alpha-25:prev_set_flag_f_1190|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:14|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:14|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:14|))) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:76| Int) (|$alpha-18:set_flag_f_1191| Int) (|$alpha-19:s_f_x_1188| Int) (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (not (= 0 |$knormal:14|))) (|id_1030$unknown:41| |$V-reftype:76| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71|) true true true true true true )
      (|f_without_checking_1199$unknown:35| |$V-reftype:76| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |$alpha-20:x_1037| |$alpha-19:s_f_x_1188| |$alpha-18:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-20:x_1037| Int) (|$alpha-21:c1_COEFFICIENT_1085| Int) (|$alpha-22:c0_COEFFICIENT_1084| Int) (|$alpha-23:set_flag_f_1191| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| (- |$alpha-20:x_1037| 1)) (= |$knormal:19| (+ |$knormal:15| |$alpha-21:c1_COEFFICIENT_1085|)) (= |$knormal:15| (* |$alpha-22:c0_COEFFICIENT_1084| |$alpha-20:x_1037|)) (= (not (= 0 |$knormal:14|)) (> |$alpha-20:x_1037| 0)) (= |$alpha-23:set_flag_f_1191| 1) (= |$alpha-22:c0_COEFFICIENT_1084| 0) (= |$alpha-21:c1_COEFFICIENT_1085| 0) (not (= 0 |$knormal:14|)) true true true )
      true
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
  (forall ( (|$V-reftype:83| Int) (|$alpha-3:set_flag_f_1191| Int) (|$alpha-4:s_f_x_1188| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:83| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:41| |$V-reftype:83| |$alpha-5:x_1031| |$alpha-4:s_f_x_1188| |$alpha-3:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:r| Int) (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      (|f_1036$unknown:24| |$alpha-30:r| |$alpha-32:s_f_x_1188| |$alpha-31:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:set_flag_f_1191| Int) (|$alpha-32:s_f_x_1188| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| 1) (= |$alpha-32:s_f_x_1188| 0) (= |$alpha-31:set_flag_f_1191| 0) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

