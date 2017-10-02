(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1086 = 0
     let rec c0_COEFFICIENT_1085 = 0
  
     let rec succ_without_checking_1117 set_flag_succ_1093 s_succ_n_1090 n_1031 =
       let set_flag_succ_1093 = true
       in
       let s_succ_n_1090 = n_1031
       in
         n_1031 + 1
  
     let rec succ_1030 prev_set_flag_succ_1092 s_prev_succ_n_1091 n_1031 =
       let u = if prev_set_flag_succ_1092 then
                let u_1232 = fail ()
                in
                  bot()
               else () in
              succ_without_checking_1117 prev_set_flag_succ_1092
                s_prev_succ_n_1091 n_1031
  
  
     let g_1032 x_DO_NOT_CARE_1200 x_DO_NOT_CARE_1201 r_EXPARAM_1088 x_DO_NOT_CARE_1198 x_DO_NOT_CARE_1199 r_1033 set_flag_succ_1093 s_succ_n_1090 a_1034 =
       r_1033 set_flag_succ_1093 s_succ_n_1090
         (r_1033 set_flag_succ_1093 s_succ_n_1090 a_1034)
  
     let rec f_1035 set_flag_succ_1093 s_succ_n_1090 n_1036 =
       if n_1036 = 0 then
         succ_1030
       else
         g_1032 set_flag_succ_1093 s_succ_n_1090
           ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086)
           set_flag_succ_1093 s_succ_n_1090
           (f_1035 set_flag_succ_1093 s_succ_n_1090 (n_1036 - 1))
  
     let main n_1038 x_1039 =
       let x_DO_NOT_CARE_1196 = false in
       let x_DO_NOT_CARE_1197 = 0 in
       let set_flag_succ_1093 = false in
       let s_succ_n_1090 = 0 in
            if n_1038 >= 0 && x_1039 >= 0 then
         f_1035 set_flag_succ_1093 s_succ_n_1090 n_1038 set_flag_succ_1093
           s_succ_n_1090 x_1039
       else
         0
")

(set-logic HORN)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:19|
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
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:329| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$cond-alpha-rename:199| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:193| 1) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (|f_1035$unknown:9| |$cond-alpha-rename:200| |$cond-alpha-rename:199| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:185| 1) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:192| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:318|) 0) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:192| |$cond-alpha-rename:191| (+ (* 0 |$cond-alpha-rename:329|) 0) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:192| |$cond-alpha-rename:191| (+ (* 0 (- |$cond-alpha-rename:329| 1)) 0) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (|g_1032$unknown:19| |$cond-alpha-rename:199| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:192| |$cond-alpha-rename:191| (+ (* 0 (- |$cond-alpha-rename:329| 1)) 0) |$cond-alpha-rename:192| |$cond-alpha-rename:191|) (not (= |$cond-alpha-rename:318| 0)) (not (= |$cond-alpha-rename:329| 0)) (not (= (- |$cond-alpha-rename:329| 1) 0)) (not (= (- |$cond-alpha-rename:318| 1) 0)) (not (= |$cond-alpha-rename:185| 0)) (not (= |$cond-alpha-rename:193| 0)) (= 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:200| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:329| 1) |$cond-alpha-rename:192| |$cond-alpha-rename:191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:318| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$cond-alpha-rename:199| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:193| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:200| |$cond-alpha-rename:199| 0 0 (- |$cond-alpha-rename:185| 1) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:318|) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|g_1032$unknown:19| |$cond-alpha-rename:199| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (>= |$V-reftype:43| 0) (>= |$alpha-24:n_1036| 0) (not (= |$cond-alpha-rename:318| 0)) (not (= |$alpha-24:n_1036| 0)) (not (= (- |$cond-alpha-rename:318| 1) 0)) (not (= |$cond-alpha-rename:185| 0)) (not (= |$cond-alpha-rename:193| 0)) (= 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:200| |$V-reftype:43| 0 0 |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$cond-alpha-rename:199| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:193| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:200| |$cond-alpha-rename:199| 0 0 (- |$cond-alpha-rename:185| 1) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:340|) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 (- |$cond-alpha-rename:340| 1)) 0) 0 0) (|g_1032$unknown:19| |$cond-alpha-rename:199| 0 0 0 0 (+ (* 0 (- |$cond-alpha-rename:340| 1)) 0) 0 0) (>= |$V-reftype:43| 0) (>= |$cond-alpha-rename:177| 0) (not (= |$cond-alpha-rename:340| 0)) (not (= (- |$cond-alpha-rename:340| 1) 0)) (not (= |$cond-alpha-rename:177| 0)) (not (= |$cond-alpha-rename:185| 0)) (not (= |$cond-alpha-rename:193| 0)) (= 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:200| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:340| 1) 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$cond-alpha-rename:199| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:193| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:200| |$cond-alpha-rename:199| 0 0 (- |$cond-alpha-rename:185| 1) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|g_1032$unknown:19| |$cond-alpha-rename:199| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (>= |$V-reftype:43| 0) (>= |$cond-alpha-rename:177| 0) (>= |$V-reftype:43| 0) (>= |$alpha-24:n_1036| 0) (not (= |$alpha-24:n_1036| 0)) (not (= |$cond-alpha-rename:177| 0)) (not (= |$cond-alpha-rename:185| 0)) (not (= |$cond-alpha-rename:193| 0)) (= 0 0) (= 0 0) (= 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:200| |$V-reftype:43| 0 0 |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:587| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:597| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:351| 1)) (not (= |$cond-alpha-rename:351| 0)) (not (= |$cond-alpha-rename:587| 0)) (= (- |$cond-alpha-rename:587| 1) 0) (not (= 0 |$V-reftype:51|)) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:584| |$cond-alpha-rename:583| (+ (* 0 |$cond-alpha-rename:587|) 0) |$cond-alpha-rename:584| |$cond-alpha-rename:583|) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:351|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (|fail$unknown:11| |$cond-alpha-rename:594| 1) (|bot$unknown:2| |$cond-alpha-rename:597| 1) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:608| Int) (|$cond-alpha-rename:611| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:351| 1)) (not (= |$cond-alpha-rename:351| 0)) (>= 0 0) (>= |$V-reftype:55| 0) (not (= 0 0)) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:351|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (|fail$unknown:11| |$cond-alpha-rename:608| 1) (|bot$unknown:2| |$cond-alpha-rename:611| 1) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:612| Int) (|$cond-alpha-rename:613| Int) (|$cond-alpha-rename:616| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:351| 1)) (not (= |$cond-alpha-rename:351| 0)) (not (= |$cond-alpha-rename:616| 0)) (not (not (= 0 |$V-reftype:51|))) (= (- |$cond-alpha-rename:616| 1) 0) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:613| |$cond-alpha-rename:612| (+ (* 0 |$cond-alpha-rename:616|) 0) |$cond-alpha-rename:613| |$cond-alpha-rename:612|) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:351|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:351| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:351| 1)) (not (= |$cond-alpha-rename:351| 0)) (not (not (= 0 0))) (>= 0 0) (>= |$V-reftype:55| 0) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:351|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:663| Int) (|$cond-alpha-rename:666| Int) )
    (=>
      ( and (>= |$V-reftype:55| 0) (not (= |$cond-alpha-rename:666| 0)) (= (- |$cond-alpha-rename:666| 1) 0) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$cond-alpha-rename:663| |$cond-alpha-rename:662| (+ (* 0 |$cond-alpha-rename:666|) 0) |$cond-alpha-rename:663| |$cond-alpha-rename:662|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) )
    (=>
      ( and (>= |$V-reftype:55| 0) (= 0 0) (= 0 0) (>= 0 0) (>= |$V-reftype:55| 0) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:362| Int) )
    ( and (|g_1032$unknown:19| |$cond-alpha-rename:13| |$cond-alpha-rename:15| |$cond-alpha-rename:14| |$cond-alpha-rename:250| |$cond-alpha-rename:249| (+ (* 0 |$cond-alpha-rename:362|) 0) |$cond-alpha-rename:250| |$cond-alpha-rename:249|) (not (= 0 |$cond-alpha-rename:14|)) (not (= |$cond-alpha-rename:362| 0)) (= 0 (- |$cond-alpha-rename:362| 1)) )
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:51| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$knormal:16| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| (- |$cond-alpha-rename:51| 1) |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:113| |$cond-alpha-rename:112| (+ (* 0 |$cond-alpha-rename:373|) 0) |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:113| |$cond-alpha-rename:112| (+ (* 0 |$cond-alpha-rename:51|) 0) |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (not (= |$cond-alpha-rename:373| 0)) (not (= (- |$cond-alpha-rename:373| 1) 0)) (not (= |$cond-alpha-rename:51| 0)) (= 0 0) )
      (|g_1032$unknown:19| |$knormal:16| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:113| |$cond-alpha-rename:112| 0 |$cond-alpha-rename:113| |$cond-alpha-rename:112|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:51| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$knormal:16| |$alpha-21:a_1034| 0 0 (- |$cond-alpha-rename:51| 1) 0 0) (|g_1032$unknown:19| |$alpha-21:a_1034| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:51|) 0) 0 0) (>= |$alpha-21:a_1034| 0) (>= |$cond-alpha-rename:114| 0) (not (= |$cond-alpha-rename:114| 0)) (not (= |$cond-alpha-rename:51| 0)) (= 0 0) )
      (|g_1032$unknown:19| |$knormal:16| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:121| |$cond-alpha-rename:120| (+ (* 0 |$cond-alpha-rename:384|) 0) |$cond-alpha-rename:121| |$cond-alpha-rename:120|) (not (= |$cond-alpha-rename:384| 0)) (not (= (- |$cond-alpha-rename:384| 1) 0)) )
      (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:121| |$cond-alpha-rename:120| 0 |$cond-alpha-rename:121| |$cond-alpha-rename:120|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:122| Int) )
    (=>
      ( and (>= |$alpha-21:a_1034| 0) (>= |$cond-alpha-rename:122| 0) (not (= |$cond-alpha-rename:122| 0)) )
      (|g_1032$unknown:19| |$alpha-21:a_1034| 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

