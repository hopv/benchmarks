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

(declare-fun |main_1037$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:19|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |succ_1030$unknown:31|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
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
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_succ_1092| Int) (|$alpha-9:s_prev_succ_n_1091| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| 1) (|f_1035$unknown:8| |$alpha-10:n_1031| |$alpha-9:s_prev_succ_n_1091| |$alpha-8:prev_set_flag_succ_1092| |$cond-alpha-rename:116| |$cond-alpha-rename:115| |$cond-alpha-rename:114|) (|fail$unknown:11| |$knormal:11| 1) (not (= 0 |$alpha-8:prev_set_flag_succ_1092|)) (= |$cond-alpha-rename:116| 0) )
      (|succ_1030$unknown:31| (+ |$alpha-10:n_1031| 1) |$alpha-10:n_1031| |$alpha-9:s_prev_succ_n_1091| |$alpha-8:prev_set_flag_succ_1092|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$alpha-24:n_1036| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) )
    (=>
      ( and (|f_1035$unknown:8| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$alpha-24:n_1036| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|f_1035$unknown:8| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:106| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|f_1035$unknown:9| |$cond-alpha-rename:112| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:98| 1) |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|f_1035$unknown:9| |$cond-alpha-rename:113| |$cond-alpha-rename:112| |$V-reftype:41| |$V-reftype:39| (- |$cond-alpha-rename:90| 1) |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|g_1032$unknown:19| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:97| |$cond-alpha-rename:96| (+ (* 0 |$cond-alpha-rename:98|) 0) |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|g_1032$unknown:19| |$cond-alpha-rename:112| |$V-reftype:41| |$V-reftype:39| |$cond-alpha-rename:97| |$cond-alpha-rename:96| (+ (* 0 |$cond-alpha-rename:98|) 0) |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (not (= |$cond-alpha-rename:98| 0)) (not (= |$cond-alpha-rename:106| 0)) (not (= |$cond-alpha-rename:90| 0)) (not (= |$alpha-24:n_1036| 0)) (= (+ (* 0 |$cond-alpha-rename:98|) 0) (+ (* 0 |$cond-alpha-rename:106|) 0)) (= (+ (* 0 |$cond-alpha-rename:98|) 0) (+ (* 0 |$cond-alpha-rename:90|) 0)) (= (+ (* 0 |$cond-alpha-rename:98|) 0) (+ (* 0 |$alpha-24:n_1036|) 0)) )
      (|f_1035$unknown:9| |$cond-alpha-rename:113| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |$alpha-24:n_1036| |$cond-alpha-rename:97| |$cond-alpha-rename:96|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$alpha-24:n_1036| Int) )
    (=>
      ( and (|f_1035$unknown:8| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-24:n_1036| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (|succ_1030$unknown:31| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51|) (= |$alpha-24:n_1036| 0) )
      (|f_1035$unknown:9| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-24:n_1036| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$V-reftype:34| Int) (|$alpha-22:set_flag_succ_1093| Int) (|$alpha-23:s_succ_n_1090| Int) (|$alpha-24:n_1036| Int) (|$knormal:30| Int) )
    (=>
      ( and (|g_1032$unknown:19| |$V-reftype:34| |$V-reftype:13| |$knormal:30| |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093| (+ (* 0 |$alpha-24:n_1036|) 0) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|) (not (= |$alpha-24:n_1036| 0)) )
      (|f_1035$unknown:8| |$V-reftype:34| |$V-reftype:13| |$knormal:30| (- |$alpha-24:n_1036| 1) |$alpha-23:s_succ_n_1090| |$alpha-22:set_flag_succ_1093|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) (|$knormal:57| Int) )
    (=>
      ( and (|f_1035$unknown:9| |$knormal:57| |$alpha-28:x_1039| 0 0 |$alpha-27:n_1038| 0 0) (|main_1037$unknown:26| |$alpha-28:x_1039| |$alpha-27:n_1038|) (>= |$alpha-28:x_1039| 0) (>= |$alpha-27:n_1038| 0) )
      (|main_1037$unknown:27| |$knormal:57| |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) )
    ( and (|f_1035$unknown:8| |$cond-alpha-rename:13| |$cond-alpha-rename:15| |$cond-alpha-rename:14| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118|) (= |$cond-alpha-rename:120| 0) (not (= 0 |$cond-alpha-rename:14|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1035$unknown:8| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_1035$unknown:9| |$knormal:16| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| (- |$cond-alpha-rename:34| 1) |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:65| |$cond-alpha-rename:64| (+ (* 0 |$cond-alpha-rename:34|) 0) |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (not (= |$cond-alpha-rename:34| 0)) (not (= |$cond-alpha-rename:66| 0)) (= (+ (* 0 |$cond-alpha-rename:34|) 0) (+ (* 0 |$cond-alpha-rename:66|) 0)) )
      (|g_1032$unknown:19| |$knormal:16| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:65| |$cond-alpha-rename:64| (+ (* 0 |$cond-alpha-rename:34|) 0) |$cond-alpha-rename:65| |$cond-alpha-rename:64|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:set_flag_succ_1093| Int) (|$alpha-20:s_succ_n_1090| Int) (|$alpha-21:a_1034| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) )
    (=>
      ( and (|f_1035$unknown:8| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (not (= |$cond-alpha-rename:74| 0)) )
      (|g_1032$unknown:19| |$alpha-21:a_1034| |$alpha-20:s_succ_n_1090| |$alpha-19:set_flag_succ_1093| |$cond-alpha-rename:73| |$cond-alpha-rename:72| (+ (* 0 |$cond-alpha-rename:74|) 0) |$cond-alpha-rename:73| |$cond-alpha-rename:72|)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-28:x_1039| |$alpha-27:n_1038|) (>= |$alpha-28:x_1039| 0) (>= |$alpha-27:n_1038| 0) )
      (|f_1035$unknown:8| |$alpha-28:x_1039| 0 0 |$alpha-27:n_1038| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-27:n_1038| Int) (|$alpha-28:x_1039| Int) )
    (=>
      ( and (|main_1037$unknown:26| |$alpha-28:x_1039| |$alpha-27:n_1038|) (not (and (>= |$alpha-27:n_1038| 0) (>= |$alpha-28:x_1039| 0))) )
      (|main_1037$unknown:27| 0 |$alpha-28:x_1039| |$alpha-27:n_1038|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_succ_1092| Int) (|$alpha-9:s_prev_succ_n_1091| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) )
    (=>
      ( and (|f_1035$unknown:8| |$alpha-10:n_1031| |$alpha-9:s_prev_succ_n_1091| |$alpha-8:prev_set_flag_succ_1092| |$cond-alpha-rename:124| |$cond-alpha-rename:123| |$cond-alpha-rename:122|) (= |$cond-alpha-rename:124| 0) (not (not (= 0 |$alpha-8:prev_set_flag_succ_1092|))) )
      (|succ_1030$unknown:31| (+ |$alpha-10:n_1031| 1) |$alpha-10:n_1031| |$alpha-9:s_prev_succ_n_1091| |$alpha-8:prev_set_flag_succ_1092|)
    )
  )
)
(check-sat)

(get-model)

