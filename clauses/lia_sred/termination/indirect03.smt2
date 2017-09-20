(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_f_1191 s_f_x_1188 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 h_EXPARAM_1087 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 h_1033 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 v_1034 set_flag_f_1191 s_f_x_1188 u_1035 =
       h_1033 set_flag_f_1191 s_f_x_1188 v_1034 set_flag_f_1191 s_f_x_1188 u_1035
  
     let rec f_1036 f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037 =
       let u =if prev_set_flag_f_1190 then
                let u_11994 = fail ()
                in
                  bot()
              else () in
              f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037
  
     let rec f_without_checking_1199 set_flag_f_1191 s_f_x_1188 x_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_x_1188 = x_1037
       in
         if x_1037 > 0 then
           app_1032 set_flag_f_1191 s_f_x_1188
             ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
             set_flag_f_1191 s_f_x_1188 (f_1036 f_without_checking_1199) set_flag_f_1191 s_f_x_1188
             (x_1037 - 1)
         else
           id_1030
  
     let main_1038 r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_without_checking_1199 set_flag_f_1191 s_f_x_1188 r
         set_flag_f_1191 s_f_x_1188 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:49|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:27|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:44|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:42|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:41|
  ( Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) )
    (=>
      ( and (|f_1036$unknown:35| |$cond-alpha-rename:164| |$V-reftype:36| |$cond-alpha-rename:160| |$cond-alpha-rename:159| (- |$cond-alpha-rename:181| 1) |$cond-alpha-rename:160| |$cond-alpha-rename:159|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:181| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:181| |$cond-alpha-rename:138| |$cond-alpha-rename:137|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:181| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:178| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:179|) (> |$cond-alpha-rename:181| 0) (> |$cond-alpha-rename:181| 0) (> |$cond-alpha-rename:181| 0) (> |$cond-alpha-rename:181| 0) (> |$cond-alpha-rename:181| 0) (= 1 1) (= 1 1) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:181|) 0) (+ (* 0 |$cond-alpha-rename:181|) 0)) (= (+ (* 0 |$cond-alpha-rename:181|) 0) (+ (* 0 |$cond-alpha-rename:181|) 0)) (= (+ (* 0 |$cond-alpha-rename:181|) 0) (+ (* 0 |$cond-alpha-rename:181|) 0)) (= (+ (* 0 |$cond-alpha-rename:181|) 0) (+ (* 0 |$cond-alpha-rename:181|) 0)) (= (- |$cond-alpha-rename:181| 1) (- |$cond-alpha-rename:181| 1)) (= (- |$cond-alpha-rename:181| 1) (- |$cond-alpha-rename:181| 1)) (= (- |$cond-alpha-rename:181| 1) (- |$cond-alpha-rename:181| 1)) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:164| |$V-reftype:36| |$cond-alpha-rename:160| |$cond-alpha-rename:159| |$cond-alpha-rename:181| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:2| 1) )
      (|bot$unknown:21| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:257| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:388| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| 1) (|f_1036$unknown:27| |$V-reftype:52| |$cond-alpha-rename:388| |$cond-alpha-rename:387| (- |$cond-alpha-rename:257| 1) |$cond-alpha-rename:388| |$cond-alpha-rename:387|) (|f_without_checking_1199$unknown:41| |$V-reftype:52| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:379| |$cond-alpha-rename:367| |$cond-alpha-rename:366|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:254| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:257| |$cond-alpha-rename:256| |$cond-alpha-rename:255|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:376| |$cond-alpha-rename:388| |$cond-alpha-rename:387| |$cond-alpha-rename:379| |$cond-alpha-rename:378| |$cond-alpha-rename:377|) (|f_without_checking_1199$unknown:42| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:388| |$cond-alpha-rename:387| (- |$cond-alpha-rename:257| 1) |$cond-alpha-rename:388| |$cond-alpha-rename:387|) (|fail$unknown:44| |$knormal:22| 1) (not (= 0 |$cond-alpha-rename:387|)) (> |$cond-alpha-rename:242| 0) (> |$cond-alpha-rename:257| 0) (> |$cond-alpha-rename:257| 0) (> |$cond-alpha-rename:379| 0) (> |$cond-alpha-rename:379| 0) (> |$cond-alpha-rename:379| 0) (= (- |$cond-alpha-rename:257| 1) (- |$cond-alpha-rename:379| 1)) (= (- |$cond-alpha-rename:257| 1) (- |$cond-alpha-rename:379| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:257|) 0) (+ (* 0 |$cond-alpha-rename:257|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:379|) 0) (+ (* 0 |$cond-alpha-rename:379|) 0)) (= (+ (* 0 |$cond-alpha-rename:379|) 0) (+ (* 0 |$cond-alpha-rename:379|) 0)) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:388| |$cond-alpha-rename:387| (- |$cond-alpha-rename:257| 1) |$cond-alpha-rename:388| |$cond-alpha-rename:387|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:398| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) (|$cond-alpha-rename:410| Int) (|$cond-alpha-rename:418| Int) (|$cond-alpha-rename:419| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| 1) (|f_without_checking_1199$unknown:41| |$V-reftype:65| |$cond-alpha-rename:419| |$cond-alpha-rename:418| |$cond-alpha-rename:410| |$cond-alpha-rename:398| |$cond-alpha-rename:397|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:273| |$cond-alpha-rename:419| |$cond-alpha-rename:418| |$cond-alpha-rename:276| |$cond-alpha-rename:275| |$cond-alpha-rename:274|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:407| |$cond-alpha-rename:419| |$cond-alpha-rename:418| |$cond-alpha-rename:410| |$cond-alpha-rename:409| |$cond-alpha-rename:408|) (|fail$unknown:44| |$knormal:22| 1) (not (= 0 |$cond-alpha-rename:418|)) (> |$cond-alpha-rename:276| 0) (> |$cond-alpha-rename:276| 0) (> |$cond-alpha-rename:410| 0) (> |$cond-alpha-rename:410| 0) (> |$cond-alpha-rename:410| 0) (= (- |$cond-alpha-rename:276| 1) (- |$cond-alpha-rename:410| 1)) (= (- |$cond-alpha-rename:276| 1) (- |$cond-alpha-rename:410| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:276|) 0) (+ (* 0 |$cond-alpha-rename:276|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:410|) 0) (+ (* 0 |$cond-alpha-rename:410|) 0)) (= (+ (* 0 |$cond-alpha-rename:410|) 0) (+ (* 0 |$cond-alpha-rename:410|) 0)) )
      (|f_1036$unknown:27| |$V-reftype:65| |$cond-alpha-rename:419| |$cond-alpha-rename:418| (- |$cond-alpha-rename:276| 1) |$cond-alpha-rename:419| |$cond-alpha-rename:418|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$alpha-26:x_1037| Int) (|f_without_checking_1199| Int) )
    (=>
      ( and (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) (> |$alpha-26:x_1037| 0) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:438| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:440| Int) (|$cond-alpha-rename:441| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) )
    (=>
      ( and (|f_1036$unknown:27| |$V-reftype:52| |$cond-alpha-rename:450| |$cond-alpha-rename:449| (- |$cond-alpha-rename:295| 1) |$cond-alpha-rename:450| |$cond-alpha-rename:449|) (|f_without_checking_1199$unknown:41| |$V-reftype:52| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:441| |$cond-alpha-rename:429| |$cond-alpha-rename:428|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:292| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:293|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:438| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:441| |$cond-alpha-rename:440| |$cond-alpha-rename:439|) (|f_without_checking_1199$unknown:42| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:450| |$cond-alpha-rename:449| (- |$cond-alpha-rename:295| 1) |$cond-alpha-rename:450| |$cond-alpha-rename:449|) (> |$cond-alpha-rename:245| 0) (> |$cond-alpha-rename:295| 0) (> |$cond-alpha-rename:295| 0) (> |$cond-alpha-rename:441| 0) (> |$cond-alpha-rename:441| 0) (> |$cond-alpha-rename:441| 0) (not (not (= 0 |$cond-alpha-rename:449|))) (= (- |$cond-alpha-rename:295| 1) (- |$cond-alpha-rename:441| 1)) (= (- |$cond-alpha-rename:295| 1) (- |$cond-alpha-rename:441| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:295|) 0) (+ (* 0 |$cond-alpha-rename:295|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:441|) 0) (+ (* 0 |$cond-alpha-rename:441|) 0)) (= (+ (* 0 |$cond-alpha-rename:441|) 0) (+ (* 0 |$cond-alpha-rename:441|) 0)) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:450| |$cond-alpha-rename:449| (- |$cond-alpha-rename:295| 1) |$cond-alpha-rename:450| |$cond-alpha-rename:449|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:460| Int) (|$cond-alpha-rename:469| Int) (|$cond-alpha-rename:470| Int) (|$cond-alpha-rename:471| Int) (|$cond-alpha-rename:472| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:481| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:65| |$cond-alpha-rename:481| |$cond-alpha-rename:480| |$cond-alpha-rename:472| |$cond-alpha-rename:460| |$cond-alpha-rename:459|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:311| |$cond-alpha-rename:481| |$cond-alpha-rename:480| |$cond-alpha-rename:314| |$cond-alpha-rename:313| |$cond-alpha-rename:312|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:469| |$cond-alpha-rename:481| |$cond-alpha-rename:480| |$cond-alpha-rename:472| |$cond-alpha-rename:471| |$cond-alpha-rename:470|) (> |$cond-alpha-rename:314| 0) (> |$cond-alpha-rename:314| 0) (> |$cond-alpha-rename:472| 0) (> |$cond-alpha-rename:472| 0) (> |$cond-alpha-rename:472| 0) (not (not (= 0 |$cond-alpha-rename:480|))) (= (- |$cond-alpha-rename:314| 1) (- |$cond-alpha-rename:472| 1)) (= (- |$cond-alpha-rename:314| 1) (- |$cond-alpha-rename:472| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:314|) 0) (+ (* 0 |$cond-alpha-rename:314|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:472|) 0) (+ (* 0 |$cond-alpha-rename:472|) 0)) (= (+ (* 0 |$cond-alpha-rename:472|) 0) (+ (* 0 |$cond-alpha-rename:472|) 0)) )
      (|f_1036$unknown:27| |$V-reftype:65| |$cond-alpha-rename:481| |$cond-alpha-rename:480| (- |$cond-alpha-rename:314| 1) |$cond-alpha-rename:481| |$cond-alpha-rename:480|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (not (> |$alpha-26:x_1037| 0)) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:89| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:487| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:498| Int) )
    ( and (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:495| |$cond-alpha-rename:487| |$cond-alpha-rename:486| |$cond-alpha-rename:498| |$cond-alpha-rename:497| |$cond-alpha-rename:496|) (not (= 0 |$cond-alpha-rename:486|)) (> |$cond-alpha-rename:498| 0) (> |$cond-alpha-rename:498| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:498|) 0) (+ (* 0 |$cond-alpha-rename:498|) 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-31:r| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) )
      (|f_without_checking_1199$unknown:41| 1 0 0 |$alpha-31:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

