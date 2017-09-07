(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c3_COEFFICIENT_1089 = 0
     let rec c2_COEFFICIENT_1088 = 0
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_omega_1141 s_omega_x_1138 x_1031 = x_1031
  
     let rec omega_1032 omega_without_checking_1162 prev_set_flag_omega_1140 s_prev_omega_x_1139 x_1033 =
       let u =if prev_set_flag_omega_1140 then
                let u_4029 = fail ()
                in
                  bot()
              else () in
              omega_without_checking_1162 prev_set_flag_omega_1140
                s_prev_omega_x_1139 x_1033
  
     let rec omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033 =
       let set_flag_omega_1141 = true
       in
       let s_omega_x_1138 = x_1033
       in
         omega_1032 omega_without_checking_1162 set_flag_omega_1141 s_omega_x_1138 x_1033
  
     let f_1034 x_DO_NOT_CARE_1245 x_DO_NOT_CARE_1246 x_EXPARAM_1092 x_DO_NOT_CARE_1243 x_DO_NOT_CARE_1244 x_1035 x_DO_NOT_CARE_1241 x_DO_NOT_CARE_1242 y_EXPARAM_1093 x_DO_NOT_CARE_1239 x_DO_NOT_CARE_1240 y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037 =
       y_1036 set_flag_omega_1141 s_omega_x_1138 z_1037
  
     let main =
       f_1034 false 0 c2_COEFFICIENT_1088 false 0
         (f_1034 false 0 c0_COEFFICIENT_1084 false 0 id_1030 false 0
           c1_COEFFICIENT_1085 false 0 omega_without_checking_1162) false 0
         c3_COEFFICIENT_1089 false 0 id_1030 false 0 1
")

(set-logic HORN)

(declare-fun |id_1030$unknown:28|
  ( Int Int ) Bool
)

(declare-fun |id_1030$unknown:27|
  ( Int ) Bool
)

(declare-fun |f_1034$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:22|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:21|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1030$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:41|
  ( Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:39|
  ( Int ) Bool
)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:32|
  ( Int Int ) Bool
)

(declare-fun |omega_1032$unknown:31|
  ( Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:83| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:83| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:83| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:69| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$V-reftype:88| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:7| |$cond-alpha-rename:69|) (= |$knormal:10| 1) (= |$cond-alpha-rename:68| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:37|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:37|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (= |$V-reftype:88| |$knormal:7|) (not (= |$alpha-7:prev_set_flag_omega_1140| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:37| |$cond-alpha-rename:36| |$cond-alpha-rename:35|) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$cond-alpha-rename:29|) (|omega_without_checking_1162$unknown:41| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:36| |$cond-alpha-rename:35|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:30| |$cond-alpha-rename:29|) (|omega_without_checking_1162$unknown:40| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:35|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:29|) (|omega_without_checking_1162$unknown:39| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:38| |$cond-alpha-rename:69| |$alpha-9:x_1033| |$alpha-9:x_1033| |$cond-alpha-rename:68|) (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:32| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:31| |$alpha-7:prev_set_flag_omega_1140|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:38| |$V-reftype:88| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$cond-alpha-rename:38| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:40|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:40|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (not (= |$alpha-7:prev_set_flag_omega_1140| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:38|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:31| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:42| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:11| Int) (|$cond-alpha-rename:41| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:43|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:43|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (not (= |$alpha-7:prev_set_flag_omega_1140| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:41|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:42| |$cond-alpha-rename:41|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:41|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:32| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$cond-alpha-rename:44| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:46|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:46|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (not (= |$alpha-7:prev_set_flag_omega_1140| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:44|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:24| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:54| Int) (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$knormal:65| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:55| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:26| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (|f_1034$unknown:9| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:8| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:23| |$V-reftype:18| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:31| Int) (|id_1030| Int) (|$V-reftype:18| Int) (|$V-reftype:53| Int) (|$knormal:34| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (|f_1034$unknown:9| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:8| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|id_1030$unknown:29| |$V-reftype:18| |$V-reftype:53| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:31| Int) (|$knormal:39| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:50| Int) (|$cond-alpha-rename:25| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:54| Int) (|$V-reftype:45| Int) (|$V-reftype:43| Int) (|$knormal:65| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:55| Int) (|$knormal:47| Int) (|$knormal:42| Int) (|$knormal:34| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$V-reftype:46| Int) )
    (=>
      ( and (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$V-reftype:46| |$cond-alpha-rename:25|) (|f_1034$unknown:9| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:8| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:21| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:20| |$cond-alpha-rename:25| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:10| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:11| |$V-reftype:46| |$V-reftype:45| |$V-reftype:43| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:31| Int) (|id_1030| Int) (|$V-reftype:55| Int) (|$V-reftype:53| Int) (|$knormal:34| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:24| Int) (|$V-reftype:56| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$V-reftype:56| |$V-reftype:55|) (|id_1030$unknown:29| |$V-reftype:55| |$V-reftype:53| |id_1030|) (|id_1030$unknown:28| |$V-reftype:53| |id_1030|) (|id_1030$unknown:27| |id_1030|) (|f_1034$unknown:9| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:8| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:10| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|f_1034$unknown:11| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|$V-reftype:32| Int) (|$knormal:50| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:26| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) )
    (=>
      ( and (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (|f_1034$unknown:23| |$cond-alpha-rename:4| |$cond-alpha-rename:3| |$V-reftype:32| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$cond-alpha-rename:3| |$V-reftype:32| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:21| |$V-reftype:32| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|omega_without_checking_1162$unknown:39| |$V-reftype:32|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:65| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|$V-reftype:32| Int) (|$knormal:82| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:71| Int) (|$knormal:62| Int) (|$knormal:57| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) )
    (=>
      ( and (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:23| |$cond-alpha-rename:6| |$cond-alpha-rename:5| |$V-reftype:32| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$cond-alpha-rename:5| |$V-reftype:32| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:21| |$V-reftype:32| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|id_1030$unknown:27| |$V-reftype:32|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:8| Int) (|$knormal:55| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:65| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|id_1030| Int) (|$knormal:82| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:71| Int) (|$knormal:62| Int) (|$knormal:57| Int) (|$V-reftype:34| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:19| Int) )
    (=>
      ( and (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:23| |$cond-alpha-rename:8| |$cond-alpha-rename:7| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$cond-alpha-rename:19| |$V-reftype:34| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$cond-alpha-rename:7| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$V-reftype:34| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:21| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|id_1030$unknown:28| |$V-reftype:34| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:10| Int) (|$knormal:55| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:65| Int) (|$knormal:74| Int) (|$knormal:79| Int) (|id_1030| Int) (|$knormal:82| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:71| Int) (|$knormal:62| Int) (|$knormal:57| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:9| Int) (|$V-reftype:36| Int) (|$cond-alpha-rename:20| Int) )
    (=>
      ( and (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (|f_1034$unknown:23| |$cond-alpha-rename:20| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$cond-alpha-rename:10| |$cond-alpha-rename:9| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$V-reftype:36| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$cond-alpha-rename:9| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:21| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|id_1030$unknown:29| |$V-reftype:36| |$V-reftype:53| |id_1030|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:21| Int) (|$V-reftype:55| Int) (|$cond-alpha-rename:11| Int) (|$V-reftype:53| Int) (|$knormal:57| Int) (|$knormal:62| Int) (|$knormal:71| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:82| Int) (|id_1030| Int) (|$knormal:79| Int) (|$knormal:74| Int) (|$knormal:65| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:55| Int) (|$cond-alpha-rename:12| Int) (|$V-reftype:56| Int) )
    (=>
      ( and (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) (= |$V-reftype:56| |$V-reftype:55|) (|id_1030$unknown:29| |$V-reftype:55| |$V-reftype:53| |id_1030|) (|id_1030$unknown:28| |$V-reftype:53| |id_1030|) (|id_1030$unknown:27| |id_1030|) (|f_1034$unknown:23| |$cond-alpha-rename:21| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$cond-alpha-rename:12| |$cond-alpha-rename:11| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:23| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$cond-alpha-rename:11| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:22| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:21| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:20| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |id_1030| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:22| Int) (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|omega_without_checking_1162| Int) (|$knormal:50| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:26| Int) (|$V-reftype:34| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) )
    (=>
      ( and (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (|f_1034$unknown:23| |$cond-alpha-rename:22| |$V-reftype:34| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:23| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$cond-alpha-rename:13| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$V-reftype:34| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:21| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|omega_without_checking_1162$unknown:40| |$V-reftype:34| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:16| Int) (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|omega_without_checking_1162| Int) (|$knormal:50| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:26| Int) (|$V-reftype:78| Int) (|$cond-alpha-rename:15| Int) (|$V-reftype:36| Int) (|$cond-alpha-rename:23| Int) )
    (=>
      ( and (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (|f_1034$unknown:23| |$cond-alpha-rename:23| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:23| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:23| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$cond-alpha-rename:15| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:21| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:81| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:18| Int) (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:47| Int) (|omega_without_checking_1162| Int) (|$knormal:50| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:26| Int) (|$V-reftype:78| Int) (|$cond-alpha-rename:17| Int) (|$V-reftype:80| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:70| Int) )
    (=>
      ( and (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$cond-alpha-rename:70| 1) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$V-reftype:81| |$cond-alpha-rename:71|) (|omega_without_checking_1162$unknown:41| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|) (|omega_without_checking_1162$unknown:40| |$V-reftype:78| |omega_without_checking_1162|) (|omega_without_checking_1162$unknown:39| |omega_without_checking_1162|) (|omega_1032$unknown:38| |$cond-alpha-rename:71| |$V-reftype:80| |$V-reftype:80| |$cond-alpha-rename:70|) (|f_1034$unknown:23| |$cond-alpha-rename:24| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:23| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:23| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$cond-alpha-rename:17| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:22| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:21| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|f_1034$unknown:20| |$V-reftype:81| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|$V-reftype:14| Int) (|$knormal:31| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (|f_1034$unknown:8| |$V-reftype:14| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|id_1030$unknown:27| |$V-reftype:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$knormal:24| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:55| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:65| Int) (|$V-reftype:14| Int) (|$knormal:62| Int) (|$knormal:57| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:26| Int) (|$knormal:34| Int) (|$knormal:42| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (|f_1034$unknown:8| |$V-reftype:14| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:21| |$V-reftype:14| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$knormal:42| Int) (|$knormal:34| Int) (|$knormal:26| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:55| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$knormal:65| Int) (|$knormal:54| Int) (|$knormal:62| Int) (|$knormal:57| Int) (|$V-reftype:16| Int) (|$alpha-35:c1_COEFFICIENT_1085| Int) (|$knormal:24| Int) (|$knormal:31| Int) (|$knormal:39| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$knormal:50| 0) (= |$knormal:47| 0) (= |$knormal:42| 0) (= |$knormal:39| 0) (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (= |$alpha-35:c1_COEFFICIENT_1085| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (|f_1034$unknown:9| |$V-reftype:16| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) (|f_1034$unknown:8| |$knormal:54| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|) )
      (|f_1034$unknown:22| |$V-reftype:16| |$knormal:54| |$knormal:50| |$knormal:47| |$alpha-35:c1_COEFFICIENT_1085| |$knormal:42| |$knormal:39| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$alpha-36:c0_COEFFICIENT_1084| Int) (|$knormal:34| Int) (|id_1030| Int) (|$knormal:31| Int) (|$knormal:26| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= |$knormal:31| 0) (= |$knormal:26| 0) (= |$knormal:24| 0) (= |$alpha-36:c0_COEFFICIENT_1084| 0) (|f_1034$unknown:9| |$V-reftype:16| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) (|f_1034$unknown:8| |id_1030| |$knormal:34| |$knormal:31| |$alpha-36:c0_COEFFICIENT_1084| |$knormal:26| |$knormal:24|) )
      (|id_1030$unknown:28| |$V-reftype:16| |id_1030|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) )
    ( and (= |$cond-alpha-rename:28| |$cond-alpha-rename:49|) (= |$cond-alpha-rename:27| |$cond-alpha-rename:49|) (= |$cond-alpha-rename:26| 1) (= |$alpha-2:$$tmp::2| 1) (not (= |$cond-alpha-rename:26| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:49| |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:48| |$cond-alpha-rename:47|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:47|) )
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$cond-alpha-rename:50| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:52|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:52|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (not (= |$alpha-7:prev_set_flag_omega_1140| 0)) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$cond-alpha-rename:50|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:51| |$cond-alpha-rename:50|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:50|) (|fail$unknown:26| |$knormal:11| |$knormal:10|) )
      (|bot$unknown:1| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|$V-reftype:60| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:40| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:39| |$alpha-12:set_flag_omega_1141|) (|omega_1032$unknown:31| |$V-reftype:60|) )
      (|omega_without_checking_1162$unknown:39| |$V-reftype:60|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_1033| Int) (|$alpha-13:s_omega_x_1138| Int) (|omega_without_checking_1162| Int) (|$V-reftype:62| Int) (|$alpha-12:set_flag_omega_1141| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:40| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:39| |$alpha-12:set_flag_omega_1141|) (|omega_1032$unknown:32| |$V-reftype:62| |omega_without_checking_1162|) (|omega_1032$unknown:31| |omega_without_checking_1162|) )
      (|omega_without_checking_1162$unknown:40| |$V-reftype:62| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_omega_1141| Int) (|omega_without_checking_1162| Int) (|$V-reftype:78| Int) (|$V-reftype:64| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:40| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_without_checking_1162$unknown:39| |$alpha-12:set_flag_omega_1141|) (|omega_1032$unknown:33| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|) (|omega_1032$unknown:32| |$V-reftype:78| |omega_without_checking_1162|) (|omega_1032$unknown:31| |omega_without_checking_1162|) )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:73| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) (|$V-reftype:90| Int) )
    (=>
      ( and (= |$knormal:7| |$cond-alpha-rename:73|) (= |$cond-alpha-rename:72| 1) (= |$alpha-9:x_1033| |$cond-alpha-rename:55|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:55|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (= |$V-reftype:90| |$knormal:7|) (= |$alpha-7:prev_set_flag_omega_1140| 0) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$cond-alpha-rename:53|) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32|) (|omega_without_checking_1162$unknown:41| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:54| |$cond-alpha-rename:53|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:33| |$cond-alpha-rename:32|) (|omega_without_checking_1162$unknown:40| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:53|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:32|) (|omega_without_checking_1162$unknown:39| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:38| |$cond-alpha-rename:73| |$alpha-9:x_1033| |$alpha-9:x_1033| |$cond-alpha-rename:72|) (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:32| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|) (|omega_1032$unknown:31| |$alpha-7:prev_set_flag_omega_1140|) )
      (|omega_1032$unknown:38| |$V-reftype:90| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:58|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:58|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (= |$alpha-7:prev_set_flag_omega_1140| 0) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:56|) )
      (|omega_1032$unknown:31| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:59| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-9:x_1033| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:61|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:61|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (= |$alpha-7:prev_set_flag_omega_1140| 0) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:61| |$cond-alpha-rename:60| |$cond-alpha-rename:59|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:60| |$cond-alpha-rename:59|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:59|) )
      (|omega_1032$unknown:32| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1033| Int) (|$alpha-8:s_prev_omega_x_1139| Int) (|$alpha-7:prev_set_flag_omega_1140| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) )
    (=>
      ( and (= |$alpha-9:x_1033| |$cond-alpha-rename:64|) (= |$alpha-8:s_prev_omega_x_1139| |$cond-alpha-rename:64|) (= |$alpha-7:prev_set_flag_omega_1140| 1) (= |$alpha-7:prev_set_flag_omega_1140| 0) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$cond-alpha-rename:62|) (|omega_without_checking_1162$unknown:40| |$cond-alpha-rename:63| |$cond-alpha-rename:62|) (|omega_without_checking_1162$unknown:39| |$cond-alpha-rename:62|) )
      (|omega_1032$unknown:33| |$alpha-9:x_1033| |$alpha-8:s_prev_omega_x_1139| |$alpha-7:prev_set_flag_omega_1140|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Int) (|$knormal:74| Int) (|$knormal:65| Int) (|$knormal:57| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:55| Int) (|$knormal:62| Int) (|$knormal:71| Int) (|$knormal:79| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      (|f_1034$unknown:21| |$knormal:87| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:82| Int) (|$knormal:74| Int) (|$knormal:65| Int) (|$knormal:57| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:55| Int) (|$knormal:62| Int) (|$knormal:71| Int) (|$knormal:79| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      (|f_1034$unknown:22| |$knormal:90| |$knormal:87| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:82| Int) (|$knormal:74| Int) (|$knormal:65| Int) (|$knormal:57| Int) (|$alpha-34:c2_COEFFICIENT_1088| Int) (|$alpha-33:c3_COEFFICIENT_1089| Int) (|$knormal:55| Int) (|$knormal:62| Int) (|$knormal:71| Int) (|$knormal:79| Int) (|$knormal:87| Int) (|$knormal:93| Int) )
    (=>
      ( and (= |$knormal:93| 1) (= |$knormal:90| 0) (= |$knormal:87| 0) (= |$knormal:82| 0) (= |$knormal:79| 0) (= |$knormal:74| 0) (= |$knormal:71| 0) (= |$knormal:65| 0) (= |$knormal:62| 0) (= |$knormal:57| 0) (= |$knormal:55| 0) (= |$alpha-34:c2_COEFFICIENT_1088| 0) (= |$alpha-33:c3_COEFFICIENT_1089| 0) )
      (|f_1034$unknown:23| |$knormal:93| |$knormal:90| |$knormal:87| |$knormal:82| |$knormal:79| |$alpha-33:c3_COEFFICIENT_1089| |$knormal:74| |$knormal:71| |$knormal:65| |$knormal:62| |$alpha-34:c2_COEFFICIENT_1088| |$knormal:57| |$knormal:55|)
    )
  )
)
(check-sat)
