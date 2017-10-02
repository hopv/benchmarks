(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c10_COEFFICIENT_1129 = 0
     let rec c9_COEFFICIENT_1128 = 0
     let rec c8_COEFFICIENT_1127 = 0
     let rec c7_COEFFICIENT_1125 = 0
     let rec c6_COEFFICIENT_1124 = 0
     let rec c5_COEFFICIENT_1123 = 0
     let rec c4_COEFFICIENT_1122 = 0
     let rec c3_COEFFICIENT_1121 = 0
     let rec c2_COEFFICIENT_1120 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1116 = 0
  
     let compose_1030 x_DO_NOT_CARE_1433 x_DO_NOT_CARE_1434 f_EXPARAM_1133 x_DO_NOT_CARE_1431 x_DO_NOT_CARE_1432 f_1031 x_DO_NOT_CARE_1429 x_DO_NOT_CARE_1430 g_EXPARAM_1134 x_DO_NOT_CARE_1427 x_DO_NOT_CARE_1428 g_1032 set_flag_id_1234 s_id_x_1231 x_1033 =
       f_1031 set_flag_id_1234 s_id_x_1231
         (g_1032 set_flag_id_1234 s_id_x_1231 x_1033)
  
     let id_without_checking_1260 set_flag_id_1234 s_id_x_1231 x_1035 =
       let set_flag_id_1234 = true
       in
       let s_id_x_1231 = x_1035
       in
         x_1035
  
     let rec id_1034 prev_set_flag_id_1233 s_prev_id_x_1232 x_1035 =
       let u = if prev_set_flag_id_1233 then
                let u_6367 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1260 prev_set_flag_id_1233 s_prev_id_x_1232
                x_1035
  
     let succ_1036 set_flag_id_1234 s_id_x_1231 x_1037 = x_1037 + 1
  
     let rec toChurch_1038 x_DO_NOT_CARE_1425 x_DO_NOT_CARE_1426 n_1039 x_DO_NOT_CARE_1423 x_DO_NOT_CARE_1424 f_EXPARAM_1119 set_flag_id_1234 s_id_x_1231 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_id_1234 s_id_x_1231
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_id_1234 s_id_x_1231 f_1040 set_flag_id_1234 s_id_x_1231
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_id_1234 s_id_x_1231
           (toChurch_1038 set_flag_id_1234 s_id_x_1231 (n_1039 - 1)
             set_flag_id_1234 s_id_x_1231
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_id_1234 s_id_x_1231 f_1040)
  
     let main x_1043 =
       let set_flag_id_1234 = false in
       let s_id_x_1231 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_id_1234 s_id_x_1231 x_1043 set_flag_id_1234
               s_id_x_1231 ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_id_1234 s_id_x_1231 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:50|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:54|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:53|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:36| Int) (|$alpha-33:n_1039| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:373| Int) (|$knormal:51| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:371|) (+ (* 0 |$cond-alpha-rename:368|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:371|) (+ (* 0 |$cond-alpha-rename:368|) 0))) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:368| 0)) (|toChurch_1038$unknown:53| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:373| |$cond-alpha-rename:372| |$cond-alpha-rename:371| |$cond-alpha-rename:370| |$cond-alpha-rename:369| |$cond-alpha-rename:368| |$cond-alpha-rename:367| |$cond-alpha-rename:366|) )
      (|toChurch_1038$unknown:53| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:373| |$cond-alpha-rename:372| 0 |$cond-alpha-rename:373| |$cond-alpha-rename:372| (- |$alpha-33:n_1039| 1) |$cond-alpha-rename:373| |$cond-alpha-rename:372|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$cond-alpha-rename:580| Int) (|$cond-alpha-rename:581| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:585| Int) (|$cond-alpha-rename:610| Int) (|$cond-alpha-rename:611| Int) (|$cond-alpha-rename:635| Int) (|$cond-alpha-rename:636| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:638| Int) (|$cond-alpha-rename:639| Int) (|$cond-alpha-rename:640| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:666| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:694| Int) )
    (=>
      ( and (|toChurch_1038$unknown:50| |$cond-alpha-rename:693| |$cond-alpha-rename:694| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$cond-alpha-rename:585| |$cond-alpha-rename:584| |$cond-alpha-rename:583| |$cond-alpha-rename:582| |$cond-alpha-rename:581| |$cond-alpha-rename:580|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$cond-alpha-rename:640| |$cond-alpha-rename:639| |$cond-alpha-rename:638| |$cond-alpha-rename:637| |$cond-alpha-rename:636| |$cond-alpha-rename:635|) (|toChurch_1038$unknown:53| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$cond-alpha-rename:669| |$cond-alpha-rename:668| |$cond-alpha-rename:667| |$cond-alpha-rename:666| |$cond-alpha-rename:665| |$cond-alpha-rename:664|) (|toChurch_1038$unknown:54| |$cond-alpha-rename:694| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| (+ (* 0 |$cond-alpha-rename:611|) (+ (* 0 |$cond-alpha-rename:610|) 0)) |$cond-alpha-rename:671| |$cond-alpha-rename:670| (- |$cond-alpha-rename:610| 1) |$cond-alpha-rename:671| |$cond-alpha-rename:670|) (not (= |$cond-alpha-rename:582| 0)) (not (= |$cond-alpha-rename:610| 0)) (not (= |$cond-alpha-rename:637| 0)) (not (= |$cond-alpha-rename:666| 0)) (not (= |$alpha-33:n_1039| 0)) (= 0 (+ (* 0 |$cond-alpha-rename:585|) (+ (* 0 |$cond-alpha-rename:582|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:611|) (+ (* 0 |$cond-alpha-rename:610|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:611|) (+ (* 0 |$cond-alpha-rename:610|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:640|) (+ (* 0 |$cond-alpha-rename:637|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:640|) (+ (* 0 |$cond-alpha-rename:637|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:669|) (+ (* 0 |$cond-alpha-rename:666|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:669|) (+ (* 0 |$cond-alpha-rename:666|) 0))) )
      (|toChurch_1038$unknown:54| |$cond-alpha-rename:693| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:840| Int) (|$cond-alpha-rename:841| Int) (|$cond-alpha-rename:842| Int) (|$cond-alpha-rename:881| Int) (|$cond-alpha-rename:882| Int) (|$cond-alpha-rename:884| Int) (|$cond-alpha-rename:885| Int) (|$cond-alpha-rename:886| Int) (|$cond-alpha-rename:887| Int) (|$cond-alpha-rename:888| Int) )
    ( and (|toChurch_1038$unknown:53| |$cond-alpha-rename:842| |$cond-alpha-rename:841| |$cond-alpha-rename:840| |$cond-alpha-rename:888| |$cond-alpha-rename:887| |$cond-alpha-rename:886| |$cond-alpha-rename:885| |$cond-alpha-rename:884| 0 |$cond-alpha-rename:882| |$cond-alpha-rename:881|) (not (= 0 |$cond-alpha-rename:840|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$cond-alpha-rename:1016| Int) (|$cond-alpha-rename:1017| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:1020| Int) (|$cond-alpha-rename:1021| Int) (|$cond-alpha-rename:1022| Int) (|$cond-alpha-rename:1023| Int) (|$cond-alpha-rename:1027| Int) (|$cond-alpha-rename:1029| Int) )
    (=>
      ( and (not (= 0 |$V-reftype:51|)) (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:1023| |$cond-alpha-rename:1022| |$cond-alpha-rename:1021| |$cond-alpha-rename:1020| |$cond-alpha-rename:1019| 0 |$cond-alpha-rename:1017| |$cond-alpha-rename:1016|) (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (|fail$unknown:26| |$cond-alpha-rename:1029| 1) (|bot$unknown:2| |$cond-alpha-rename:1027| 1) )
      (|toChurch_1038$unknown:54| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$cond-alpha-rename:1030| Int) (|$cond-alpha-rename:1031| Int) (|$cond-alpha-rename:1033| Int) (|$cond-alpha-rename:1034| Int) (|$cond-alpha-rename:1035| Int) (|$cond-alpha-rename:1036| Int) (|$cond-alpha-rename:1037| Int) )
    (=>
      ( and (not (not (= 0 |$V-reftype:51|))) (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:1037| |$cond-alpha-rename:1036| |$cond-alpha-rename:1035| |$cond-alpha-rename:1034| |$cond-alpha-rename:1033| 0 |$cond-alpha-rename:1031| |$cond-alpha-rename:1030|) (|toChurch_1038$unknown:53| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) )
      (|toChurch_1038$unknown:54| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-49:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) )
      (|toChurch_1038$unknown:50| (+ |$V-reftype:72| 1) |$V-reftype:72| |$V-reftype:70| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:50| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (- |$alpha-33:n_1039| 1) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(check-sat)

(get-model)

(exit)

