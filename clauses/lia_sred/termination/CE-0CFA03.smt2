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

(declare-fun |f_1034$unknown:11|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:20|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:23|
  ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1034$unknown:10|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |omega_without_checking_1162$unknown:41|
  ( Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:38|
  ( Int Int Int Int ) Bool
)

(declare-fun |omega_1032$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
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
  (forall ( (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:397| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:311| |$cond-alpha-rename:311| 1) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:311| |$cond-alpha-rename:310| |$cond-alpha-rename:309|) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:245| |$cond-alpha-rename:244| |$cond-alpha-rename:243|) (|omega_1032$unknown:38| |$cond-alpha-rename:397| |$cond-alpha-rename:311| |$cond-alpha-rename:311| 1) (|omega_1032$unknown:33| |$cond-alpha-rename:311| |$cond-alpha-rename:311| 1) (|fail$unknown:26| |$knormal:11| 1) (|bot$unknown:2| |$knormal:9| 1) )
      (|omega_1032$unknown:38| |$cond-alpha-rename:397| |$cond-alpha-rename:311| |$cond-alpha-rename:311| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:314| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| 1) (|fail$unknown:26| |$knormal:11| 1) (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:314| |$cond-alpha-rename:313| |$cond-alpha-rename:312|) (not (= 0 1)) )
      (|omega_1032$unknown:33| |$cond-alpha-rename:314| |$cond-alpha-rename:314| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$V-reftype:43| Int) (|$knormal:54| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:18| |$V-reftype:43| |$knormal:54| 0 0 0 0 0) )
      (|f_1034$unknown:23| |$V-reftype:18| |$V-reftype:43| |$knormal:54| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:62| Int) (|$knormal:54| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:45| |$V-reftype:43| |$knormal:54| 0 0 0 0 0) (|f_1034$unknown:20| |$cond-alpha-rename:62| |$V-reftype:45| |$V-reftype:43| |$knormal:54| 0 0 0 0 0 0 0 0 0 0) (|f_1034$unknown:23| |$V-reftype:45| |$V-reftype:43| |$knormal:54| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:11| |$cond-alpha-rename:62| |$V-reftype:45| |$V-reftype:43| |$knormal:54| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|id_1030| Int) )
    (=>
      ( and (|f_1034$unknown:10| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0) )
      (|f_1034$unknown:11| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|id_1030| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:20| |$V-reftype:55| |$V-reftype:55| |$V-reftype:53| |id_1030| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$V-reftype:78| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (|f_1034$unknown:23| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162| 0 0 0 0 0 0 0 0 0 0) )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:36| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$cond-alpha-rename:399| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162|) (|omega_1032$unknown:38| |$cond-alpha-rename:399| |$V-reftype:80| |$V-reftype:80| 1) (|f_1034$unknown:23| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| 0 0 0 0 0 0 0 0 0 0) )
      (|f_1034$unknown:20| |$cond-alpha-rename:399| |$V-reftype:80| |$V-reftype:78| |omega_without_checking_1162| 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) )
    ( and (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:317| |$cond-alpha-rename:316| |$cond-alpha-rename:315|) (not (= 0 1)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$V-reftype:78| Int) (|$alpha-12:set_flag_omega_1141| Int) (|$alpha-13:s_omega_x_1138| Int) (|$alpha-14:x_1033| Int) (|omega_without_checking_1162| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$alpha-14:x_1033| |$alpha-13:s_omega_x_1138| |$alpha-12:set_flag_omega_1141|) (|omega_1032$unknown:33| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|) )
      (|omega_without_checking_1162$unknown:41| |$V-reftype:64| |$V-reftype:78| |omega_without_checking_1162|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) )
    (=>
      ( and (|omega_without_checking_1162$unknown:41| |$cond-alpha-rename:323| |$cond-alpha-rename:322| |$cond-alpha-rename:321|) (not (not (= 0 1))) )
      (|omega_1032$unknown:33| |$cond-alpha-rename:323| |$cond-alpha-rename:323| 1)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_1034$unknown:23| 1 0 0 0 0 0 0 0 0 0 0 0 0)
    )
  )
)
(check-sat)
