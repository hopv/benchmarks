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

(declare-fun |f_without_checking_1197$unknown:47|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:38|
  ( Int Int Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-24:x_DO_NOT_CARE_1215| Int) (|$alpha-25:x_DO_NOT_CARE_1216| Int) (|$alpha-27:set_flag_f_1187| Int) (|$alpha-28:s_f_n_1182| Int) (|$alpha-29:u_1037| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:351| Int) )
    (=>
      ( and (> |$cond-alpha-rename:348| 0) (= 1 1) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:348|) 0)) (= 0 0) (> |$cond-alpha-rename:348| 0) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:345| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:351| |$cond-alpha-rename:350| |$cond-alpha-rename:349| |$cond-alpha-rename:348| |$cond-alpha-rename:347| |$cond-alpha-rename:346|) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:295| |$cond-alpha-rename:294| |$cond-alpha-rename:293| |$cond-alpha-rename:348| |$cond-alpha-rename:291| |$cond-alpha-rename:290|) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:283| |$cond-alpha-rename:282| |$cond-alpha-rename:281| |$cond-alpha-rename:348| |$cond-alpha-rename:279| |$cond-alpha-rename:278|) (|f_without_checking_1197$unknown:47| |$V-reftype:30| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$cond-alpha-rename:348| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|) (|f_1035$unknown:38| |$cond-alpha-rename:302| |$V-reftype:30| |$cond-alpha-rename:274| |$cond-alpha-rename:273| 1 |$cond-alpha-rename:274| |$cond-alpha-rename:273| (- |$cond-alpha-rename:348| 1) |$cond-alpha-rename:348| 1) )
      (|f_without_checking_1197$unknown:48| |$cond-alpha-rename:302| |$V-reftype:30| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$alpha-29:u_1037| |$alpha-28:s_f_n_1182| |$alpha-27:set_flag_f_1187| |$cond-alpha-rename:348| |$alpha-25:x_DO_NOT_CARE_1216| |$alpha-24:x_DO_NOT_CARE_1215|)
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
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:477| Int) (|$cond-alpha-rename:478| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:481| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:620| Int) (|$cond-alpha-rename:621| Int) (|$cond-alpha-rename:623| Int) (|$cond-alpha-rename:624| Int) (|$cond-alpha-rename:625| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:634| Int) (|$cond-alpha-rename:635| Int) (|$cond-alpha-rename:636| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:638| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:27| 1) (|f_1035$unknown:27| |$V-reftype:52| |$cond-alpha-rename:646| |$cond-alpha-rename:645| 1 |$cond-alpha-rename:646| |$cond-alpha-rename:645| (- |$cond-alpha-rename:635| 1) |$cond-alpha-rename:635| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:52| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:625| |$cond-alpha-rename:624| |$cond-alpha-rename:623| |$cond-alpha-rename:635| |$cond-alpha-rename:621| |$cond-alpha-rename:620|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:477| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:483| |$cond-alpha-rename:482| |$cond-alpha-rename:481| |$cond-alpha-rename:635| |$cond-alpha-rename:479| |$cond-alpha-rename:478|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:632| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:638| |$cond-alpha-rename:637| |$cond-alpha-rename:636| |$cond-alpha-rename:635| |$cond-alpha-rename:634| |$cond-alpha-rename:633|) (|f_without_checking_1197$unknown:48| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:646| |$cond-alpha-rename:645| 1 |$cond-alpha-rename:646| |$cond-alpha-rename:645| (- |$cond-alpha-rename:635| 1) |$cond-alpha-rename:635| 1) (|fail$unknown:50| |$knormal:29| 1) (not (= 0 |$cond-alpha-rename:645|)) (> |$cond-alpha-rename:635| 0) (> |$cond-alpha-rename:635| 0) (> |$cond-alpha-rename:635| 0) (= (+ (* 0 |$cond-alpha-rename:635|) 0) (+ (* 0 |$cond-alpha-rename:635|) 0)) (= (+ (* 0 |$cond-alpha-rename:635|) 0) (+ (* 0 |$cond-alpha-rename:635|) 0)) (= 0 0) (= 1 1) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:635| 1) (- |$cond-alpha-rename:635| 1)) (> |$cond-alpha-rename:446| 0) (> |$cond-alpha-rename:635| 0) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:646| |$cond-alpha-rename:645| 1 |$cond-alpha-rename:646| |$cond-alpha-rename:645| (- |$cond-alpha-rename:635| 1) |$cond-alpha-rename:635| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:499| Int) (|$cond-alpha-rename:500| Int) (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:666| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:678| Int) (|$knormal:27| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bot$unknown:18| |$knormal:27| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:71| |$cond-alpha-rename:678| |$cond-alpha-rename:677| |$cond-alpha-rename:657| |$cond-alpha-rename:656| |$cond-alpha-rename:655| |$cond-alpha-rename:667| |$cond-alpha-rename:653| |$cond-alpha-rename:652|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:495| |$cond-alpha-rename:678| |$cond-alpha-rename:677| |$cond-alpha-rename:501| |$cond-alpha-rename:500| |$cond-alpha-rename:499| |$cond-alpha-rename:667| |$cond-alpha-rename:497| |$cond-alpha-rename:496|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:664| |$cond-alpha-rename:678| |$cond-alpha-rename:677| |$cond-alpha-rename:670| |$cond-alpha-rename:669| |$cond-alpha-rename:668| |$cond-alpha-rename:667| |$cond-alpha-rename:666| |$cond-alpha-rename:665|) (|fail$unknown:50| |$knormal:29| 1) (not (= 0 |$cond-alpha-rename:677|)) (> |$cond-alpha-rename:667| 0) (> |$cond-alpha-rename:667| 0) (> |$cond-alpha-rename:667| 0) (= (+ (* 0 |$cond-alpha-rename:667|) 0) (+ (* 0 |$cond-alpha-rename:667|) 0)) (= (+ (* 0 |$cond-alpha-rename:667|) 0) (+ (* 0 |$cond-alpha-rename:667|) 0)) (= 0 0) (= 1 1) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:667| 1) (- |$cond-alpha-rename:667| 1)) (> |$cond-alpha-rename:667| 0) )
      (|f_1035$unknown:27| |$V-reftype:71| |$cond-alpha-rename:678| |$cond-alpha-rename:677| 1 |$cond-alpha-rename:678| |$cond-alpha-rename:677| (- |$cond-alpha-rename:667| 1) |$cond-alpha-rename:667| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:77| Int) (|$V-reftype:79| Int) (|$V-reftype:81| Int) (|$V-reftype:83| Int) (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-26:n_1036| Int) (|f_without_checking_1197| Int) )
    (=>
      ( and (> |$alpha-26:n_1036| 0) (|f_1035$unknown:27| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|) )
      (|f_without_checking_1197$unknown:47| |$V-reftype:51| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$V-reftype:83| |$V-reftype:81| |$V-reftype:79| |$V-reftype:77| |f_without_checking_1197|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:517| Int) (|$cond-alpha-rename:518| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:700| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) (|$cond-alpha-rename:709| Int) (|$cond-alpha-rename:710| Int) )
    (=>
      ( and (|f_1035$unknown:27| |$V-reftype:52| |$cond-alpha-rename:710| |$cond-alpha-rename:709| 1 |$cond-alpha-rename:710| |$cond-alpha-rename:709| (- |$cond-alpha-rename:699| 1) |$cond-alpha-rename:699| 1) (|f_without_checking_1197$unknown:47| |$V-reftype:52| |$cond-alpha-rename:710| |$cond-alpha-rename:709| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:699| |$cond-alpha-rename:685| |$cond-alpha-rename:684|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:513| |$cond-alpha-rename:710| |$cond-alpha-rename:709| |$cond-alpha-rename:519| |$cond-alpha-rename:518| |$cond-alpha-rename:517| |$cond-alpha-rename:699| |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:696| |$cond-alpha-rename:710| |$cond-alpha-rename:709| |$cond-alpha-rename:702| |$cond-alpha-rename:701| |$cond-alpha-rename:700| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697|) (|f_without_checking_1197$unknown:48| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:710| |$cond-alpha-rename:709| 1 |$cond-alpha-rename:710| |$cond-alpha-rename:709| (- |$cond-alpha-rename:699| 1) |$cond-alpha-rename:699| 1) (> |$cond-alpha-rename:699| 0) (> |$cond-alpha-rename:699| 0) (> |$cond-alpha-rename:699| 0) (not (not (= 0 |$cond-alpha-rename:709|))) (= (+ (* 0 |$cond-alpha-rename:699|) 0) (+ (* 0 |$cond-alpha-rename:699|) 0)) (= (+ (* 0 |$cond-alpha-rename:699|) 0) (+ (* 0 |$cond-alpha-rename:699|) 0)) (= 0 0) (= 1 1) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:699| 1) (- |$cond-alpha-rename:699| 1)) (> |$cond-alpha-rename:449| 0) (> |$cond-alpha-rename:699| 0) )
      (|f_1035$unknown:38| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:710| |$cond-alpha-rename:709| 1 |$cond-alpha-rename:710| |$cond-alpha-rename:709| (- |$cond-alpha-rename:699| 1) |$cond-alpha-rename:699| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:71| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:535| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:537| Int) (|$cond-alpha-rename:716| Int) (|$cond-alpha-rename:717| Int) (|$cond-alpha-rename:719| Int) (|$cond-alpha-rename:720| Int) (|$cond-alpha-rename:721| Int) (|$cond-alpha-rename:728| Int) (|$cond-alpha-rename:729| Int) (|$cond-alpha-rename:730| Int) (|$cond-alpha-rename:731| Int) (|$cond-alpha-rename:732| Int) (|$cond-alpha-rename:733| Int) (|$cond-alpha-rename:734| Int) (|$cond-alpha-rename:741| Int) (|$cond-alpha-rename:742| Int) )
    (=>
      ( and (|f_without_checking_1197$unknown:47| |$V-reftype:71| |$cond-alpha-rename:742| |$cond-alpha-rename:741| |$cond-alpha-rename:721| |$cond-alpha-rename:720| |$cond-alpha-rename:719| |$cond-alpha-rename:731| |$cond-alpha-rename:717| |$cond-alpha-rename:716|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:531| |$cond-alpha-rename:742| |$cond-alpha-rename:741| |$cond-alpha-rename:537| |$cond-alpha-rename:536| |$cond-alpha-rename:535| |$cond-alpha-rename:731| |$cond-alpha-rename:533| |$cond-alpha-rename:532|) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:728| |$cond-alpha-rename:742| |$cond-alpha-rename:741| |$cond-alpha-rename:734| |$cond-alpha-rename:733| |$cond-alpha-rename:732| |$cond-alpha-rename:731| |$cond-alpha-rename:730| |$cond-alpha-rename:729|) (> |$cond-alpha-rename:731| 0) (> |$cond-alpha-rename:731| 0) (> |$cond-alpha-rename:731| 0) (not (not (= 0 |$cond-alpha-rename:741|))) (= (+ (* 0 |$cond-alpha-rename:731|) 0) (+ (* 0 |$cond-alpha-rename:731|) 0)) (= (+ (* 0 |$cond-alpha-rename:731|) 0) (+ (* 0 |$cond-alpha-rename:731|) 0)) (= 0 0) (= 1 1) (= 1 1) (= 1 1) (= (- |$cond-alpha-rename:731| 1) (- |$cond-alpha-rename:731| 1)) (> |$cond-alpha-rename:731| 0) )
      (|f_1035$unknown:27| |$V-reftype:71| |$cond-alpha-rename:742| |$cond-alpha-rename:741| 1 |$cond-alpha-rename:742| |$cond-alpha-rename:741| (- |$cond-alpha-rename:731| 1) |$cond-alpha-rename:731| 1)
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
  (not (exists ( (|$cond-alpha-rename:792| Int) (|$cond-alpha-rename:793| Int) (|$cond-alpha-rename:797| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:801| Int) (|$cond-alpha-rename:802| Int) (|$cond-alpha-rename:803| Int) )
    ( and (= (+ (* 0 |$cond-alpha-rename:800|) 0) (+ (* 0 |$cond-alpha-rename:800|) 0)) (= 1 1) (> |$cond-alpha-rename:800| 0) (> |$cond-alpha-rename:800| 0) (not (= 0 |$cond-alpha-rename:792|)) (|f_without_checking_1197$unknown:47| |$cond-alpha-rename:797| |$cond-alpha-rename:793| |$cond-alpha-rename:792| |$cond-alpha-rename:803| |$cond-alpha-rename:802| |$cond-alpha-rename:801| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798|) )
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

