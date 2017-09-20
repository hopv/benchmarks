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

(declare-fun |f_1035$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |g_1032$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:41|
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
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:84| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:57| 1) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|fail$unknown:13| |$knormal:62| 1) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81| (+ (* 0 |$cond-alpha-rename:57|) 0) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81| (+ (* 0 |$cond-alpha-rename:57|) 0) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:57| 0)) (not (= |$cond-alpha-rename:84| 0)) (not (and (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:57|) 0))) 0)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:57|) 0))) 0) 0))) (= (+ (* 0 |$cond-alpha-rename:57|) 0) (+ (* 0 |$cond-alpha-rename:84|) 0)) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81| (+ (* 0 |$cond-alpha-rename:57|) 0) |$cond-alpha-rename:83| |$cond-alpha-rename:82| |$cond-alpha-rename:81|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:93| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:93| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90|) (|fail$unknown:13| |$knormal:62| 1) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| (+ (* 0 |$cond-alpha-rename:93|) 0) |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:93| 0)) (not (and (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:93|) 0))) 0)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:93|) 0))) 0) 0))) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90| (+ (* 0 |$cond-alpha-rename:93|) 0) |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:90|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:99| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|fail$unknown:13| |$knormal:62| 1) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:208| |$cond-alpha-rename:209| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:102|) 0) 1 |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| (+ (* 0 |$cond-alpha-rename:102|) 0) |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:209| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:102|) 0) 1 |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| (+ (* 0 |$cond-alpha-rename:102|) 0) |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| (+ (* 0 |$cond-alpha-rename:102|) 0) |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:102| 0)) (not (and (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:102|) 0))) 0)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:102|) 0))) 0) 0))) )
      (|g_1032$unknown:30| |$cond-alpha-rename:208| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99| (+ (* 0 |$cond-alpha-rename:102|) 0) |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$cond-alpha-rename:99|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:111| Int) (|$knormal:60| Int) (|$knormal:62| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:60| 1) (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108|) (|fail$unknown:13| |$knormal:62| 1) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (not (= |$cond-alpha-rename:111| 0)) (not (and (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:111|) 0))) 0)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:111|) 0))) 0) 0))) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108| (+ (* 0 |$cond-alpha-rename:111|) 0) |$cond-alpha-rename:110| |$cond-alpha-rename:109| |$cond-alpha-rename:108|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) (= |$alpha-39:n_1036| 0) )
      (|f_1035$unknown:11| (+ |$V-reftype:102| 1) |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) (|g_1032$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| (+ (* 0 |$alpha-39:n_1036|) 0) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) (not (= |$alpha-39:n_1036| 0)) )
      (|f_1035$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$knormal:107| Int) )
    (=>
      ( and (|f_1035$unknown:11| |$knormal:107| |$alpha-43:x_1039| 0 0 0 |$alpha-42:n_1038| 0 0 0) (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) (>= |$alpha-43:x_1039| 0) (>= |$alpha-42:n_1038| 0) )
      (|main_1037$unknown:50| |$knormal:107| |$alpha-43:x_1039| |$alpha-42:n_1038|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:44| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$knormal:72| Int) )
    (=>
      ( and (|g_1032$unknown:24| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| (+ (* 0 |$alpha-39:n_1036|) 0) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) (not (= |$alpha-39:n_1036| 0)) )
      (|f_1035$unknown:10| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| (- |$alpha-39:n_1036| 1) |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) )
    ( and (|f_1035$unknown:10| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117|) (not (= 0 |$cond-alpha-rename:32|)) (not (= |$cond-alpha-rename:120| 0)) (not (and (> (+ (+ 2 (* (- 4) |$cond-alpha-rename:33|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:120|) 0))) 0)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:120|) 0))) 0) 0))) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:129| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:66| 1) |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63| (+ (* 0 |$cond-alpha-rename:129|) 0) |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63| (+ (* 0 |$cond-alpha-rename:129|) 0) |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:129|) 0))) 0) 0) (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:129|) 0))) 0)) (not (= |$cond-alpha-rename:129| 0)) (not (= |$cond-alpha-rename:66| 0)) (= (+ (* 0 |$cond-alpha-rename:129|) 0) (+ (* 0 |$cond-alpha-rename:66|) 0)) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63| (+ (* 0 |$cond-alpha-rename:129|) 0) |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:63|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:138| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|f_1035$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| (- |$cond-alpha-rename:75| 1) |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|g_1032$unknown:24| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| (+ (* 0 |$cond-alpha-rename:138|) 0) |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| (+ (* 0 |$cond-alpha-rename:138|) 0) |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (not (= |$cond-alpha-rename:138| 0)) (not (= |$cond-alpha-rename:75| 0)) (= (+ (* 0 |$cond-alpha-rename:138|) 0) (+ (* 0 |$cond-alpha-rename:75|) 0)) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| (+ (* 0 |$cond-alpha-rename:138|) 0) |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:147| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144| (+ (* 0 |$cond-alpha-rename:147|) 0) |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:147|) 0))) 0) 0) (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:147|) 0))) 0)) (not (= |$cond-alpha-rename:147| 0)) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144| (+ (* 0 |$cond-alpha-rename:147|) 0) |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| (+ (* 0 |$cond-alpha-rename:156|) 0) |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (not (= |$cond-alpha-rename:156| 0)) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153| (+ (* 0 |$cond-alpha-rename:156|) 0) |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:211| |$cond-alpha-rename:212| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:165|) 0) 1 |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| (+ (* 0 |$cond-alpha-rename:165|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:212| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:165|) 0) 1 |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| (+ (* 0 |$cond-alpha-rename:165|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| (+ (* 0 |$cond-alpha-rename:165|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:165|) 0))) 0) 0) (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:165|) 0))) 0)) (not (= |$cond-alpha-rename:165| 0)) )
      (|g_1032$unknown:30| |$cond-alpha-rename:211| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162| (+ (* 0 |$cond-alpha-rename:165|) 0) |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:162|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:174| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:214| |$cond-alpha-rename:215| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:174|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|g_without_checking_1152$unknown:42| |$cond-alpha-rename:215| |$alpha-33:a_1034| |$alpha-33:a_1034| (+ (* 0 |$cond-alpha-rename:174|) 0) 1 |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (not (= |$cond-alpha-rename:174| 0)) )
      (|g_1032$unknown:30| |$cond-alpha-rename:214| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (+ (* 0 |$cond-alpha-rename:174|) 0) |$cond-alpha-rename:173| |$cond-alpha-rename:172| |$cond-alpha-rename:171|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:183| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180|) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (>= (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:183|) 0))) 0) 0) (> (+ (+ 2 (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) 0) (+ (+ 2 (* (- 4) (+ (* 0 |$cond-alpha-rename:183|) 0))) 0)) (not (= |$cond-alpha-rename:183| 0)) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180| (+ (* 0 |$cond-alpha-rename:183|) 0) |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) )
    (=>
      ( and (|f_1035$unknown:10| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:192| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (not (= |$cond-alpha-rename:192| 0)) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189| (+ (* 0 |$cond-alpha-rename:192|) 0) |$cond-alpha-rename:191| |$cond-alpha-rename:190| |$cond-alpha-rename:189|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| 1 |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) )
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
      ( and (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) (>= |$alpha-43:x_1039| 0) (>= |$alpha-42:n_1038| 0) )
      (|f_1035$unknown:10| |$alpha-43:x_1039| 0 0 0 |$alpha-42:n_1038| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) )
    (=>
      ( and (|main_1037$unknown:49| |$alpha-43:x_1039| |$alpha-42:n_1038|) (not (and (>= |$alpha-42:n_1038| 0) (>= |$alpha-43:x_1039| 0))) )
      (|main_1037$unknown:50| 0 |$alpha-43:x_1039| |$alpha-42:n_1038|)
    )
  )
)
(check-sat)

(get-model)

