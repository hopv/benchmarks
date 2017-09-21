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
  
  
  let main_1037 n_1038 x_1039 =
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

(declare-fun |main_1037$unknown:34|
  ( Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:5| Int) (|$knormal:41| Int) (|$knormal:43| Int) )
    (=>
      ( and (>= |$alpha-24:n_1036| 0) (>= |$cond-alpha-rename:5| 0) (not (= 0 0)) (|main_1037$unknown:33| |$cond-alpha-rename:5| |$alpha-24:n_1036|) (|fail$unknown:18| |$knormal:43| 1) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| 0 0) (|bot$unknown:2| |$knormal:41| 1) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:9| Int) )
    (=>
      ( and (not (not (= 0 0))) (>= |$alpha-24:n_1036| 0) (>= |$cond-alpha-rename:9| 0) (|main_1037$unknown:33| |$cond-alpha-rename:9| |$alpha-24:n_1036|) (|f_without_checking_1189$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| 0 0) )
      (|f_1035$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:57| Int) )
    (=>
      ( and (>= |$alpha-27:n_1038| 0) (>= |$alpha-28:x_1039| 0) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) (|f_1035$unknown:9| |$knormal:57| |$alpha-28:x_1039| 0 0 |$alpha-27:n_1038| 0 0) )
      (|main_1037$unknown:34| |$knormal:57| |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:54| Int) (|$V-reftype:56| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:95| Int) )
    (=>
      ( and (|f_without_checking_1189$unknown:16| |$cond-alpha-rename:109| |$cond-alpha-rename:110| |$V-reftype:54| |$V-reftype:52| (- |$cond-alpha-rename:95| 1) |$cond-alpha-rename:95| 1) (|f_without_checking_1189$unknown:16| |$cond-alpha-rename:110| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| (- |$cond-alpha-rename:95| 1) |$cond-alpha-rename:95| 1) (not (= |$cond-alpha-rename:95| 0)) (not (= |$cond-alpha-rename:95| 0)) (not (= |$cond-alpha-rename:95| 0)) (= 0 (+ (* 0 |$cond-alpha-rename:95|) 0)) (= 0 (+ (* 0 |$cond-alpha-rename:95|) 0)) (= 1 1) (= 1 1) )
      (|f_without_checking_1189$unknown:16| |$cond-alpha-rename:109| |$V-reftype:56| |$V-reftype:54| |$V-reftype:52| |$cond-alpha-rename:95| |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$alpha-15:set_flag_f_1181| Int) (|$alpha-16:s_f_n_1178| Int) )
    (=>
      ( and true )
      (|f_without_checking_1189$unknown:16| (+ |$V-reftype:68| 1) |$V-reftype:68| |$V-reftype:66| |$V-reftype:64| 0 |$alpha-16:s_f_n_1178| |$alpha-15:set_flag_f_1181|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) )
    ( and (|main_1037$unknown:33| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (not (= 0 0)) (>= |$cond-alpha-rename:37| 0) (>= |$cond-alpha-rename:36| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) )
    (=>
      ( and (not (and (>= |$alpha-27:n_1038| 0) (>= |$alpha-28:x_1039| 0))) (|main_1037$unknown:33| |$alpha-28:x_1039| |$alpha-27:n_1038|) )
      (|main_1037$unknown:34| 0 |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(check-sat)

(get-model)

