(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec c1_COEFFICIENT_1086 = 0
  
  let rec c0_COEFFICIENT_1085 = 0
  
  let succ_1030 set_flag_f_1181 s_f_n_1178 n_1031 = n_1031 + 1
  
  let g_1032 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 r_EXPARAM_1088 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 r_1033 set_flag_f_1181 s_f_n_1178 a_1034 =
    r_1033 set_flag_f_1181 s_f_n_1178
      (r_1033 set_flag_f_1181 s_f_n_1178 a_1034)
  
  let rec f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1036 =
    let set_flag_f_1181 = true
    in
    let s_f_n_1178 = n_1036
    in
      if n_1036 = 0 then
        succ_1030
      else
        g_1032 set_flag_f_1181 s_f_n_1178
          ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086)
          set_flag_f_1181 s_f_n_1178
          (f_without_checking_1189 set_flag_f_1181 s_f_n_1178 (n_1036 - 1))
  
  let rec f_1035 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036 =
    let u = if prev_set_flag_f_1180 then
             let u_11903 = fail ()
             in
               bot()
            else () in
           f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036
  
  
  let main n_1038 x_1039 =
    let x_DO_NOT_CARE_1211 = false in
    let x_DO_NOT_CARE_1212 = 0 in
    let set_flag_f_1181 = false in
    let s_f_n_1178 = 0 in
    if n_1038 >= 0 && x_1039 >= 0 then
      f_1035 set_flag_f_1181 s_f_n_1178 n_1038 set_flag_f_1181 s_f_n_1178
        x_1039
    else
      0
")

(set-logic HORN)

(declare-fun |g_1032$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:35|
  ( Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:31|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:17|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:71| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:71| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:71| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) true true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:41| |$knormal:40|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) true true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true true (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:40| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:42| 1) (= |$knormal:40| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|fail$unknown:18| |$knormal:43| |$knormal:42|) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| 1) (not (= 0 |$alpha-22:prev_set_flag_f_1180|)) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      (|fail$unknown:17| |$knormal:42|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:prev_set_flag_f_1180| Int) (|$alpha-23:s_prev_f_n_1179| Int) (|$alpha-24:n_1036| Int) (|$alpha-26:u| Int) )
    (=>
      ( and (= |$alpha-26:u| 1) (not (not (= 0 |$alpha-22:prev_set_flag_f_1180|))) (|f_1035$unknown:5| |$alpha-24:n_1036| |$alpha-23:s_prev_f_n_1179| |$alpha-22:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:14|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$V-reftype:57| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) (|g_1032$unknown:31| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) true true true true true true )
      (|f_without_checking_1189$unknown:16| |$V-reftype:57| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:14|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:14|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:69| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:14|)) (|succ_1030$unknown:35| |$V-reftype:69| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64|) true true true true true true )
      (|f_without_checking_1189$unknown:16| |$V-reftype:69| |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| |$alpha-17:n_1036| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$knormal:21| |$knormal:19| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|) true true true )
      (|g_1032$unknown:27| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$knormal:21| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181| |$knormal:25| |$alpha-17:n_1036| |$alpha-20:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (+ |$knormal:15| |$alpha-18:c1_COEFFICIENT_1086|)) (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= |$knormal:15| (* |$alpha-19:c0_COEFFICIENT_1085| |$alpha-17:n_1036|)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n_1036| Int) (|$alpha-18:c1_COEFFICIENT_1086| Int) (|$alpha-19:c0_COEFFICIENT_1085| Int) (|$alpha-20:set_flag_f_1181| Int) (|$knormal:14| Int) (|$knormal:19| Int) )
    (=>
      ( and (= |$knormal:19| (- |$alpha-17:n_1036| 1)) (= (not (= 0 |$knormal:14|)) (= |$alpha-17:n_1036| 0)) (= |$alpha-20:set_flag_f_1181| 1) (= |$alpha-19:c0_COEFFICIENT_1085| 0) (= |$alpha-18:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:14|))) true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:17| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:74| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:13| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:74| |$knormal:13|) true true true (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:27| |$knormal:13| |$knormal:7| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      (|g_1032$unknown:31| |$V-reftype:74| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:27| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-3:set_flag_f_1181| Int) (|$alpha-4:s_f_n_1178| Int) (|$alpha-5:n_1031| Int) )
    (=>
      ( and (= |$V-reftype:73| (+ |$alpha-5:n_1031| 1)) true true true )
      (|succ_1030$unknown:35| |$V-reftype:73| |$alpha-5:n_1031| |$alpha-4:s_f_n_1178| |$alpha-3:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      (|f_1035$unknown:5| |$alpha-27:n_1038| |$alpha-32:s_f_n_1178| |$alpha-31:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$alpha-29:x_DO_NOT_CARE_1211| Int) (|$alpha-30:x_DO_NOT_CARE_1212| Int) (|$alpha-31:set_flag_f_1181| Int) (|$alpha-32:s_f_n_1178| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:46|)) (and (not (= 0 |$knormal:44|)) (not (= 0 |$knormal:45|)))) (= (not (= 0 |$knormal:45|)) (>= |$alpha-28:x_1039| 0)) (= (not (= 0 |$knormal:44|)) (>= |$alpha-27:n_1038| 0)) (= |$alpha-32:s_f_n_1178| 0) (= |$alpha-31:set_flag_f_1181| 0) (= |$alpha-30:x_DO_NOT_CARE_1212| 0) (= |$alpha-29:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:46|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

