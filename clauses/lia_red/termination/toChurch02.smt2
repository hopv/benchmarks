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
  
     let compose_1030 x_DO_NOT_CARE_1445 x_DO_NOT_CARE_1446 f_EXPARAM_1133 x_DO_NOT_CARE_1443 x_DO_NOT_CARE_1444 f_1031 x_DO_NOT_CARE_1441 x_DO_NOT_CARE_1442 g_EXPARAM_1134 x_DO_NOT_CARE_1439 x_DO_NOT_CARE_1440 g_1032 set_flag_succ_1296 s_succ_x_1293 x_1033 =
       f_1031 set_flag_succ_1296 s_succ_x_1293
         (g_1032 set_flag_succ_1296 s_succ_x_1293 x_1033)
  
     let id_1034 set_flag_succ_1296 s_succ_x_1293 x_1035 = x_1035
  
     let succ_without_checking_1316 set_flag_succ_1296 s_succ_x_1293 x_1037 =
       let set_flag_succ_1296 = true
       in
       let s_succ_x_1293 = x_1037
       in
         x_1037 + 1
  
     let rec succ_1036 prev_set_flag_succ_1295 s_prev_succ_x_1294 x_1037 =
       let u = if prev_set_flag_succ_1295 then
                let u_8154 = fail ()
                in
                  bot()
               else () in
              succ_without_checking_1316 prev_set_flag_succ_1295
                s_prev_succ_x_1294 x_1037
  
     let rec toChurch_1038 x_DO_NOT_CARE_1437 x_DO_NOT_CARE_1438 n_1039 x_DO_NOT_CARE_1435 x_DO_NOT_CARE_1436 f_EXPARAM_1119 set_flag_succ_1296 s_succ_x_1293 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_succ_1296 s_succ_x_1293
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_succ_1296 s_succ_x_1293 f_1040 set_flag_succ_1296
           s_succ_x_1293
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_succ_1296 s_succ_x_1293
           (toChurch_1038 set_flag_succ_1296 s_succ_x_1293 (n_1039 - 1)
             set_flag_succ_1296 s_succ_x_1293
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_succ_1296 s_succ_x_1293 f_1040)
  
     let main_1041 x_1043 =
       let set_flag_succ_1296 = false in
       let s_succ_x_1293 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_succ_1296 s_succ_x_1293 x_1043
               set_flag_succ_1296 s_succ_x_1293
               ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_succ_1296 s_succ_x_1293 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:51|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:93| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-39:f_1040| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:1307| Int) (|$cond-alpha-rename:1308| Int) (|$cond-alpha-rename:1320| Int) (|$cond-alpha-rename:1321| Int) (|$cond-alpha-rename:1322| Int) (|$cond-alpha-rename:1323| Int) (|$cond-alpha-rename:1324| Int) (|$cond-alpha-rename:1325| Int) (|$cond-alpha-rename:1361| Int) (|$cond-alpha-rename:1362| Int) (|$cond-alpha-rename:1374| Int) (|$cond-alpha-rename:1375| Int) (|$cond-alpha-rename:1376| Int) (|$cond-alpha-rename:1377| Int) (|$cond-alpha-rename:1378| Int) (|$cond-alpha-rename:1379| Int) (|$cond-alpha-rename:1380| Int) (|$cond-alpha-rename:1381| Int) (|$cond-alpha-rename:2680| Int) (|$cond-alpha-rename:2695| Int) (|$cond-alpha-rename:2696| Int) (|$cond-alpha-rename:2720| Int) (|$cond-alpha-rename:2721| Int) (|$cond-alpha-rename:2861| Int) (|$cond-alpha-rename:2862| Int) (|$cond-alpha-rename:2863| Int) (|$cond-alpha-rename:2864| Int) (|$cond-alpha-rename:2865| Int) (|$cond-alpha-rename:2866| Int) (|$cond-alpha-rename:2868| Int) (|$cond-alpha-rename:2869| Int) (|$cond-alpha-rename:2870| Int) (|$cond-alpha-rename:2871| Int) (|$cond-alpha-rename:2883| Int) (|$cond-alpha-rename:2884| Int) (|$cond-alpha-rename:2885| Int) (|$cond-alpha-rename:2886| Int) (|$cond-alpha-rename:2887| Int) (|$cond-alpha-rename:2888| Int) (|$cond-alpha-rename:2924| Int) (|$cond-alpha-rename:2925| Int) (|$cond-alpha-rename:2937| Int) (|$cond-alpha-rename:2938| Int) (|$cond-alpha-rename:2939| Int) (|$cond-alpha-rename:2940| Int) (|$cond-alpha-rename:2941| Int) (|$cond-alpha-rename:2942| Int) (|$cond-alpha-rename:2978| Int) (|$cond-alpha-rename:2979| Int) (|$cond-alpha-rename:2991| Int) (|$cond-alpha-rename:2992| Int) (|$cond-alpha-rename:2993| Int) (|$cond-alpha-rename:2994| Int) (|$cond-alpha-rename:2995| Int) (|$cond-alpha-rename:2996| Int) (|$cond-alpha-rename:3032| Int) (|$cond-alpha-rename:3033| Int) (|$cond-alpha-rename:3045| Int) (|$cond-alpha-rename:3046| Int) (|$cond-alpha-rename:3047| Int) (|$cond-alpha-rename:3048| Int) (|$cond-alpha-rename:3049| Int) (|$cond-alpha-rename:3050| Int) (|$cond-alpha-rename:3086| Int) (|$cond-alpha-rename:3087| Int) (|$cond-alpha-rename:3099| Int) (|$cond-alpha-rename:3100| Int) (|$cond-alpha-rename:3101| Int) (|$cond-alpha-rename:3102| Int) (|$cond-alpha-rename:3103| Int) (|$cond-alpha-rename:3104| Int) (|$cond-alpha-rename:43| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$cond-alpha-rename:2868| |$cond-alpha-rename:2869| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:2866| |$cond-alpha-rename:2865| |$cond-alpha-rename:2864| |$cond-alpha-rename:2863| |$cond-alpha-rename:2862| |$cond-alpha-rename:2861|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:2680| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:3050| |$cond-alpha-rename:3049| |$cond-alpha-rename:3048| |$cond-alpha-rename:3047| |$cond-alpha-rename:3046| |$cond-alpha-rename:3045|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:2680| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:3104| |$cond-alpha-rename:3103| |$cond-alpha-rename:3102| |$cond-alpha-rename:3101| |$cond-alpha-rename:3100| |$cond-alpha-rename:3099|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:1325| |$cond-alpha-rename:1324| |$cond-alpha-rename:1323| |$cond-alpha-rename:1322| |$cond-alpha-rename:1321| |$cond-alpha-rename:1320|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:1379| |$cond-alpha-rename:1378| |$cond-alpha-rename:1377| |$cond-alpha-rename:1376| |$cond-alpha-rename:1375| |$cond-alpha-rename:1374|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:2888| |$cond-alpha-rename:2887| |$cond-alpha-rename:2886| |$cond-alpha-rename:2885| |$cond-alpha-rename:2884| |$cond-alpha-rename:2883|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:2942| |$cond-alpha-rename:2941| |$cond-alpha-rename:2940| |$cond-alpha-rename:2939| |$cond-alpha-rename:2938| |$cond-alpha-rename:2937|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:2996| |$cond-alpha-rename:2995| |$cond-alpha-rename:2994| |$cond-alpha-rename:2993| |$cond-alpha-rename:2992| |$cond-alpha-rename:2991|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:2869| |$cond-alpha-rename:2680| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| (+ (* 0 |$cond-alpha-rename:2721|) (+ (* 0 |$cond-alpha-rename:2720|) 0)) |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| (- |$cond-alpha-rename:2720| 1) |$cond-alpha-rename:1381| |$cond-alpha-rename:1380|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:2869| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| (+ (* 0 |$cond-alpha-rename:2696|) (+ (* 0 |$cond-alpha-rename:2695|) 0)) |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| (- |$cond-alpha-rename:2695| 1) |$cond-alpha-rename:1381| |$cond-alpha-rename:1380|) (not (= |$cond-alpha-rename:1322| 0)) (not (= |$cond-alpha-rename:1307| 0)) (not (= |$cond-alpha-rename:1376| 0)) (not (= |$cond-alpha-rename:1361| 0)) (not (= |$cond-alpha-rename:129| 0)) (not (= |$cond-alpha-rename:2863| 0)) (not (= |$cond-alpha-rename:2695| 0)) (not (= |$cond-alpha-rename:2720| 0)) (not (= (- |$cond-alpha-rename:2924| 1) 0)) (not (= (- |$cond-alpha-rename:2978| 1) 0)) (not (= (- |$cond-alpha-rename:3032| 1) 0)) (not (= (- |$cond-alpha-rename:3086| 1) 0)) (not (= |$cond-alpha-rename:2885| 0)) (not (= |$cond-alpha-rename:2870| 0)) (not (= |$cond-alpha-rename:2939| 0)) (not (= |$cond-alpha-rename:2924| 0)) (not (= |$cond-alpha-rename:2993| 0)) (not (= |$cond-alpha-rename:2978| 0)) (not (= |$cond-alpha-rename:3047| 0)) (not (= |$cond-alpha-rename:3032| 0)) (not (= |$cond-alpha-rename:3101| 0)) (not (= |$cond-alpha-rename:3086| 0)) (not (= (- |$cond-alpha-rename:129| 1) 0)) (not (= (- |$cond-alpha-rename:1307| 1) 0)) (not (= (- |$cond-alpha-rename:1361| 1) 0)) (not (= |$alpha-33:n_1039| 0)) (= (+ (* 0 |$cond-alpha-rename:1325|) (+ (* 0 |$cond-alpha-rename:1322|) 0)) (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (= (+ (* 0 |$cond-alpha-rename:1325|) (+ (* 0 |$cond-alpha-rename:1322|) 0)) (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (= (+ (* 0 |$cond-alpha-rename:1379|) (+ (* 0 |$cond-alpha-rename:1376|) 0)) (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (= (+ (* 0 |$cond-alpha-rename:1379|) (+ (* 0 |$cond-alpha-rename:1376|) 0)) (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (= (- |$cond-alpha-rename:129| 1) (- |$cond-alpha-rename:2870| 1)) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 |$cond-alpha-rename:2871|) (+ (* 0 |$cond-alpha-rename:2870|) 0))) (= (+ (* 0 |$cond-alpha-rename:2721|) (+ (* 0 |$cond-alpha-rename:2720|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:3033|) (+ (* 0 |$cond-alpha-rename:3032|) 0))) (+ (* 0 (- |$cond-alpha-rename:3032| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2721|) (+ (* 0 |$cond-alpha-rename:2720|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:3087|) (+ (* 0 |$cond-alpha-rename:3086|) 0))) (+ (* 0 (- |$cond-alpha-rename:3086| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2888|) (+ (* 0 |$cond-alpha-rename:2885|) 0)) (+ (* 0 |$cond-alpha-rename:2871|) (+ (* 0 |$cond-alpha-rename:2870|) 0))) (= (+ (* 0 |$cond-alpha-rename:2888|) (+ (* 0 |$cond-alpha-rename:2885|) 0)) (+ (* 0 |$cond-alpha-rename:2871|) (+ (* 0 |$cond-alpha-rename:2870|) 0))) (= (+ (* 0 |$cond-alpha-rename:2942|) (+ (* 0 |$cond-alpha-rename:2939|) 0)) (+ (* 0 |$cond-alpha-rename:2925|) (+ (* 0 |$cond-alpha-rename:2924|) 0))) (= (+ (* 0 |$cond-alpha-rename:2942|) (+ (* 0 |$cond-alpha-rename:2939|) 0)) (+ (* 0 |$cond-alpha-rename:2925|) (+ (* 0 |$cond-alpha-rename:2924|) 0))) (= (+ (* 0 |$cond-alpha-rename:2996|) (+ (* 0 |$cond-alpha-rename:2993|) 0)) (+ (* 0 |$cond-alpha-rename:2979|) (+ (* 0 |$cond-alpha-rename:2978|) 0))) (= (+ (* 0 |$cond-alpha-rename:2996|) (+ (* 0 |$cond-alpha-rename:2993|) 0)) (+ (* 0 |$cond-alpha-rename:2979|) (+ (* 0 |$cond-alpha-rename:2978|) 0))) (= (+ (* 0 |$cond-alpha-rename:3050|) (+ (* 0 |$cond-alpha-rename:3047|) 0)) (+ (* 0 |$cond-alpha-rename:3033|) (+ (* 0 |$cond-alpha-rename:3032|) 0))) (= (+ (* 0 |$cond-alpha-rename:3050|) (+ (* 0 |$cond-alpha-rename:3047|) 0)) (+ (* 0 |$cond-alpha-rename:3033|) (+ (* 0 |$cond-alpha-rename:3032|) 0))) (= (+ (* 0 |$cond-alpha-rename:3104|) (+ (* 0 |$cond-alpha-rename:3101|) 0)) (+ (* 0 |$cond-alpha-rename:3087|) (+ (* 0 |$cond-alpha-rename:3086|) 0))) (= (+ (* 0 |$cond-alpha-rename:3104|) (+ (* 0 |$cond-alpha-rename:3101|) 0)) (+ (* 0 |$cond-alpha-rename:3087|) (+ (* 0 |$cond-alpha-rename:3086|) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 |$cond-alpha-rename:2696|) (+ (* 0 |$cond-alpha-rename:2695|) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 |$cond-alpha-rename:2721|) (+ (* 0 |$cond-alpha-rename:2720|) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2925|) (+ (* 0 |$cond-alpha-rename:2924|) 0))) (+ (* 0 (- |$cond-alpha-rename:2924| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2979|) (+ (* 0 |$cond-alpha-rename:2978|) 0))) (+ (* 0 (- |$cond-alpha-rename:2978| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:3033|) (+ (* 0 |$cond-alpha-rename:3032|) 0))) (+ (* 0 (- |$cond-alpha-rename:3032| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:3087|) (+ (* 0 |$cond-alpha-rename:3086|) 0))) (+ (* 0 (- |$cond-alpha-rename:3086| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2866|) (+ (* 0 |$cond-alpha-rename:2863|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0))) (+ (* 0 (- |$cond-alpha-rename:129| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2696|) (+ (* 0 |$cond-alpha-rename:2695|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2925|) (+ (* 0 |$cond-alpha-rename:2924|) 0))) (+ (* 0 (- |$cond-alpha-rename:2924| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2696|) (+ (* 0 |$cond-alpha-rename:2695|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:2979|) (+ (* 0 |$cond-alpha-rename:2978|) 0))) (+ (* 0 (- |$cond-alpha-rename:2978| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:2696|) (+ (* 0 |$cond-alpha-rename:2695|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0))) (+ (* 0 (- |$cond-alpha-rename:129| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (+ (* 0 (- |$cond-alpha-rename:1307| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (+ (* 0 (- |$cond-alpha-rename:1361| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (+ (* 0 (- |$cond-alpha-rename:1307| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (+ (* 0 (- |$cond-alpha-rename:1361| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0))) )
      (|toChurch_1038$unknown:51| |$cond-alpha-rename:2868| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-39:f_1040| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:1307| Int) (|$cond-alpha-rename:1308| Int) (|$cond-alpha-rename:1320| Int) (|$cond-alpha-rename:1321| Int) (|$cond-alpha-rename:1322| Int) (|$cond-alpha-rename:1323| Int) (|$cond-alpha-rename:1324| Int) (|$cond-alpha-rename:1325| Int) (|$cond-alpha-rename:1361| Int) (|$cond-alpha-rename:1362| Int) (|$cond-alpha-rename:1374| Int) (|$cond-alpha-rename:1375| Int) (|$cond-alpha-rename:1376| Int) (|$cond-alpha-rename:1377| Int) (|$cond-alpha-rename:1378| Int) (|$cond-alpha-rename:1379| Int) (|$cond-alpha-rename:1380| Int) (|$cond-alpha-rename:1381| Int) (|$cond-alpha-rename:3154| Int) (|$cond-alpha-rename:3155| Int) (|$cond-alpha-rename:3167| Int) (|$cond-alpha-rename:3168| Int) (|$cond-alpha-rename:3169| Int) (|$cond-alpha-rename:3170| Int) (|$cond-alpha-rename:3171| Int) (|$cond-alpha-rename:3172| Int) (|$cond-alpha-rename:43| Int) )
    (=>
      ( and (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:1325| |$cond-alpha-rename:1324| |$cond-alpha-rename:1323| |$cond-alpha-rename:1322| |$cond-alpha-rename:1321| |$cond-alpha-rename:1320|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:1379| |$cond-alpha-rename:1378| |$cond-alpha-rename:1377| |$cond-alpha-rename:1376| |$cond-alpha-rename:1375| |$cond-alpha-rename:1374|) (|toChurch_1038$unknown:55| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$cond-alpha-rename:3172| |$cond-alpha-rename:3171| |$cond-alpha-rename:3170| |$cond-alpha-rename:3169| |$cond-alpha-rename:3168| |$cond-alpha-rename:3167|) (= (- |$cond-alpha-rename:129| 1) 0) (not (= |$cond-alpha-rename:1322| 0)) (not (= |$cond-alpha-rename:1307| 0)) (not (= |$cond-alpha-rename:1376| 0)) (not (= |$cond-alpha-rename:1361| 0)) (not (= |$cond-alpha-rename:129| 0)) (not (= |$cond-alpha-rename:3169| 0)) (not (= |$cond-alpha-rename:3154| 0)) (not (= (- |$cond-alpha-rename:1307| 1) 0)) (not (= (- |$cond-alpha-rename:1361| 1) 0)) (not (= |$alpha-33:n_1039| 0)) (= (+ (* 0 |$cond-alpha-rename:1325|) (+ (* 0 |$cond-alpha-rename:1322|) 0)) (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (= (+ (* 0 |$cond-alpha-rename:1325|) (+ (* 0 |$cond-alpha-rename:1322|) 0)) (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (= (+ (* 0 |$cond-alpha-rename:1379|) (+ (* 0 |$cond-alpha-rename:1376|) 0)) (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (= (+ (* 0 |$cond-alpha-rename:1379|) (+ (* 0 |$cond-alpha-rename:1376|) 0)) (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (= (- |$cond-alpha-rename:129| 1) (- |$cond-alpha-rename:3154| 1)) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 |$cond-alpha-rename:3155|) (+ (* 0 |$cond-alpha-rename:3154|) 0))) (= (+ (* 0 |$cond-alpha-rename:3172|) (+ (* 0 |$cond-alpha-rename:3169|) 0)) (+ (* 0 |$cond-alpha-rename:3155|) (+ (* 0 |$cond-alpha-rename:3154|) 0))) (= (+ (* 0 |$cond-alpha-rename:3172|) (+ (* 0 |$cond-alpha-rename:3169|) 0)) (+ (* 0 |$cond-alpha-rename:3155|) (+ (* 0 |$cond-alpha-rename:3154|) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (+ (* 0 (- |$cond-alpha-rename:1307| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (+ (* 0 (- |$cond-alpha-rename:1361| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1308|) (+ (* 0 |$cond-alpha-rename:1307|) 0))) (+ (* 0 (- |$cond-alpha-rename:1307| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 (+ (* 0 |$cond-alpha-rename:1362|) (+ (* 0 |$cond-alpha-rename:1361|) 0))) (+ (* 0 (- |$cond-alpha-rename:1361| 1)) 0))) (= (+ (* 0 |$cond-alpha-rename:130|) (+ (* 0 |$cond-alpha-rename:129|) 0)) (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0))) )
      (|toChurch_1038$unknown:51| |$cond-alpha-rename:43| |$V-reftype:93| |$alpha-39:f_1040| |$cond-alpha-rename:1381| |$cond-alpha-rename:1380| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1234| Int) (|$cond-alpha-rename:1235| Int) (|$cond-alpha-rename:1236| Int) (|$cond-alpha-rename:1245| Int) )
    ( and (|toChurch_1038$unknown:51| |$cond-alpha-rename:1236| |$cond-alpha-rename:1235| |$cond-alpha-rename:1234| 0 0 (+ (* 0 |$cond-alpha-rename:1245|) 0) 0 0 |$cond-alpha-rename:1245| 0 0) (not (= 0 |$cond-alpha-rename:1234|)) (>= |$cond-alpha-rename:1245| 0) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1285| Int) (|$cond-alpha-rename:1295| Int) (|$cond-alpha-rename:1297| Int) (|succ_1036| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:1295| 1) (|fail$unknown:26| |$cond-alpha-rename:1297| 1) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1285|) 0) 0 0 |$cond-alpha-rename:1285| 0 0) (>= |$cond-alpha-rename:1285| 0) (>= |$alpha-49:x_1043| 0) (not (= 0 |succ_1036|)) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:65| Int) (|$alpha-49:x_1043| Int) (|$cond-alpha-rename:1298| Int) (|succ_1036| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0) (|toChurch_1038$unknown:51| |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$cond-alpha-rename:1298|) 0) 0 0 |$cond-alpha-rename:1298| 0 0) (>= |$cond-alpha-rename:1298| 0) (>= |$alpha-49:x_1043| 0) (not (not (= 0 |succ_1036|))) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:65| 1) |$V-reftype:65| |$V-reftype:63| |succ_1036| 0 0 (+ (* 0 |$alpha-49:x_1043|) 0) 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:94| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:51| |$V-reftype:94| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1437| Int) (|$alpha-32:x_DO_NOT_CARE_1438| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1435| Int) (|$alpha-35:x_DO_NOT_CARE_1436| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_succ_1296| Int) (|$alpha-38:s_succ_x_1293| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:51| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|) (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1436| |$alpha-34:x_DO_NOT_CARE_1435| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1438| |$alpha-31:x_DO_NOT_CARE_1437|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296| (- |$alpha-33:n_1039| 1) |$alpha-38:s_succ_x_1293| |$alpha-37:set_flag_succ_1296|)
    )
  )
)
(check-sat)

(get-model)

