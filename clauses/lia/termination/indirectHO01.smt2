(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_app_1138 s_app_h_EXPARAM_1131 x_1031 = x_1031
  
     let app_without_checking_1158 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 h_EXPARAM_1090 x_DO_NOT_CARE_1211 x_DO_NOT_CARE_1212 h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 v_1034 =
       let set_flag_app_1138 = true
       in
       let s_app_h_EXPARAM_1131 = h_EXPARAM_1090
       in
         h_1033 set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
           s_app_h_EXPARAM_1131 v_1034
  
     let rec app_1032 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163 h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033 prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034 =
       let u = if prev_set_flag_app_1137 then
                if (7 * 1) + (1 * s_prev_app_h_EXPARAM_1134) >
                   (7 * 1) + (1 * h_EXPARAM_1090) &&
                   (7 * 1) + (1 * h_EXPARAM_1090) >= 0 then
                  ()
                else
                  let u_4585 = fail ()
                  in
                    bot()
               else () in
              app_without_checking_1158 x_DO_NOT_CARE_1162 x_DO_NOT_CARE_1163
                h_EXPARAM_1090 x_DO_NOT_CARE_1160 x_DO_NOT_CARE_1161 h_1033
                prev_set_flag_app_1137 s_prev_app_h_EXPARAM_1134 v_1034
  
     let rec f_1035 x_DO_NOT_CARE_1209 x_DO_NOT_CARE_1210 n_1036 set_flag_app_1138 s_app_h_EXPARAM_1131 u_1037 =
       if n_1036 > 0 then
         app_1032 set_flag_app_1138 s_app_h_EXPARAM_1131
           ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
           set_flag_app_1138 s_app_h_EXPARAM_1131
           (f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 (n_1036 - 1))
       else
         id_1030
  
     let main r =
       let set_flag_app_1138 = false in
       let s_app_h_EXPARAM_1131 = 0 in
       f_1035 set_flag_app_1138 s_app_h_EXPARAM_1131 0
         set_flag_app_1138 s_app_h_EXPARAM_1131 () set_flag_app_1138
         s_app_h_EXPARAM_1131 ()
")

(set-logic HORN)

(declare-fun |id_1030$unknown:50|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:44|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:43|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:45|
  ( Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:31|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:16|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:32|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:11|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:28|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:46|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:34|
  ( Int Int ) Bool
)

(declare-fun |app_without_checking_1158$unknown:27|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:15|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |app_1032$unknown:12|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) (|app_without_checking_1158$unknown:27| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true (|app_1032$unknown:12| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|app_without_checking_1158$unknown:27| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true (|app_1032$unknown:12| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:22| Int) (|$V-reftype:23| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (|app_without_checking_1158$unknown:27| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true (|app_1032$unknown:12| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true )
      (|app_without_checking_1158$unknown:28| |$V-reftype:23| |$V-reftype:22| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:52| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) (|app_without_checking_1158$unknown:27| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:11| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:52| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|app_without_checking_1158$unknown:27| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:11| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:16| Int) (|$V-reftype:18| Int) (|$V-reftype:20| Int) (|$V-reftype:52| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-22:h_1033| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (|app_without_checking_1158$unknown:27| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:11| |$V-reftype:52| |$V-reftype:20| |$V-reftype:18| |$V-reftype:16| |$V-reftype:14| |$alpha-22:h_1033| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:121| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$V-reftype:121| |$knormal:31|) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) (|app_without_checking_1158$unknown:32| |$knormal:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:16| |$V-reftype:121| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:118| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (= |$V-reftype:118| |$knormal:31|) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|app_without_checking_1158$unknown:32| |$knormal:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:16| |$V-reftype:118| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:123| Int) (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (= |$V-reftype:123| |$knormal:31|) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) (|app_without_checking_1158$unknown:32| |$knormal:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_1032$unknown:16| |$V-reftype:123| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:45| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) (|bot$unknown:34| |$knormal:45| |$knormal:44|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:46| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:44| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) (|fail$unknown:46| |$knormal:47| |$knormal:46|) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (= |$alpha-27:u| 1) (not (= 0 |$knormal:43|)) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= (not (= 0 |$knormal:43|)) (and (not (= 0 |$knormal:38|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$knormal:41| 0)) (= |$knormal:41| (+ |$knormal:39| |$knormal:40|)) (= |$knormal:40| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:39| 7) (= (not (= 0 |$knormal:38|)) (> |$knormal:34| |$knormal:37|)) (= |$knormal:37| (+ |$knormal:35| |$knormal:36|)) (= |$knormal:36| |$alpha-19:h_EXPARAM_1090|) (= |$knormal:35| 7) (= |$knormal:34| (+ |$knormal:32| |$knormal:33|)) (= |$knormal:33| |$alpha-24:s_prev_app_h_EXPARAM_1134|) (= |$knormal:32| 7) (not (not (= 0 |$knormal:43|))) (not (= 0 |$alpha-23:prev_set_flag_app_1137|)) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|fail$unknown:45| |$knormal:46|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:x_DO_NOT_CARE_1162| Int) (|$alpha-18:x_DO_NOT_CARE_1163| Int) (|$alpha-19:h_EXPARAM_1090| Int) (|$alpha-20:x_DO_NOT_CARE_1160| Int) (|$alpha-21:x_DO_NOT_CARE_1161| Int) (|$alpha-23:prev_set_flag_app_1137| Int) (|$alpha-24:s_prev_app_h_EXPARAM_1134| Int) (|$alpha-25:v_1034| Int) (|$alpha-27:u| Int) )
    (=>
      ( and (= |$alpha-27:u| 1) (not (not (= 0 |$alpha-23:prev_set_flag_app_1137|))) true true true true (|app_1032$unknown:15| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|) true true true )
      (|app_without_checking_1158$unknown:31| |$alpha-25:v_1034| |$alpha-24:s_prev_app_h_EXPARAM_1134| |$alpha-23:prev_set_flag_app_1137| |$alpha-21:x_DO_NOT_CARE_1161| |$alpha-20:x_DO_NOT_CARE_1160| |$alpha-19:h_EXPARAM_1090| |$alpha-18:x_DO_NOT_CARE_1163| |$alpha-17:x_DO_NOT_CARE_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true true true (|app_1032$unknown:11| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$knormal:59| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) true )
      (|f_1035$unknown:43| |$V-reftype:21| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$knormal:53| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:84| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:55| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) (|f_1035$unknown:44| |$V-reftype:84| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$knormal:53| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) true true true true true true true true true true (|app_1032$unknown:11| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$knormal:59| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) true )
      (|app_1032$unknown:12| |$V-reftype:84| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |$V-reftype:75| |$knormal:55| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$knormal:59| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) (|f_1035$unknown:43| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) true true true true true true true true (|app_1032$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$knormal:59| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|) )
      (|f_1035$unknown:44| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:104| Int) (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:14| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (= |$V-reftype:104| |$knormal:14|) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true (|app_without_checking_1158$unknown:28| |$knormal:14| |$alpha-14:v_1034| |$alpha-8:h_EXPARAM_1090| |$alpha-15:set_flag_app_1138| |$knormal:6| |$alpha-8:h_EXPARAM_1090| |$alpha-15:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true )
      (|app_without_checking_1158$unknown:32| |$V-reftype:104| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1212| Int) (|$alpha-12:set_flag_app_1138| Int) (|$alpha-13:s_app_h_EXPARAM_1131| Int) (|$alpha-14:v_1034| Int) (|$alpha-15:set_flag_app_1138| Int) (|$alpha-6:x_DO_NOT_CARE_1213| Int) (|$alpha-7:x_DO_NOT_CARE_1214| Int) (|$alpha-8:h_EXPARAM_1090| Int) (|$alpha-9:x_DO_NOT_CARE_1211| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 1) (= |$alpha-15:set_flag_app_1138| 1) (|app_without_checking_1158$unknown:31| |$alpha-14:v_1034| |$alpha-13:s_app_h_EXPARAM_1131| |$alpha-12:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|) true true true true true true true )
      (|app_without_checking_1158$unknown:27| |$alpha-14:v_1034| |$alpha-8:h_EXPARAM_1090| |$alpha-15:set_flag_app_1138| |$knormal:6| |$alpha-8:h_EXPARAM_1090| |$alpha-15:set_flag_app_1138| |$alpha-10:x_DO_NOT_CARE_1212| |$alpha-9:x_DO_NOT_CARE_1211| |$alpha-8:h_EXPARAM_1090| |$alpha-7:x_DO_NOT_CARE_1214| |$alpha-6:x_DO_NOT_CARE_1213|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:99| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:99| |$knormal:2|) (|bot$unknown:34| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:34| |$V-reftype:99| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:82| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) (|f_1035$unknown:43| |$V-reftype:82| |$V-reftype:28| |$V-reftype:26| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) true true true true true true true true )
      (|app_1032$unknown:15| |$V-reftype:82| |$V-reftype:28| |$V-reftype:26| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$knormal:59| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:48|))) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:48|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:82| Int) (|$V-reftype:89| Int) (|$V-reftype:91| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:48|))) (|f_1035$unknown:43| |$V-reftype:82| |$V-reftype:91| |$V-reftype:89| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:89| Int) (|$V-reftype:91| Int) (|$V-reftype:93| Int) (|$V-reftype:94| Int) (|$alpha-28:x_DO_NOT_CARE_1209| Int) (|$alpha-29:x_DO_NOT_CARE_1210| Int) (|$alpha-30:n_1036| Int) (|$alpha-31:set_flag_app_1138| Int) (|$alpha-32:s_app_h_EXPARAM_1131| Int) (|$alpha-33:u_1037| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (not (= 0 |$knormal:48|))) (|id_1030$unknown:50| |$V-reftype:94| |$V-reftype:93| |$V-reftype:91| |$V-reftype:89|) (|f_1035$unknown:43| |$V-reftype:93| |$V-reftype:91| |$V-reftype:89| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|) true true true true true true true true )
      (|f_1035$unknown:44| |$V-reftype:94| |$V-reftype:93| |$V-reftype:91| |$V-reftype:89| |$alpha-33:u_1037| |$alpha-32:s_app_h_EXPARAM_1131| |$alpha-31:set_flag_app_1138| |$alpha-30:n_1036| |$alpha-29:x_DO_NOT_CARE_1210| |$alpha-28:x_DO_NOT_CARE_1209|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:53| Int) (|$knormal:59| Int) )
    (=>
      ( and (= |$knormal:59| (+ |$knormal:49| |$alpha-34:c1_COEFFICIENT_1088|)) (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= |$knormal:49| (* |$alpha-35:c0_COEFFICIENT_1087| |$alpha-30:n_1036|)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-30:n_1036| Int) (|$alpha-34:c1_COEFFICIENT_1088| Int) (|$alpha-35:c0_COEFFICIENT_1087| Int) (|$knormal:48| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$knormal:53| (- |$alpha-30:n_1036| 1)) (= (not (= 0 |$knormal:48|)) (> |$alpha-30:n_1036| 0)) (= |$alpha-35:c0_COEFFICIENT_1087| 0) (= |$alpha-34:c1_COEFFICIENT_1088| 0) (not (= 0 |$knormal:48|)) true true true true true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:45| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$alpha-3:set_flag_app_1138| Int) (|$alpha-4:s_app_h_EXPARAM_1131| Int) (|$alpha-5:x_1031| Int) )
    (=>
      ( and (= |$V-reftype:101| |$alpha-5:x_1031|) true true true )
      (|id_1030$unknown:50| |$V-reftype:101| |$alpha-5:x_1031| |$alpha-4:s_app_h_EXPARAM_1131| |$alpha-3:set_flag_app_1138|)
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-37:set_flag_app_1138| Int) (|$alpha-38:s_app_h_EXPARAM_1131| Int) (|$knormal:72| Int) (|$knormal:79| Int) (|$knormal:86| Int) )
    (=>
      ( and (= |$knormal:86| 1) (= |$knormal:79| 1) (= |$knormal:72| 0) (= |$alpha-38:s_app_h_EXPARAM_1131| 0) (= |$alpha-37:set_flag_app_1138| 0) )
      (|f_1035$unknown:43| |$knormal:86| |$alpha-38:s_app_h_EXPARAM_1131| |$alpha-37:set_flag_app_1138| |$knormal:79| |$alpha-38:s_app_h_EXPARAM_1131| |$alpha-37:set_flag_app_1138| |$knormal:72| |$alpha-38:s_app_h_EXPARAM_1131| |$alpha-37:set_flag_app_1138|)
    )
  )
)
(check-sat)

(get-model)

(exit)

