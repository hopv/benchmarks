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
  
     let main_1037 n_1038 x_1039 =
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

(declare-fun |main_1037$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |g_1032$unknown:19|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:9|
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
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:335| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:196| 0)) (not (= |$cond-alpha-rename:188| 0)) (not (= (- |$cond-alpha-rename:324| 1) 0)) (not (= (- |$cond-alpha-rename:335| 1) 0)) (not (= |$cond-alpha-rename:335| 0)) (not (= |$cond-alpha-rename:324| 0)) (|g_1032$unknown:19| |$cond-alpha-rename:202| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:195| |$cond-alpha-rename:194| (+ (* 0 (- |$cond-alpha-rename:335| 1)) 0) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:195| |$cond-alpha-rename:194| (+ (* 0 (- |$cond-alpha-rename:335| 1)) 0) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:195| |$cond-alpha-rename:194| (+ (* 0 |$cond-alpha-rename:335|) 0) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:195| |$cond-alpha-rename:194| (+ (* 0 |$cond-alpha-rename:324|) 0) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|f_1035$unknown:9| |$cond-alpha-rename:203| |$cond-alpha-rename:202| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:188| 1) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) (|f_1035$unknown:9| |$cond-alpha-rename:202| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:196| 1) |$cond-alpha-rename:195| |$cond-alpha-rename:194|) )
      (|f_1035$unknown:9| |$cond-alpha-rename:203| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:335| 1) |$cond-alpha-rename:195| |$cond-alpha-rename:194|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:324| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:196| 0)) (not (= |$cond-alpha-rename:188| 0)) (not (= (- |$cond-alpha-rename:324| 1) 0)) (not (= |$alpha-24:n_1036| 0)) (not (= |$cond-alpha-rename:324| 0)) (>= |$alpha-24:n_1036| 0) (>= |$V-reftype:43| 0) (|main_1037$unknown:26| |$V-reftype:43| |$alpha-24:n_1036|) (|g_1032$unknown:19| |$cond-alpha-rename:202| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:324|) 0) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:203| |$cond-alpha-rename:202| 0 0 (- |$cond-alpha-rename:188| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:202| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:196| 1) 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:203| |$V-reftype:43| 0 0 |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:346| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:196| 0)) (not (= |$cond-alpha-rename:188| 0)) (not (= |$cond-alpha-rename:180| 0)) (not (= (- |$cond-alpha-rename:346| 1) 0)) (not (= |$cond-alpha-rename:346| 0)) (>= |$cond-alpha-rename:180| 0) (>= |$V-reftype:43| 0) (|main_1037$unknown:26| |$V-reftype:43| |$cond-alpha-rename:180|) (|g_1032$unknown:19| |$cond-alpha-rename:202| 0 0 0 0 (+ (* 0 (- |$cond-alpha-rename:346| 1)) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 (- |$cond-alpha-rename:346| 1)) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:346|) 0) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:203| |$cond-alpha-rename:202| 0 0 (- |$cond-alpha-rename:188| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:202| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:196| 1) 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:203| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:346| 1) 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:203| Int) )
    (=>
      ( and (= 0 0) (= 0 0) (= 0 0) (not (= |$cond-alpha-rename:196| 0)) (not (= |$cond-alpha-rename:188| 0)) (not (= |$cond-alpha-rename:180| 0)) (not (= |$alpha-24:n_1036| 0)) (>= |$alpha-24:n_1036| 0) (>= |$V-reftype:43| 0) (>= |$cond-alpha-rename:180| 0) (>= |$V-reftype:43| 0) (|main_1037$unknown:26| |$V-reftype:43| |$cond-alpha-rename:180|) (|main_1037$unknown:26| |$V-reftype:43| |$alpha-24:n_1036|) (|g_1032$unknown:19| |$cond-alpha-rename:202| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|g_1032$unknown:19| |$V-reftype:43| 0 0 0 0 (+ (* 0 |$alpha-24:n_1036|) 0) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:203| |$cond-alpha-rename:202| 0 0 (- |$cond-alpha-rename:188| 1) 0 0) (|f_1035$unknown:9| |$cond-alpha-rename:202| |$V-reftype:43| 0 0 (- |$cond-alpha-rename:196| 1) 0 0) )
      (|f_1035$unknown:9| |$cond-alpha-rename:203| |$V-reftype:43| 0 0 |$alpha-24:n_1036| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:647| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:660| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:357| 1)) (not (= |$cond-alpha-rename:357| 0)) (not (= |$cond-alpha-rename:650| 0)) (= (- |$cond-alpha-rename:650| 1) 0) (not (= 0 |$V-reftype:51|)) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:647| |$cond-alpha-rename:646| (+ (* 0 |$cond-alpha-rename:650|) 0) |$cond-alpha-rename:647| |$cond-alpha-rename:646|) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:357|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (|fail$unknown:11| |$cond-alpha-rename:657| 1) (|bot$unknown:2| |$cond-alpha-rename:660| 1) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:674| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:357| 1)) (not (= |$cond-alpha-rename:357| 0)) (>= 0 0) (>= |$V-reftype:55| 0) (not (= 0 0)) (|main_1037$unknown:26| |$V-reftype:55| 0) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:357|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (|fail$unknown:11| |$cond-alpha-rename:671| 1) (|bot$unknown:2| |$cond-alpha-rename:674| 1) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:679| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:357| 1)) (not (= |$cond-alpha-rename:357| 0)) (not (= |$cond-alpha-rename:679| 0)) (not (not (= 0 |$V-reftype:51|))) (= (- |$cond-alpha-rename:679| 1) 0) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$cond-alpha-rename:676| |$cond-alpha-rename:675| (+ (* 0 |$cond-alpha-rename:679|) 0) |$cond-alpha-rename:676| |$cond-alpha-rename:675|) (|g_1032$unknown:19| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:357|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$cond-alpha-rename:357| Int) )
    (=>
      ( and (= 0 (- |$cond-alpha-rename:357| 1)) (not (= |$cond-alpha-rename:357| 0)) (not (not (= 0 0))) (>= 0 0) (>= |$V-reftype:55| 0) (|main_1037$unknown:26| |$V-reftype:55| 0) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$cond-alpha-rename:357|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$cond-alpha-rename:725| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:729| Int) )
    (=>
      ( and (>= |$V-reftype:55| 0) (not (= |$cond-alpha-rename:729| 0)) (= (- |$cond-alpha-rename:729| 1) 0) (|main_1037$unknown:26| |$V-reftype:55| 0) (|g_1032$unknown:19| |$V-reftype:55| 0 0 |$cond-alpha-rename:726| |$cond-alpha-rename:725| (+ (* 0 |$cond-alpha-rename:729|) 0) |$cond-alpha-rename:726| |$cond-alpha-rename:725|) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) )
    (=>
      ( and (>= |$V-reftype:55| 0) (= 0 0) (= 0 0) (>= 0 0) (>= |$V-reftype:55| 0) (|main_1037$unknown:26| |$V-reftype:55| 0) (|main_1037$unknown:26| |$V-reftype:55| 0) )
      (|f_1035$unknown:9| (+ |$V-reftype:55| 1) |$V-reftype:55| 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:368| Int) )
    ( and (= 0 (- |$cond-alpha-rename:368| 1)) (not (= |$cond-alpha-rename:368| 0)) (not (= 0 |$cond-alpha-rename:14|)) (|g_1032$unknown:19| |$cond-alpha-rename:13| |$cond-alpha-rename:15| |$cond-alpha-rename:14| |$cond-alpha-rename:254| |$cond-alpha-rename:253| (+ (* 0 |$cond-alpha-rename:368|) 0) |$cond-alpha-rename:254| |$cond-alpha-rename:253|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:13| Int) )
    ( and (>= |$cond-alpha-rename:13| 0) (not (= 0 0)) (|main_1037$unknown:26| |$cond-alpha-rename:13| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:52| Int) (|$knormal:16| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:52| 0)) (not (= (- |$cond-alpha-rename:379| 1) 0)) (not (= |$cond-alpha-rename:379| 0)) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:115| |$cond-alpha-rename:114| (+ (* 0 |$cond-alpha-rename:52|) 0) |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:115| |$cond-alpha-rename:114| (+ (* 0 |$cond-alpha-rename:379|) 0) |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|f_1035$unknown:9| |$knormal:16| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| (- |$cond-alpha-rename:52| 1) |$cond-alpha-rename:115| |$cond-alpha-rename:114|) )
      (|g_1032$unknown:19| |$knormal:16| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:115| |$cond-alpha-rename:114| 0 |$cond-alpha-rename:115| |$cond-alpha-rename:114|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:52| Int) (|$knormal:16| Int) )
    (=>
      ( and (= 0 0) (not (= |$cond-alpha-rename:52| 0)) (not (= |$cond-alpha-rename:116| 0)) (>= |$cond-alpha-rename:116| 0) (>= |$alpha-21:a_1034| 0) (|main_1037$unknown:26| |$alpha-21:a_1034| |$cond-alpha-rename:116|) (|g_1032$unknown:19| |$alpha-21:a_1034| 0 0 0 0 (+ (* 0 |$cond-alpha-rename:52|) 0) 0 0) (|f_1035$unknown:9| |$knormal:16| |$alpha-21:a_1034| 0 0 (- |$cond-alpha-rename:52| 1) 0 0) )
      (|g_1032$unknown:19| |$knormal:16| 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:390| Int) )
    (=>
      ( and (not (= (- |$cond-alpha-rename:390| 1) 0)) (not (= |$cond-alpha-rename:390| 0)) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:123| |$cond-alpha-rename:122| (+ (* 0 |$cond-alpha-rename:390|) 0) |$cond-alpha-rename:123| |$cond-alpha-rename:122|) )
      (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:123| |$cond-alpha-rename:122| 0 |$cond-alpha-rename:123| |$cond-alpha-rename:122|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:124| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:124| 0)) (>= |$cond-alpha-rename:124| 0) (>= |$alpha-21:a_1034| 0) (|main_1037$unknown:26| |$alpha-21:a_1034| |$cond-alpha-rename:124|) )
      (|g_1032$unknown:19| |$alpha-21:a_1034| 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)

(get-model)

