(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c7_COEFFICIENT_1128 = 0
     let rec c6_COEFFICIENT_1126 = 0
     let rec c5_COEFFICIENT_1125 = 0
     let rec c4_COEFFICIENT_1123 = 0
     let rec c3_COEFFICIENT_1120 = 0
     let rec c2_COEFFICIENT_1118 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1115 = 0
     let id_1030 set_flag_omega_1196 s_omega_x_1193 x_1031 = x_1031
  
     let rec omega_1032 omega_without_checking_1227 prev_set_flag_omega_1195 s_prev_omega_x_1194 x_1033 =
       let u =if prev_set_flag_omega_1195 then
                let u_5344 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1227 prev_set_flag_omega_1195
                s_prev_omega_x_1194 x_1033
  
     let rec omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033 =
       let set_flag_omega_1196 = true
       in
       let s_omega_x_1193 = x_1033
       in
         omega_1032 omega_without_checking_1227 set_flag_omega_1196 s_omega_x_1193 x_1033
  
     let f_1034 x_DO_NOT_CARE_1397 x_DO_NOT_CARE_1398 x_EXPARAM_1133 x_DO_NOT_CARE_1395 x_DO_NOT_CARE_1396 x_1035 x_DO_NOT_CARE_1393 x_DO_NOT_CARE_1394 y_EXPARAM_1134 x_DO_NOT_CARE_1391 x_DO_NOT_CARE_1392 y_1036 set_flag_omega_1196 s_omega_x_1193 z_1037 =
       y_1036 set_flag_omega_1196 s_omega_x_1193 z_1037
  
     let rec app_1038 x_DO_NOT_CARE_1389 x_DO_NOT_CARE_1390 h_EXPARAM_1131 x_DO_NOT_CARE_1387 x_DO_NOT_CARE_1388 h_1039 set_flag_omega_1196 s_omega_x_1193 x_1040 =
       h_1039 set_flag_omega_1196 s_omega_x_1193 x_1040
  
     let main =
       f_1034 false 0 c5_COEFFICIENT_1125 false 0
         (app_1038 false 0 c4_COEFFICIENT_1123 false 0
           (f_1034 false 0 c1_COEFFICIENT_1117 false 0
             (app_1038 false 0 c0_COEFFICIENT_1115 false 0 id_1030) false 0
             c3_COEFFICIENT_1120 false 0
             (app_1038 false 0 c2_COEFFICIENT_1118 false 0
               omega_without_checking_1227))) false 0 c7_COEFFICIENT_1128 false 0
         (app_1038 false 0 c6_COEFFICIENT_1126 false 0 id_1030) false 0 1
")

(set-logic HORN)

(declare-fun |fail$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:46|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:51|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1227$unknown:54|
  ( Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:33|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:36|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:24|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:12|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1038$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:3| Int) (|$knormal:107| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:107| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:3| |$V-reftype:24| |$V-reftype:22| |$knormal:107| 0 0 0 0 0) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:107| 0 0 0 0 0) )
      (|f_1034$unknown:24| |$cond-alpha-rename:3| |$V-reftype:24| |$V-reftype:22| |$knormal:107| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:4| Int) (|$knormal:122| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:122| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:4| |$V-reftype:24| |$V-reftype:22| |$knormal:122| 0 0 0 0 0) (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:122| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:33| |$cond-alpha-rename:4| |$V-reftype:24| |$V-reftype:22| |$knormal:122| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:5| Int) (|$knormal:43| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:43| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:5| |$V-reftype:24| |$V-reftype:22| |$knormal:43| 0 0 0 0 0) (|f_1034$unknown:23| |$V-reftype:24| |$V-reftype:22| |$knormal:43| 0 0 0 0 0) )
      (|f_1034$unknown:24| |$cond-alpha-rename:5| |$V-reftype:24| |$V-reftype:22| |$knormal:43| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:6| Int) (|$knormal:58| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:24| |$V-reftype:22| |$knormal:58| 0 0 0 0 0) (|app_1038$unknown:9| |$cond-alpha-rename:6| |$V-reftype:24| |$V-reftype:22| |$knormal:58| 0 0 0 0 0) (|f_1034$unknown:36| |$V-reftype:24| |$V-reftype:22| |$knormal:58| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:33| |$cond-alpha-rename:6| |$V-reftype:24| |$V-reftype:22| |$knormal:58| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:68| Int) (|$knormal:91| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:68| |$knormal:91| 0 0 0 0 0) )
      (|f_1034$unknown:36| |$V-reftype:15| |$V-reftype:68| |$knormal:91| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$cond-alpha-rename:7| Int) (|$knormal:91| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:70| |$V-reftype:68| |$knormal:91| 0 0 0 0 0) (|f_1034$unknown:33| |$cond-alpha-rename:7| |$V-reftype:70| |$V-reftype:68| |$knormal:91| 0 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:36| |$V-reftype:70| |$V-reftype:68| |$knormal:91| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:9| |$cond-alpha-rename:7| |$V-reftype:70| |$V-reftype:68| |$knormal:91| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|id_1030| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0) )
      (|app_1038$unknown:9| |$V-reftype:80| |$V-reftype:80| |$V-reftype:78| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$V-reftype:105| Int) (|$cond-alpha-rename:36| Int) (|omega_without_checking_1227| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227| 0 0 0 0 0) (|omega_1032$unknown:51| |$cond-alpha-rename:36| |$V-reftype:105| |$V-reftype:105| 1) (|omega_without_checking_1227$unknown:54| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227|) )
      (|app_1038$unknown:9| |$cond-alpha-rename:36| |$V-reftype:105| |$V-reftype:103| |omega_without_checking_1227| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$V-reftype:15| Int) (|omega_without_checking_1227| Int) )
    (=>
      ( and (|app_1038$unknown:12| |$V-reftype:15| |$V-reftype:103| |omega_without_checking_1227| 0 0 0 0 0) )
      (|omega_without_checking_1227$unknown:54| |$V-reftype:15| |$V-reftype:103| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:2| 1) )
      (|bot$unknown:15| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:38| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:9| 1) (|fail$unknown:39| |$knormal:11| 1) (|omega_1032$unknown:46| |$cond-alpha-rename:19| |$cond-alpha-rename:19| 1) (|omega_1032$unknown:51| |$cond-alpha-rename:38| |$cond-alpha-rename:19| |$cond-alpha-rename:19| 1) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:19| |$cond-alpha-rename:19| 1) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:13| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:17|) (not (= 0 1)) )
      (|omega_1032$unknown:51| |$cond-alpha-rename:38| |$cond-alpha-rename:19| |$cond-alpha-rename:19| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:9| 1) (|fail$unknown:39| |$knormal:11| 1) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) (not (= 0 1)) )
      (|omega_1032$unknown:46| |$cond-alpha-rename:22| |$cond-alpha-rename:22| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:107| 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:107| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:43| Int) (|$knormal:43| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:43| |$V-reftype:22| |$knormal:43| 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:43| |$V-reftype:22| |$knormal:43| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$knormal:122| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:122| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:122| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$V-reftype:61| Int) (|$knormal:58| Int) )
    (=>
      ( and (|f_1034$unknown:36| |$V-reftype:61| |$V-reftype:22| |$knormal:58| 0 0 0 0 0 0 0 0 0 0) )
      (|app_1038$unknown:12| |$V-reftype:61| |$V-reftype:22| |$knormal:58| 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) )
    ( and (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23|) (not (= 0 1)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$V-reftype:89| Int) (|$alpha-12:set_flag_omega_1196| Int) (|$alpha-13:s_omega_x_1193| Int) (|$alpha-14:x_1033| Int) (|omega_without_checking_1227| Int) )
    (=>
      ( and (|omega_1032$unknown:46| |$V-reftype:89| |$V-reftype:103| |omega_without_checking_1227|) (|omega_without_checking_1227$unknown:54| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1193| |$alpha-12:set_flag_omega_1196|) )
      (|omega_without_checking_1227$unknown:54| |$V-reftype:89| |$V-reftype:103| |omega_without_checking_1227|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:40| Int) )
    (=>
      ( and (|omega_1032$unknown:46| |$cond-alpha-rename:28| |$cond-alpha-rename:28| 1) (|omega_1032$unknown:51| |$cond-alpha-rename:40| |$cond-alpha-rename:28| |$cond-alpha-rename:28| 1) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:28| |$cond-alpha-rename:28| 1) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:28| |$cond-alpha-rename:27| |$cond-alpha-rename:26|) (not (not (= 0 1))) )
      (|omega_1032$unknown:51| |$cond-alpha-rename:40| |$cond-alpha-rename:28| |$cond-alpha-rename:28| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) )
    (=>
      ( and (|omega_without_checking_1227$unknown:54| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29|) (not (not (= 0 1))) )
      (|omega_1032$unknown:46| |$cond-alpha-rename:31| |$cond-alpha-rename:31| 1)
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|f_1034$unknown:36| 1 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

