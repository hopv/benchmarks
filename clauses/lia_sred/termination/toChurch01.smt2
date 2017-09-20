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
  
     let main_1041 x_1043 =
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

(declare-fun |toChurch_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:55|
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
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$cond-alpha-rename:535| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:549| Int) (|$cond-alpha-rename:550| Int) (|$cond-alpha-rename:551| Int) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:554| Int) (|$cond-alpha-rename:555| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:20| 1) (|fail$unknown:26| |$knormal:22| 1) (|toChurch_1038$unknown:55| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233| |$cond-alpha-rename:555| |$cond-alpha-rename:554| |$cond-alpha-rename:553| |$cond-alpha-rename:552| |$cond-alpha-rename:551| |$cond-alpha-rename:550| |$cond-alpha-rename:549| |$cond-alpha-rename:548|) (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (= (- |$cond-alpha-rename:535| 1) 0) (not (= |$cond-alpha-rename:550| 0)) (not (= |$cond-alpha-rename:535| 0)) (= (+ (* 0 |$cond-alpha-rename:553|) (+ (* 0 |$cond-alpha-rename:550|) 0)) (+ (* 0 |$cond-alpha-rename:536|) (+ (* 0 |$cond-alpha-rename:535|) 0))) (= (+ (* 0 |$cond-alpha-rename:553|) (+ (* 0 |$cond-alpha-rename:550|) 0)) (+ (* 0 |$cond-alpha-rename:536|) (+ (* 0 |$cond-alpha-rename:535|) 0))) )
      (|id_1034$unknown:30| |$alpha-25:x_1035| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:464| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:466| Int) (|$cond-alpha-rename:467| Int) (|$cond-alpha-rename:468| Int) (|$cond-alpha-rename:469| Int) (|$cond-alpha-rename:494| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:589| Int) (|$cond-alpha-rename:590| Int) (|$cond-alpha-rename:602| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:605| Int) (|$cond-alpha-rename:606| Int) (|$cond-alpha-rename:607| Int) (|$cond-alpha-rename:643| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:660| Int) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:710| Int) (|$cond-alpha-rename:711| Int) (|$cond-alpha-rename:712| Int) (|$cond-alpha-rename:713| Int) (|$cond-alpha-rename:714| Int) (|$cond-alpha-rename:715| Int) (|$cond-alpha-rename:716| Int) (|$cond-alpha-rename:717| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$cond-alpha-rename:494| |$cond-alpha-rename:495| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:469| |$cond-alpha-rename:468| |$cond-alpha-rename:467| |$cond-alpha-rename:466| |$cond-alpha-rename:465| |$cond-alpha-rename:464|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:607| |$cond-alpha-rename:606| |$cond-alpha-rename:605| |$cond-alpha-rename:604| |$cond-alpha-rename:603| |$cond-alpha-rename:602|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:661| |$cond-alpha-rename:660| |$cond-alpha-rename:659| |$cond-alpha-rename:658| |$cond-alpha-rename:657| |$cond-alpha-rename:656|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| |$cond-alpha-rename:715| |$cond-alpha-rename:714| |$cond-alpha-rename:713| |$cond-alpha-rename:712| |$cond-alpha-rename:711| |$cond-alpha-rename:710|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:495| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) |$cond-alpha-rename:717| |$cond-alpha-rename:716| (- |$cond-alpha-rename:381| 1) |$cond-alpha-rename:717| |$cond-alpha-rename:716|) (not (= |$cond-alpha-rename:381| 0)) (not (= (- |$cond-alpha-rename:643| 1) 0)) (not (= (- |$cond-alpha-rename:697| 1) 0)) (not (= |$cond-alpha-rename:466| 0)) (not (= |$cond-alpha-rename:604| 0)) (not (= |$cond-alpha-rename:589| 0)) (not (= |$cond-alpha-rename:658| 0)) (not (= |$cond-alpha-rename:643| 0)) (not (= |$cond-alpha-rename:712| 0)) (not (= |$cond-alpha-rename:697| 0)) (not (= (- |$cond-alpha-rename:589| 1) 0)) (= (+ (* 0 |$cond-alpha-rename:607|) (+ (* 0 |$cond-alpha-rename:604|) 0)) (+ (* 0 |$cond-alpha-rename:590|) (+ (* 0 |$cond-alpha-rename:589|) 0))) (= (+ (* 0 |$cond-alpha-rename:607|) (+ (* 0 |$cond-alpha-rename:604|) 0)) (+ (* 0 |$cond-alpha-rename:590|) (+ (* 0 |$cond-alpha-rename:589|) 0))) (= (+ (* 0 |$cond-alpha-rename:661|) (+ (* 0 |$cond-alpha-rename:658|) 0)) (+ (* 0 |$cond-alpha-rename:644|) (+ (* 0 |$cond-alpha-rename:643|) 0))) (= (+ (* 0 |$cond-alpha-rename:661|) (+ (* 0 |$cond-alpha-rename:658|) 0)) (+ (* 0 |$cond-alpha-rename:644|) (+ (* 0 |$cond-alpha-rename:643|) 0))) (= (+ (* 0 |$cond-alpha-rename:715|) (+ (* 0 |$cond-alpha-rename:712|) 0)) (+ (* 0 |$cond-alpha-rename:698|) (+ (* 0 |$cond-alpha-rename:697|) 0))) (= (+ (* 0 |$cond-alpha-rename:715|) (+ (* 0 |$cond-alpha-rename:712|) 0)) (+ (* 0 |$cond-alpha-rename:698|) (+ (* 0 |$cond-alpha-rename:697|) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:644|) (+ (* 0 |$cond-alpha-rename:643|) 0))) (+ (* 0 (- |$cond-alpha-rename:643| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:698|) (+ (* 0 |$cond-alpha-rename:697|) 0))) (+ (* 0 (- |$cond-alpha-rename:697| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 |$cond-alpha-rename:469|) (+ (* 0 |$cond-alpha-rename:466|) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:590|) (+ (* 0 |$cond-alpha-rename:589|) 0))) (+ (* 0 (- |$cond-alpha-rename:589| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:644|) (+ (* 0 |$cond-alpha-rename:643|) 0))) (+ (* 0 (- |$cond-alpha-rename:643| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:698|) (+ (* 0 |$cond-alpha-rename:697|) 0))) (+ (* 0 (- |$cond-alpha-rename:697| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:382|) (+ (* 0 |$cond-alpha-rename:381|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:590|) (+ (* 0 |$cond-alpha-rename:589|) 0))) (+ (* 0 (- |$cond-alpha-rename:589| 1)) 0))) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:494| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:717| |$cond-alpha-rename:716| (+ (* 0 |$cond-alpha-rename:590|) (+ (* 0 |$cond-alpha-rename:589|) 0)) |$cond-alpha-rename:717| |$cond-alpha-rename:716| (- |$cond-alpha-rename:589| 1) |$cond-alpha-rename:717| |$cond-alpha-rename:716|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:498| Int) (|$cond-alpha-rename:751| Int) (|$cond-alpha-rename:752| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:770| Int) (|$cond-alpha-rename:771| Int) )
    ( and (|toChurch_1038$unknown:55| |$cond-alpha-rename:498| |$cond-alpha-rename:497| |$cond-alpha-rename:496| |$cond-alpha-rename:771| |$cond-alpha-rename:770| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764|) (not (= 0 |$cond-alpha-rename:496|)) (= (- |$cond-alpha-rename:751| 1) 0) (not (= |$cond-alpha-rename:766| 0)) (not (= |$cond-alpha-rename:751| 0)) (= (+ (* 0 |$cond-alpha-rename:769|) (+ (* 0 |$cond-alpha-rename:766|) 0)) (+ (* 0 |$cond-alpha-rename:752|) (+ (* 0 |$cond-alpha-rename:751|) 0))) (= (+ (* 0 |$cond-alpha-rename:769|) (+ (* 0 |$cond-alpha-rename:766|) 0)) (+ (* 0 |$cond-alpha-rename:752|) (+ (* 0 |$cond-alpha-rename:751|) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$cond-alpha-rename:805| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:818| Int) (|$cond-alpha-rename:819| Int) (|$cond-alpha-rename:820| Int) (|$cond-alpha-rename:821| Int) (|$cond-alpha-rename:822| Int) (|$cond-alpha-rename:823| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:825| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233| |$cond-alpha-rename:825| |$cond-alpha-rename:824| |$cond-alpha-rename:823| |$cond-alpha-rename:822| |$cond-alpha-rename:821| |$cond-alpha-rename:820| |$cond-alpha-rename:819| |$cond-alpha-rename:818|) (= (- |$cond-alpha-rename:805| 1) 0) (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (not (= |$cond-alpha-rename:820| 0)) (not (= |$cond-alpha-rename:805| 0)) (= (+ (* 0 |$cond-alpha-rename:823|) (+ (* 0 |$cond-alpha-rename:820|) 0)) (+ (* 0 |$cond-alpha-rename:806|) (+ (* 0 |$cond-alpha-rename:805|) 0))) (= (+ (* 0 |$cond-alpha-rename:823|) (+ (* 0 |$cond-alpha-rename:820|) 0)) (+ (* 0 |$cond-alpha-rename:806|) (+ (* 0 |$cond-alpha-rename:805|) 0))) )
      (|id_1034$unknown:30| |$alpha-25:x_1035| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:872| Int) (|$cond-alpha-rename:873| Int) (|$cond-alpha-rename:874| Int) (|$cond-alpha-rename:875| Int) (|$cond-alpha-rename:876| Int) (|$cond-alpha-rename:877| Int) (|$cond-alpha-rename:878| Int) (|$cond-alpha-rename:879| Int) )
    (=>
      ( and (|id_1034$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51|) (|toChurch_1038$unknown:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:879| |$cond-alpha-rename:878| |$cond-alpha-rename:877| |$cond-alpha-rename:876| |$cond-alpha-rename:875| |$cond-alpha-rename:874| |$cond-alpha-rename:873| |$cond-alpha-rename:872|) (= (- |$cond-alpha-rename:859| 1) 0) (not (= |$cond-alpha-rename:874| 0)) (not (= |$cond-alpha-rename:859| 0)) (= (+ (* 0 |$cond-alpha-rename:877|) (+ (* 0 |$cond-alpha-rename:874|) 0)) (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:859|) 0))) (= (+ (* 0 |$cond-alpha-rename:877|) (+ (* 0 |$cond-alpha-rename:874|) 0)) (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:859|) 0))) )
      (|toChurch_1038$unknown:56| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:879| |$cond-alpha-rename:878| (+ (* 0 |$cond-alpha-rename:860|) (+ (* 0 |$cond-alpha-rename:859|) 0)) |$cond-alpha-rename:879| |$cond-alpha-rename:878| (- |$cond-alpha-rename:859| 1) |$cond-alpha-rename:879| |$cond-alpha-rename:878|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-49:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:72| 1) |$V-reftype:72| |$V-reftype:70| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (- |$alpha-33:n_1039| 1) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(check-sat)

(get-model)

