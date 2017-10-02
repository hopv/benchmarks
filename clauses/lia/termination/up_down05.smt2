(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_1030 x_DO_NOT_CARE_1216 x_DO_NOT_CARE_1217 f_EXPARAM_1084 x_DO_NOT_CARE_1214 x_DO_NOT_CARE_1215 f_1033 set_flag_down_1132 s_down_x_1129 x_1034 =
       f_1033 set_flag_down_1132 s_down_x_1129 x_1034
  
     let rec down_1031 down_without_checking_1152 prev_set_flag_down_1131 s_prev_down_x_1130 x_1035 =
       let u =  if prev_set_flag_down_1131 then
                if (0 * 1) + (1 * s_prev_down_x_1130) > (0 * 1) + (1 * x_1035) &&
                   (0 * 1) + (1 * x_1035) >= 0 then
                  ()
                else
                  let u_8406 = fail ()
                  in
                    bot()
                else () in
              down_without_checking_1152 prev_set_flag_down_1131
                s_prev_down_x_1130 x_1035
  
     let rec down_without_checking_1152 set_flag_down_1132 s_down_x_1129 x_1035 =
       let set_flag_down_1132 = true
       in
       let s_down_x_1129 = x_1035
       in
         if x_1035 = 0 then
           ()
         else
           down_1031 down_without_checking_1152 set_flag_down_1132 s_down_x_1129 (x_1035 - 1)
  
     let rec up_1032 set_flag_down_1132 s_down_x_1129 x_1036 =
       if x_1036 = 0 then
         ()
       else
         up_1032 set_flag_down_1132 s_down_x_1129 (x_1036 + 1)
  
     let main t1_1039 t2_1040 =
       let set_flag_down_1132 = false in
       let s_down_x_1129 = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_down_1132 s_down_x_1129
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_down_1132 s_down_x_1129 down_without_checking_1152
             set_flag_down_1132 s_down_x_1129 t1_1039
         else
           if t2_1040 < 0 then
             app_1030 set_flag_down_1132 s_down_x_1129
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_down_1132 s_down_x_1129 up_1032 set_flag_down_1132
               s_down_x_1129 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |up_1032$unknown:33|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |down_1031$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:47| Int) (|$alpha-26:t1_1039| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|down_without_checking_1152| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:128|)) (and (= |$V-reftype:47| |$cond-alpha-rename:127|) (and (= |$cond-alpha-rename:127| 0) (and (= (not (= 0 |$cond-alpha-rename:128|)) (> |$V-reftype:15| 0)) (and (= |$cond-alpha-rename:133| (* |$cond-alpha-rename:140| |$cond-alpha-rename:137|)) (and (= |$cond-alpha-rename:134| (* |$cond-alpha-rename:139| |$V-reftype:15|)) (and (= |$cond-alpha-rename:135| (+ |$cond-alpha-rename:134| |$cond-alpha-rename:138|)) (and (= |$cond-alpha-rename:138| 0) (and (= |$cond-alpha-rename:139| 0) (and (= |$cond-alpha-rename:140| 0) (and (= |$cond-alpha-rename:144| 0) (and (= |down_without_checking_1152| |$cond-alpha-rename:144|) (and (= 0 |$cond-alpha-rename:127|) (and (= 0 |$cond-alpha-rename:144|) (= 0 (+ |$cond-alpha-rename:133| |$cond-alpha-rename:135|)))))))))))))))) (and (not (= 0 |$cond-alpha-rename:129|)) (and (not (not (= 0 |$cond-alpha-rename:128|))) (and (= |$V-reftype:47| |$cond-alpha-rename:127|) (and (= |$cond-alpha-rename:127| 0) (and (= (not (= 0 |$cond-alpha-rename:128|)) (> |$cond-alpha-rename:136| 0)) (and (= (not (= 0 |$cond-alpha-rename:129|)) (< |$V-reftype:15| 0)) (and (= |$cond-alpha-rename:130| (* |$cond-alpha-rename:143| |$V-reftype:15|)) (and (= |$cond-alpha-rename:131| (* |$cond-alpha-rename:142| |$cond-alpha-rename:136|)) (and (= |$cond-alpha-rename:132| (+ |$cond-alpha-rename:131| |$cond-alpha-rename:141|)) (and (= |$cond-alpha-rename:141| 0) (and (= |$cond-alpha-rename:142| 0) (and (= |$cond-alpha-rename:143| 0) (and (= |$cond-alpha-rename:144| 0) (and (= |down_without_checking_1152| |$cond-alpha-rename:144|) (and (= 0 |$cond-alpha-rename:127|) (and (= 0 |$cond-alpha-rename:144|) (= 0 (+ |$cond-alpha-rename:130| |$cond-alpha-rename:132|))))))))))))))))))) (> |$alpha-26:t1_1039| 0) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| |$V-reftype:47| |down_without_checking_1152|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:2| 1) )
      (|bot$unknown:15| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:559| Int) (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:575| Int) (|$cond-alpha-rename:577| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= 1 1) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (= |$cond-alpha-rename:237| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (|fail$unknown:29| |$knormal:28| 1) (|fail$unknown:29| |$cond-alpha-rename:577| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:235|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:560| |$cond-alpha-rename:559|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:284| |$cond-alpha-rename:283|) (|down_1031$unknown:23| |$cond-alpha-rename:492| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|bot$unknown:15| |$knormal:26| 1) (|bot$unknown:15| |$cond-alpha-rename:575| 1) )
      (|down_1031$unknown:23| |$cond-alpha-rename:492| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:578| Int) (|$cond-alpha-rename:579| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= 1 1) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (= |$cond-alpha-rename:237| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (|fail$unknown:29| |$knormal:28| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:235|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:579| |$cond-alpha-rename:578|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:284| |$cond-alpha-rename:283|) (|down_1031$unknown:23| |$cond-alpha-rename:492| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|bot$unknown:15| |$knormal:26| 1) )
      (|down_1031$unknown:23| |$cond-alpha-rename:492| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:596| Int) (|$cond-alpha-rename:597| Int) (|$cond-alpha-rename:612| Int) (|$cond-alpha-rename:614| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= 1 1) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (not (= |$cond-alpha-rename:237| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (|fail$unknown:29| |$knormal:28| 1) (|fail$unknown:29| |$cond-alpha-rename:614| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:235|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:597| |$cond-alpha-rename:596|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:284| |$cond-alpha-rename:283|) (|bot$unknown:15| |$knormal:26| 1) (|bot$unknown:15| |$cond-alpha-rename:612| 1) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:615| Int) (|$cond-alpha-rename:616| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= 1 1) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (not (= |$cond-alpha-rename:237| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (|fail$unknown:29| |$knormal:28| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:235|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:616| |$cond-alpha-rename:615|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:284| |$cond-alpha-rename:283|) (|bot$unknown:15| |$knormal:26| 1) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:634| Int) (|$cond-alpha-rename:649| Int) (|$cond-alpha-rename:651| Int) )
    (=>
      ( and (not (= |$alpha-20:x_1035| 0)) (not (and (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (>= (+ 0 (- |$V-reftype:47| 1)) 0))) (not (= |$V-reftype:47| 0)) (not (= 0 1)) (|fail$unknown:29| |$cond-alpha-rename:651| 1) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:634| |$cond-alpha-rename:633|) (|bot$unknown:15| |$cond-alpha-rename:649| 1) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) )
    (=>
      ( and (not (= |$alpha-20:x_1035| 0)) (not (= |$V-reftype:47| 0)) (not (= 0 1)) (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (>= (+ 0 (- |$V-reftype:47| 1)) 0) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:653| |$cond-alpha-rename:652|) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:668| Int) )
    (=>
      ( and (not (= |$alpha-20:x_1035| 0)) (not (not (= 0 1))) (not (= |$V-reftype:47| 0)) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:668| |$cond-alpha-rename:667|) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:688| Int) )
    (=>
      ( and (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= 1 1) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (= |$cond-alpha-rename:242| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (|fail$unknown:29| |$cond-alpha-rename:688| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:671| |$cond-alpha-rename:670|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:290| |$cond-alpha-rename:289|) (|down_1031$unknown:23| |$cond-alpha-rename:497| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|bot$unknown:15| |$cond-alpha-rename:686| 1) )
      (|down_1031$unknown:23| |$cond-alpha-rename:497| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:689| Int) (|$cond-alpha-rename:690| Int) )
    (=>
      ( and (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= 1 1) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (= |$cond-alpha-rename:242| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:690| |$cond-alpha-rename:689|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:290| |$cond-alpha-rename:289|) (|down_1031$unknown:23| |$cond-alpha-rename:497| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) )
      (|down_1031$unknown:23| |$cond-alpha-rename:497| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:707| Int) (|$cond-alpha-rename:708| Int) (|$cond-alpha-rename:723| Int) (|$cond-alpha-rename:725| Int) )
    (=>
      ( and (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:242| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (|fail$unknown:29| |$cond-alpha-rename:725| 1) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:708| |$cond-alpha-rename:707|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:290| |$cond-alpha-rename:289|) (|bot$unknown:15| |$cond-alpha-rename:723| 1) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:727| Int) )
    (=>
      ( and (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:242| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:240|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:727| |$cond-alpha-rename:726|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:290| |$cond-alpha-rename:289|) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) )
    ( and (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:359| |$cond-alpha-rename:362| |$cond-alpha-rename:361|) (not (= 0 1)) (not (= |$cond-alpha-rename:359| 0)) (not (and (> (+ 0 |$cond-alpha-rename:359|) (+ 0 (- |$cond-alpha-rename:359| 1))) (>= (+ 0 (- |$cond-alpha-rename:359| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:44| Int) )
    (=>
      ( and (not (= |$alpha-25:x_1036| 0)) (|up_1032$unknown:33| |$knormal:44| (+ |$alpha-25:x_1036| 1) |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) )
      (|up_1032$unknown:33| |$knormal:44| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) )
    (=>
      ( and true )
      (|up_1032$unknown:33| 1 0 |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(check-sat)

(exit)

