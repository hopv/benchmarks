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
  
     let main n_1038 x_1039 =
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

(declare-fun |fail$unknown:12|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:52|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:46|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:30|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:47|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:24|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:42|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_without_checking_1152$unknown:41|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:29|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:25|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:105| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:105| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:105| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:25| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:132| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$V-reftype:132| |$knormal:40|) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:47| |$knormal:40| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      (|g_1032$unknown:30| |$V-reftype:132| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) (|bot$unknown:2| |$knormal:60| |$knormal:59|) )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:102| Int) (|$V-reftype:103| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:63|)) (|succ_1030$unknown:52| |$V-reftype:103| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96|) true true true true true true true (|f_1035$unknown:10| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|f_1035$unknown:11| |$V-reftype:103| |$V-reftype:102| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:100| Int) (|$V-reftype:18| Int) (|$V-reftype:96| Int) (|$V-reftype:98| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:63|)) true true true true true true true (|f_1035$unknown:10| |$V-reftype:18| |$V-reftype:100| |$V-reftype:98| |$V-reftype:96| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true true true (|f_1035$unknown:10| |$V-reftype:18| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|g_1032$unknown:29| |$V-reftype:18| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| |$knormal:78| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) (|g_1032$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| |$knormal:78| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) true true true true true true true (|f_1035$unknown:10| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|f_1035$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$V-reftype:49| |$alpha-39:n_1036| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:19| Int) (|$V-reftype:20| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) (|g_1032$unknown:24| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| |$knormal:78| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) true true true true true true true (|f_1035$unknown:11| |$V-reftype:20| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$knormal:70| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) )
      (|g_1032$unknown:25| |$V-reftype:20| |$V-reftype:19| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| |$knormal:78| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:63|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:63|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:63|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:17| Int) (|$V-reftype:44| Int) (|$alpha-36:set_flag_g_1134| Int) (|$alpha-37:s_g_r_EXPARAM_1127| Int) (|$alpha-38:s_g_a_1129| Int) (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) (|g_1032$unknown:24| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134| |$knormal:78| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|) true true true true true true true )
      (|f_1035$unknown:10| |$V-reftype:44| |$V-reftype:17| |$V-reftype:15| |$knormal:72| |$knormal:70| |$alpha-38:s_g_a_1129| |$alpha-37:s_g_r_EXPARAM_1127| |$alpha-36:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:64| Int) (|$knormal:70| Int) (|$knormal:78| Int) )
    (=>
      ( and (= |$knormal:78| (+ |$knormal:64| |$alpha-40:c1_COEFFICIENT_1086|)) (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= |$knormal:64| (* |$alpha-41:c0_COEFFICIENT_1085| |$alpha-39:n_1036|)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-39:n_1036| Int) (|$alpha-40:c1_COEFFICIENT_1086| Int) (|$alpha-41:c0_COEFFICIENT_1085| Int) (|$knormal:63| Int) (|$knormal:70| Int) )
    (=>
      ( and (= |$knormal:70| (- |$alpha-39:n_1036| 1)) (= (not (= 0 |$knormal:63|)) (= |$alpha-39:n_1036| 0)) (= |$alpha-41:c0_COEFFICIENT_1085| 0) (= |$alpha-40:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:63|))) true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:12| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:61| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= |$knormal:59| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true (|fail$unknown:13| |$knormal:62| |$knormal:61|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:25| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:46| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_without_checking_1152$unknown:41| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:25| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true )
      (|g_without_checking_1152$unknown:42| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:77| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-29:r_1033| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_without_checking_1152$unknown:41| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_1032$unknown:24| |$V-reftype:77| |$V-reftype:43| |$V-reftype:41| |$alpha-29:r_1033| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) true true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) true true (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:129| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (= |$V-reftype:129| |$knormal:40|) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_without_checking_1152$unknown:47| |$knormal:40| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_1032$unknown:30| |$V-reftype:129| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (= |$V-reftype:134| |$knormal:40|) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_without_checking_1152$unknown:47| |$knormal:40| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_1032$unknown:30| |$V-reftype:134| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (= |$alpha-35:u| 1) (not (= 0 |$knormal:58|)) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:50| Int) (|$knormal:51| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:55| Int) (|$knormal:56| Int) (|$knormal:57| Int) (|$knormal:58| Int) (|$knormal:61| Int) )
    (=>
      ( and (= |$knormal:61| 1) (= (not (= 0 |$knormal:58|)) (and (not (= 0 |$knormal:51|)) (not (= 0 |$knormal:57|)))) (= (not (= 0 |$knormal:57|)) (>= |$knormal:56| 0)) (= |$knormal:56| (+ |$knormal:54| |$knormal:55|)) (= |$knormal:55| 0) (= |$knormal:54| (+ |$knormal:52| |$knormal:53|)) (= |$knormal:53| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:52| 2) (= (not (= 0 |$knormal:51|)) (> |$knormal:45| |$knormal:50|)) (= |$knormal:50| (+ |$knormal:48| |$knormal:49|)) (= |$knormal:49| 0) (= |$knormal:48| (+ |$knormal:46| |$knormal:47|)) (= |$knormal:47| (* (- 4) |$alpha-25:r_EXPARAM_1088|)) (= |$knormal:46| 2) (= |$knormal:45| (+ |$knormal:43| |$knormal:44|)) (= |$knormal:44| 0) (= |$knormal:43| (+ |$knormal:41| |$knormal:42|)) (= |$knormal:42| (* (- 4) |$alpha-31:s_prev_g_r_EXPARAM_1130|)) (= |$knormal:41| 2) (not (not (= 0 |$knormal:58|))) (not (= 0 |$alpha-30:prev_set_flag_g_1133|)) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|fail$unknown:12| |$knormal:61|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:x_DO_NOT_CARE_1157| Int) (|$alpha-23:x_DO_NOT_CARE_1158| Int) (|$alpha-24:x_DO_NOT_CARE_1159| Int) (|$alpha-25:r_EXPARAM_1088| Int) (|$alpha-26:x_DO_NOT_CARE_1154| Int) (|$alpha-27:x_DO_NOT_CARE_1155| Int) (|$alpha-28:x_DO_NOT_CARE_1156| Int) (|$alpha-30:prev_set_flag_g_1133| Int) (|$alpha-31:s_prev_g_r_EXPARAM_1130| Int) (|$alpha-32:s_prev_g_a_1132| Int) (|$alpha-33:a_1034| Int) (|$alpha-35:u| Int) )
    (=>
      ( and (= |$alpha-35:u| 1) (not (not (= 0 |$alpha-30:prev_set_flag_g_1133|))) (|g_1032$unknown:29| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|) true true true true true true true true true true )
      (|g_without_checking_1152$unknown:46| |$alpha-33:a_1034| |$alpha-32:s_prev_g_a_1132| |$alpha-31:s_prev_g_r_EXPARAM_1130| |$alpha-30:prev_set_flag_g_1133| |$alpha-28:x_DO_NOT_CARE_1156| |$alpha-27:x_DO_NOT_CARE_1155| |$alpha-26:x_DO_NOT_CARE_1154| |$alpha-25:r_EXPARAM_1088| |$alpha-24:x_DO_NOT_CARE_1159| |$alpha-23:x_DO_NOT_CARE_1158| |$alpha-22:x_DO_NOT_CARE_1157|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:17| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (= |$V-reftype:109| |$knormal:17|) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) (|g_without_checking_1152$unknown:42| |$knormal:17| |$knormal:9| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true )
      (|g_without_checking_1152$unknown:47| |$V-reftype:109| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true (|g_without_checking_1152$unknown:42| |$knormal:9| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true )
      (|g_without_checking_1152$unknown:41| |$knormal:9| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:r_EXPARAM_1088| Int) (|$alpha-11:x_DO_NOT_CARE_1205| Int) (|$alpha-12:x_DO_NOT_CARE_1206| Int) (|$alpha-13:x_DO_NOT_CARE_1207| Int) (|$alpha-15:set_flag_g_1134| Int) (|$alpha-16:s_g_r_EXPARAM_1127| Int) (|$alpha-17:s_g_a_1129| Int) (|$alpha-18:a_1034| Int) (|$alpha-19:set_flag_g_1134| Int) (|$alpha-7:x_DO_NOT_CARE_1208| Int) (|$alpha-8:x_DO_NOT_CARE_1209| Int) (|$alpha-9:x_DO_NOT_CARE_1210| Int) )
    (=>
      ( and (= |$alpha-19:set_flag_g_1134| 1) (|g_without_checking_1152$unknown:46| |$alpha-18:a_1034| |$alpha-17:s_g_a_1129| |$alpha-16:s_g_r_EXPARAM_1127| |$alpha-15:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|) true true true true true true true true true true )
      (|g_without_checking_1152$unknown:41| |$alpha-18:a_1034| |$alpha-18:a_1034| |$alpha-10:r_EXPARAM_1088| |$alpha-19:set_flag_g_1134| |$alpha-13:x_DO_NOT_CARE_1207| |$alpha-12:x_DO_NOT_CARE_1206| |$alpha-11:x_DO_NOT_CARE_1205| |$alpha-10:r_EXPARAM_1088| |$alpha-9:x_DO_NOT_CARE_1210| |$alpha-8:x_DO_NOT_CARE_1209| |$alpha-7:x_DO_NOT_CARE_1208|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:107| Int) (|$alpha-3:set_flag_g_1134| Int) (|$alpha-4:s_g_r_EXPARAM_1127| Int) (|$alpha-5:s_g_a_1129| Int) (|$alpha-6:n_1031| Int) )
    (=>
      ( and (= |$V-reftype:107| (+ |$alpha-6:n_1031| 1)) true true true true )
      (|succ_1030$unknown:52| |$V-reftype:107| |$alpha-6:n_1031| |$alpha-5:s_g_a_1129| |$alpha-4:s_g_r_EXPARAM_1127| |$alpha-3:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      (|f_1035$unknown:10| |$alpha-43:x_1039| |$alpha-49:s_g_a_1129| |$alpha-48:s_g_r_EXPARAM_1127| |$alpha-47:set_flag_g_1134| |$alpha-42:n_1038| |$alpha-49:s_g_a_1129| |$alpha-48:s_g_r_EXPARAM_1127| |$alpha-47:set_flag_g_1134|)
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-42:n_1038| Int) (|$alpha-43:x_1039| Int) (|$alpha-44:x_DO_NOT_CARE_1202| Int) (|$alpha-45:x_DO_NOT_CARE_1203| Int) (|$alpha-46:x_DO_NOT_CARE_1204| Int) (|$alpha-47:set_flag_g_1134| Int) (|$alpha-48:s_g_r_EXPARAM_1127| Int) (|$alpha-49:s_g_a_1129| Int) (|$knormal:90| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:92|)) (and (not (= 0 |$knormal:90|)) (not (= 0 |$knormal:91|)))) (= (not (= 0 |$knormal:91|)) (>= |$alpha-43:x_1039| 0)) (= (not (= 0 |$knormal:90|)) (>= |$alpha-42:n_1038| 0)) (= |$alpha-49:s_g_a_1129| 0) (= |$alpha-48:s_g_r_EXPARAM_1127| 0) (= |$alpha-47:set_flag_g_1134| 0) (= |$alpha-46:x_DO_NOT_CARE_1204| 0) (= |$alpha-45:x_DO_NOT_CARE_1203| 0) (= |$alpha-44:x_DO_NOT_CARE_1202| 0) (not (= 0 |$knormal:92|)) )
      true
    )
  )
)
(check-sat)

(exit)

