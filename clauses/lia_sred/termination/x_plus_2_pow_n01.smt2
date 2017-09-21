(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let rec c1_COEFFICIENT_1086 = 0
     let rec c0_COEFFICIENT_1085 = 0
  
     let succ_1030 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 n_1031 =
       n_1031 + 1
  
     let rec g_without_checking_1152 x_DO_NOT_CARE_1208 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 r_EXPARAM_1088 x_DO_NOT_CARE_1205 x_DO_NOT_CARE_1206 x_DO_NOT_CARE_1207 r_1033 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 a_1034 =
       let set_flag_g_1134 = true
       in
       let s_g_a_1129 = a_1034
       in
       let s_g_r_EXPARAM_1127 = r_EXPARAM_1088
       in
         r_1033 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129
           (r_1033 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 a_1034)
  
     let rec g_1032 x_DO_NOT_CARE_1157 x_DO_NOT_CARE_1158 x_DO_NOT_CARE_1159 r_EXPARAM_1088 x_DO_NOT_CARE_1154 x_DO_NOT_CARE_1155 x_DO_NOT_CARE_1156 r_1033 prev_set_flag_g_1133 s_prev_g_r_EXPARAM_1130 s_prev_g_a_1132 a_1034 =
       let u =  if prev_set_flag_g_1133 then
                if ((2 * 1) + (-4 * s_prev_g_r_EXPARAM_1130)) +
                   (0 * s_prev_g_a_1132) >
                   ((2 * 1) + (-4 * r_EXPARAM_1088)) + (0 * a_1034) &&
                   ((2 * 1) + (-4 * r_EXPARAM_1088)) + (0 * a_1034) >= 0 then
                  ()
                else
                  let u_5939 = fail ()
                  in
                    bot()
                else () in
              g_without_checking_1152 x_DO_NOT_CARE_1157 x_DO_NOT_CARE_1158
                x_DO_NOT_CARE_1159 r_EXPARAM_1088 x_DO_NOT_CARE_1154
                x_DO_NOT_CARE_1155 x_DO_NOT_CARE_1156 r_1033 prev_set_flag_g_1133
                s_prev_g_r_EXPARAM_1130 s_prev_g_a_1132 a_1034
  
     let rec f_1035 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 n_1036 =
       if n_1036 = 0 then
         succ_1030
       else
         g_1032 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129
           ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086) set_flag_g_1134
           s_g_r_EXPARAM_1127 s_g_a_1129
           (f_1035 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 (n_1036 - 1))
  
     let main_1037 n_1038 x_1039 =
       let x_DO_NOT_CARE_1202 = false in
       let x_DO_NOT_CARE_1203 = 0 in
       let x_DO_NOT_CARE_1204 = 0 in
       let set_flag_g_1134 = false in
       let s_g_r_EXPARAM_1127 = 0 in
       let s_g_a_1129 = 0 in
       if n_1038 >= 0 && x_1039 >= 0 then
         f_1035 set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 n_1038
           set_flag_g_1134 s_g_r_EXPARAM_1127 s_g_a_1129 x_1039
       else
         0
")

(set-logic HORN)

(declare-fun |main_1037$unknown:50|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:49|
  ( Int Int ) Bool
)

(declare-fun |g_1032$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:46|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:41|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:89| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:163|) 0)) (not (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 2)) (not (= |$cond-alpha-rename:89| 0)) (not (= |$cond-alpha-rename:163| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| (+ (* 0 |$cond-alpha-rename:89|) 0) |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| (+ (* 0 |$cond-alpha-rename:89|) 0) |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (|fail$unknown:13| |$knormal:62| 1) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:89| 1) |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|) (|bot$unknown:2| |$knormal:60| 1) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160| 0 |$cond-alpha-rename:162| |$cond-alpha-rename:161| |$cond-alpha-rename:160|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (not (and (>= (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:172|) 0))) 0) (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:172|) 0)))))) (not (= |$cond-alpha-rename:172| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169| (+ (* 0 |$cond-alpha-rename:172|) 0) |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169|) (|fail$unknown:13| |$knormal:62| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169|) (|bot$unknown:2| |$knormal:60| 1) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169| (+ (* 0 |$cond-alpha-rename:172|) 0) |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:169|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:391| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178|) (|fail$unknown:13| |$knormal:62| 1) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:390| |$cond-alpha-rename:391| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:181|) 0) 1 |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178| (+ (* 0 |$cond-alpha-rename:181|) 0) |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:391| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:181|) 0) 1 |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178| (+ (* 0 |$cond-alpha-rename:181|) 0) |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178| (+ (* 0 |$cond-alpha-rename:181|) 0) |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:181| 0)) (not (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 2)) )
      (|g_1032$unknown:30| |$cond-alpha-rename:390| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178| 0 |$cond-alpha-rename:180| |$cond-alpha-rename:179| |$cond-alpha-rename:178|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (not (and (>= (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:190|) 0))) 0) (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:190|) 0)))))) (not (= |$cond-alpha-rename:190| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|fail$unknown:13| |$knormal:62| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187|) (|bot$unknown:2| |$knormal:60| 1) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187| (+ (* 0 |$cond-alpha-rename:190|) 0) |$cond-alpha-rename:189| |$cond-alpha-rename:188| |$cond-alpha-rename:187|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| 0 |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|f_1035$unknown:11| (+ |$V-reftype:102| 1) |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| 0 |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) )
    (=>
      ( and (not (= |$alpha-39:n_1036| 0)) (|g_1032$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| (+ (* 0 |$alpha-39:n_1036|) 0) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) (|f_1035$unknown:10| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|f_1035$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$knormal:107| Int) )
    (=>
      ( and (>= |$alpha-42:n_1038| 0) (>= |$alpha-43:x_1039| 0) (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) (|f_1035$unknown:11| |$knormal:107| |$alpha-43:x_1039| 0 0 0 |$alpha-42:n_1038| 0 0 0) )
      (|main_1037$unknown:50| |$knormal:107| |$alpha-43:x_1039| |$alpha-42:n_1038|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:44| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$knormal:72| Int) )
    (=>
      ( and (not (= |$alpha-39:n_1036| 0)) (|g_1032$unknown:24| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| (+ (* 0 |$alpha-39:n_1036|) 0) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|f_1035$unknown:10| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| (- |$alpha-39:n_1036| 1) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) )
    ( and (not (and (>= (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:199|) 0))) 0) (> (+ 2 (* (- 4) |$cond-alpha-rename:33|)) (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:199|) 0)))))) (not (= |$cond-alpha-rename:199| 0)) (not (= 0 |$cond-alpha-rename:32|)) (|f_1035$unknown:10| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$cond-alpha-rename:197| |$cond-alpha-rename:196|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:98| Int) )
    (=>
      ( and (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 2) (= 0 (+ (* 0 |$cond-alpha-rename:208|) 0)) (not (= |$cond-alpha-rename:98| 0)) (not (= |$cond-alpha-rename:208| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205| (+ (* 0 |$cond-alpha-rename:98|) 0) |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205|) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205| (+ (* 0 |$cond-alpha-rename:98|) 0) |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205|) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:98| 1) |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205|) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:208| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205|) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205| 0 |$cond-alpha-rename:207| |$cond-alpha-rename:206| |$cond-alpha-rename:205|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:217|) 0)) (not (= |$cond-alpha-rename:107| 0)) (not (= |$cond-alpha-rename:217| 0)) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214| (+ (* 0 |$cond-alpha-rename:107|) 0) |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214| (+ (* 0 |$cond-alpha-rename:107|) 0) |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:107| 1) |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214| 0 |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:226| Int) )
    (=>
      ( and (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:226|) 0)))) (>= (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:226|) 0))) 0) (not (= |$cond-alpha-rename:226| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:223| (+ (* 0 |$cond-alpha-rename:226|) 0) |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:223|) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:226| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:223|) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:223| (+ (* 0 |$cond-alpha-rename:226|) 0) |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:223|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:234| Int) (|$cond-alpha-rename:235| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:235| 0)) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232| (+ (* 0 |$cond-alpha-rename:235|) 0) |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232|) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:235| |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232|) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232| (+ (* 0 |$cond-alpha-rename:235|) 0) |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:394| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:244| |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:393| |$cond-alpha-rename:394| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:244|) 0) 1 |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| (+ (* 0 |$cond-alpha-rename:244|) 0) |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:394| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:244|) 0) 1 |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| (+ (* 0 |$cond-alpha-rename:244|) 0) |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| (+ (* 0 |$cond-alpha-rename:244|) 0) |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:244| 0)) (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 2) )
      (|g_1032$unknown:30| |$cond-alpha-rename:393| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241| 0 |$cond-alpha-rename:243| |$cond-alpha-rename:242| |$cond-alpha-rename:241|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:397| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:253| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:396| |$cond-alpha-rename:397| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:253|) 0) 1 |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| (+ (* 0 |$cond-alpha-rename:253|) 0) |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:397| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:253|) 0) 1 |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| (+ (* 0 |$cond-alpha-rename:253|) 0) |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| (+ (* 0 |$cond-alpha-rename:253|) 0) |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (not (= |$cond-alpha-rename:253| 0)) )
      (|g_1032$unknown:30| |$cond-alpha-rename:396| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250| 0 |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:262| Int) )
    (=>
      ( and (> (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:262|) 0)))) (>= (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:262|) 0))) 0) (not (= |$cond-alpha-rename:262| 0)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:262| |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259|) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259| (+ (* 0 |$cond-alpha-rename:262|) 0) |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:271| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:271| 0)) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:271| |$cond-alpha-rename:270| |$cond-alpha-rename:269| |$cond-alpha-rename:268|) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:270| |$cond-alpha-rename:269| |$cond-alpha-rename:268| (+ (* 0 |$cond-alpha-rename:271|) 0) |$cond-alpha-rename:270| |$cond-alpha-rename:269| |$cond-alpha-rename:268|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| 1 |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) )
      (|g_without_checking_1152$unknown:41| |$knormal:9| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| 1 |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) )
    (=>
      ( and (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) )
      (|g_without_checking_1152$unknown:41| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| 1 |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) )
    (=>
      ( and (>= |$alpha-42:n_1038| 0) (>= |$alpha-43:x_1039| 0) (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) )
      (|f_1035$unknown:10| |$alpha-43:x_1039| 0 0 0 |$alpha-42:n_1038| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) )
    (=>
      ( and (not (and (>= |$alpha-42:n_1038| 0) (>= |$alpha-43:x_1039| 0))) (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) )
      (|main_1037$unknown:50| 0 |$alpha-43:x_1039| |$alpha-42:n_1038|)
    )
  )
)
(check-sat)

(get-model)

