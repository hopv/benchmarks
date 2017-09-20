(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1088 = 0
     let rec c0_COEFFICIENT_1087 = 0
     let id_1030 set_flag_f_1187 s_f_n_1182 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1219 x_DO_NOT_CARE_1220 h_EXPARAM_1090 x_DO_NOT_CARE_1217 x_DO_NOT_CARE_1218 h_1033 set_flag_f_1187 s_f_n_1182 v_1034 =
       h_1033 set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 v_1034
  
     let rec f_1035 f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200 n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037 =
       let u  =if prev_set_flag_f_1186 then
                let u_9957 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1197 x_DO_NOT_CARE_1199 x_DO_NOT_CARE_1200
                n_1036 prev_set_flag_f_1186 s_prev_f_n_1184 u_1037
  
     let rec f_without_checking_1197 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 n_1036 set_flag_f_1187 s_f_n_1182 u_1037 =
       let set_flag_f_1187 = true
       in
       let s_f_n_1182 = n_1036
       in
         if n_1036 > 0 then
           app_1032 set_flag_f_1187 s_f_n_1182
             ((c0_COEFFICIENT_1087 * n_1036) + c1_COEFFICIENT_1088)
             set_flag_f_1187 s_f_n_1182
             (f_1035 f_without_checking_1197 set_flag_f_1187 s_f_n_1182 (n_1036 - 1))
         else
           id_1030
  
     let main_1038 r =
       let set_flag_f_1187 = false in
       let s_f_n_1182 = 0 in
       f_without_checking_1197 set_flag_f_1187 s_f_n_1182 r
         set_flag_f_1187 s_f_n_1182 () set_flag_f_1187 s_f_n_1182 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:55|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:50|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:48|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1197$unknown:47|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) )
    (=>
      ( and (|f_1035$unknown:38| |$cond-alpha-rename:198| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| 1 |$cond-alpha-rename:194| |$cond-alpha-rename:193| (- |$cond-alpha-rename:216| 1) |$cond-alpha-rename:216| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$cond-alpha-rename:216| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:170| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:216| |$cond-alpha-rename:166| |$cond-alpha-rename:165|) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:182| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:216| |$cond-alpha-rename:178| |$cond-alpha-rename:177|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:213| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215| |$cond-alpha-rename:214|) (> |$cond-alpha-rename:216| 0) (> |$cond-alpha-rename:216| 0) (> |$cond-alpha-rename:216| 0) (> |$cond-alpha-rename:216| 0) (> |$cond-alpha-rename:216| 0) (= 1 1) (= 1 1) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:216|) 0) (+ (* 0 |$cond-alpha-rename:216|) 0)) (= (+ (* 0 |$cond-alpha-rename:216|) 0) (+ (* 0 |$cond-alpha-rename:216|) 0)) (= (+ (* 0 |$cond-alpha-rename:216|) 0) (+ (* 0 |$cond-alpha-rename:216|) 0)) (= (+ (* 0 |$cond-alpha-rename:216|) 0) (+ (* 0 |$cond-alpha-rename:216|) 0)) )
      (|f_without_checking_1197$unknown:48| |$cond-alpha-rename:198| |$V-reftype:30| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$cond-alpha-rename:216| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:2| 1) )
      (|bot$unknown:18| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:410| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:419| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:423| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:426| Int) (|$cond-alpha-rename:427| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:27| 1) (|f_1035$unknown:27| |$V-reftype:52| |$cond-alpha-rename:420| |$cond-alpha-rename:419| 1 |$cond-alpha-rename:420| |$cond-alpha-rename:419| (- |$cond-alpha-rename:424| 1) |$cond-alpha-rename:424| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:52| |$cond-alpha-rename:420| |$cond-alpha-rename:419| |$cond-alpha-rename:412| |$cond-alpha-rename:411| |$cond-alpha-rename:410| |$cond-alpha-rename:424| |$cond-alpha-rename:408| |$cond-alpha-rename:407|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:299| |$cond-alpha-rename:420| |$cond-alpha-rename:419| |$cond-alpha-rename:305| |$cond-alpha-rename:304| |$cond-alpha-rename:303| |$cond-alpha-rename:424| |$cond-alpha-rename:301| |$cond-alpha-rename:300|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:421| |$cond-alpha-rename:420| |$cond-alpha-rename:419| |$cond-alpha-rename:427| |$cond-alpha-rename:426| |$cond-alpha-rename:425| |$cond-alpha-rename:424| |$cond-alpha-rename:423| |$cond-alpha-rename:422|) (|f_without_checking_1197$unknown:48| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:420| |$cond-alpha-rename:419| 1 |$cond-alpha-rename:420| |$cond-alpha-rename:419| (- |$cond-alpha-rename:424| 1) |$cond-alpha-rename:424| 1) (|fail$unknown:50| |$knormal:29| 1) (not (= 0 |$cond-alpha-rename:419|)) (> |$cond-alpha-rename:291| 0) (> |$cond-alpha-rename:424| 0) (> |$cond-alpha-rename:424| 0) (> |$cond-alpha-rename:424| 0) (> |$cond-alpha-rename:424| 0) (> |$cond-alpha-rename:424| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:424|) 0) (+ (* 0 |$cond-alpha-rename:424|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:424|) 0) (+ (* 0 |$cond-alpha-rename:424|) 0)) (= (+ (* 0 |$cond-alpha-rename:424|) 0) (+ (* 0 |$cond-alpha-rename:424|) 0)) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:420| |$cond-alpha-rename:419| 1 |$cond-alpha-rename:420| |$cond-alpha-rename:419| (- |$cond-alpha-rename:424| 1) |$cond-alpha-rename:424| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:440| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:443| Int) (|$cond-alpha-rename:444| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:454| Int) (|$cond-alpha-rename:455| Int) (|$cond-alpha-rename:456| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:458| Int) (|$cond-alpha-rename:459| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:27| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:71| |$cond-alpha-rename:452| |$cond-alpha-rename:451| |$cond-alpha-rename:444| |$cond-alpha-rename:443| |$cond-alpha-rename:442| |$cond-alpha-rename:456| |$cond-alpha-rename:440| |$cond-alpha-rename:439|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:317| |$cond-alpha-rename:452| |$cond-alpha-rename:451| |$cond-alpha-rename:323| |$cond-alpha-rename:322| |$cond-alpha-rename:321| |$cond-alpha-rename:456| |$cond-alpha-rename:319| |$cond-alpha-rename:318|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:453| |$cond-alpha-rename:452| |$cond-alpha-rename:451| |$cond-alpha-rename:459| |$cond-alpha-rename:458| |$cond-alpha-rename:457| |$cond-alpha-rename:456| |$cond-alpha-rename:455| |$cond-alpha-rename:454|) (|fail$unknown:50| |$knormal:29| 1) (not (= 0 |$cond-alpha-rename:451|)) (> |$cond-alpha-rename:456| 0) (> |$cond-alpha-rename:456| 0) (> |$cond-alpha-rename:456| 0) (> |$cond-alpha-rename:456| 0) (> |$cond-alpha-rename:456| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:456|) 0) (+ (* 0 |$cond-alpha-rename:456|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:456|) 0) (+ (* 0 |$cond-alpha-rename:456|) 0)) (= (+ (* 0 |$cond-alpha-rename:456|) 0) (+ (* 0 |$cond-alpha-rename:456|) 0)) )
      (|f_1035$unknown:27| |$V-reftype:71| |$cond-alpha-rename:452| |$cond-alpha-rename:451| 1 |$cond-alpha-rename:452| |$cond-alpha-rename:451| (- |$cond-alpha-rename:456| 1) |$cond-alpha-rename:456| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-26:n_1036| Int) (|f_without_checking_1197| Int) )
    (=>
      ( and (|f_1035$unknown:27| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|) (> |$alpha-26:n_1036| 0) )
      (|f_without_checking_1197$unknown:47| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:471| Int) (|$cond-alpha-rename:472| Int) (|$cond-alpha-rename:474| Int) (|$cond-alpha-rename:475| Int) (|$cond-alpha-rename:476| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:487| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:490| Int) (|$cond-alpha-rename:491| Int) )
    (=>
      ( and (|f_1035$unknown:27| |$V-reftype:52| |$cond-alpha-rename:484| |$cond-alpha-rename:483| 1 |$cond-alpha-rename:484| |$cond-alpha-rename:483| (- |$cond-alpha-rename:488| 1) |$cond-alpha-rename:488| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:52| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:476| |$cond-alpha-rename:475| |$cond-alpha-rename:474| |$cond-alpha-rename:488| |$cond-alpha-rename:472| |$cond-alpha-rename:471|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:335| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:341| |$cond-alpha-rename:340| |$cond-alpha-rename:339| |$cond-alpha-rename:488| |$cond-alpha-rename:337| |$cond-alpha-rename:336|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:485| |$cond-alpha-rename:484| |$cond-alpha-rename:483| |$cond-alpha-rename:491| |$cond-alpha-rename:490| |$cond-alpha-rename:489| |$cond-alpha-rename:488| |$cond-alpha-rename:487| |$cond-alpha-rename:486|) (|f_without_checking_1197$unknown:48| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:484| |$cond-alpha-rename:483| 1 |$cond-alpha-rename:484| |$cond-alpha-rename:483| (- |$cond-alpha-rename:488| 1) |$cond-alpha-rename:488| 1) (> |$cond-alpha-rename:294| 0) (> |$cond-alpha-rename:488| 0) (> |$cond-alpha-rename:488| 0) (> |$cond-alpha-rename:488| 0) (> |$cond-alpha-rename:488| 0) (> |$cond-alpha-rename:488| 0) (not (not (= 0 |$cond-alpha-rename:483|))) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:488|) 0) (+ (* 0 |$cond-alpha-rename:488|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:488|) 0) (+ (* 0 |$cond-alpha-rename:488|) 0)) (= (+ (* 0 |$cond-alpha-rename:488|) 0) (+ (* 0 |$cond-alpha-rename:488|) 0)) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:484| |$cond-alpha-rename:483| 1 |$cond-alpha-rename:484| |$cond-alpha-rename:483| (- |$cond-alpha-rename:488| 1) |$cond-alpha-rename:488| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:358| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:504| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:507| Int) (|$cond-alpha-rename:508| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:516| Int) (|$cond-alpha-rename:517| Int) (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:523| Int) )
    (=>
      ( and (|f_without_checking_1197$unknown:47| |$V-reftype:71| |$cond-alpha-rename:516| |$cond-alpha-rename:515| |$cond-alpha-rename:508| |$cond-alpha-rename:507| |$cond-alpha-rename:506| |$cond-alpha-rename:520| |$cond-alpha-rename:504| |$cond-alpha-rename:503|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:353| |$cond-alpha-rename:516| |$cond-alpha-rename:515| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:357| |$cond-alpha-rename:520| |$cond-alpha-rename:355| |$cond-alpha-rename:354|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:517| |$cond-alpha-rename:516| |$cond-alpha-rename:515| |$cond-alpha-rename:523| |$cond-alpha-rename:522| |$cond-alpha-rename:521| |$cond-alpha-rename:520| |$cond-alpha-rename:519| |$cond-alpha-rename:518|) (> |$cond-alpha-rename:520| 0) (> |$cond-alpha-rename:520| 0) (> |$cond-alpha-rename:520| 0) (> |$cond-alpha-rename:520| 0) (> |$cond-alpha-rename:520| 0) (not (not (= 0 |$cond-alpha-rename:515|))) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:520|) 0) (+ (* 0 |$cond-alpha-rename:520|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:520|) 0) (+ (* 0 |$cond-alpha-rename:520|) 0)) (= (+ (* 0 |$cond-alpha-rename:520|) 0) (+ (* 0 |$cond-alpha-rename:520|) 0)) )
      (|f_1035$unknown:27| |$V-reftype:71| |$cond-alpha-rename:516| |$cond-alpha-rename:515| 1 |$cond-alpha-rename:516| |$cond-alpha-rename:515| (- |$cond-alpha-rename:520| 1) |$cond-alpha-rename:520| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:97| Int) (|$V-reftype:99| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-26:n_1036| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) )
    (=>
      ( and (|f_without_checking_1197$unknown:47| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) (not (> |$alpha-26:n_1036| 0)) )
      (|f_without_checking_1197$unknown:48| |$V-reftype:101| |$V-reftype:101| |$V-reftype:99| |$V-reftype:97| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$alpha-26:n_1036| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:537| Int) (|$cond-alpha-rename:541| Int) (|$cond-alpha-rename:542| Int) (|$cond-alpha-rename:543| Int) (|$cond-alpha-rename:544| Int) (|$cond-alpha-rename:545| Int) (|$cond-alpha-rename:546| Int) (|$cond-alpha-rename:547| Int) )
    ( and (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:541| |$cond-alpha-rename:537| |$cond-alpha-rename:536| |$cond-alpha-rename:547| |$cond-alpha-rename:546| |$cond-alpha-rename:545| |$cond-alpha-rename:544| |$cond-alpha-rename:543| |$cond-alpha-rename:542|) (not (= 0 |$cond-alpha-rename:536|)) (> |$cond-alpha-rename:544| 0) (> |$cond-alpha-rename:544| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:544|) 0) (+ (* 0 |$cond-alpha-rename:544|) 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-34:r| Int) )
    (=>
      ( and (|main_1038$unknown:55| |$alpha-34:r|) )
      (|f_without_checking_1197$unknown:47| 1 0 0 1 0 0 |$alpha-34:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

