(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c5_COEFFICIENT_1082 = 0
     let rec c4_COEFFICIENT_1081 = 0
     let rec c3_COEFFICIENT_1080 = 0
     let rec c2_COEFFICIENT_1078 = 0
     let rec c1_COEFFICIENT_1077 = 0
     let rec c0_COEFFICIENT_1076 = 0
  
     let rec app_1030 x_DO_NOT_CARE_1212 x_DO_NOT_CARE_1213 f_EXPARAM_1084 x_DO_NOT_CARE_1210 x_DO_NOT_CARE_1211 f_1033 set_flag_up_1089 s_up_x_1086 x_1034 =
       f_1033 set_flag_up_1089 s_up_x_1086 x_1034
  
     let rec down_1031 set_flag_up_1089 s_up_x_1086 x_1035 =
       if x_1035 = 0 then
         ()
       else
         down_1031 set_flag_up_1089 s_up_x_1086 (x_1035 - 1)
  
     let rec up_1032 up_without_checking_1115 prev_set_flag_up_1088 s_prev_up_x_1087 x_1036 =
       let u = if prev_set_flag_up_1088 then
                if (0 * 1) + (-s_prev_up_x_1087) > (0 * 1) + (-x_1036) &&
                   (0 * 1) + (-x_1036) >= 0 then
                  ()
                else
                  let u_3968 = fail ()
                  in
                    bot()
               else () in
              up_without_checking_1115 prev_set_flag_up_1088 s_prev_up_x_1087
                x_1036
  
     let rec up_without_checking_1115 set_flag_up_1089 s_up_x_1086 x_1036 =
       let set_flag_up_1089 = true
       in
       let s_up_x_1086 = x_1036
       in
         if x_1036 = 0 then
           ()
         else
           up_1032 up_without_checking_1115 set_flag_up_1089 s_up_x_1086 (x_1036 + 1)
  
     let main_1037 t1_1039 t2_1040 =
       let set_flag_up_1089 = false in
       let s_up_x_1086 = 0 in
         if t1_1039 > 0 then
           app_1030 set_flag_up_1089 s_up_x_1086
             ((c3_COEFFICIENT_1080 * t2_1040) +
              ((c4_COEFFICIENT_1081 * t1_1039) + c5_COEFFICIENT_1082))
             set_flag_up_1089 s_up_x_1086 down_1031 set_flag_up_1089 s_up_x_1086
             t1_1039
         else
           if t2_1040 < 0 then
             app_1030 set_flag_up_1089 s_up_x_1086
               ((c0_COEFFICIENT_1076 * t2_1040) +
                ((c1_COEFFICIENT_1077 * t1_1039) + c2_COEFFICIENT_1078))
               set_flag_up_1089 s_up_x_1086 up_without_checking_1115
               set_flag_up_1089 s_up_x_1086 t2_1040
           else
             ()
")

(set-logic HORN)

(declare-fun |down_1031$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |up_1032$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:35|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:23|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:360| Int) )
    (=>
      ( and (< |$alpha-27:t2_1040| 0) (= 0 (+ (* 0 |$cond-alpha-rename:360|) (+ (* 0 |$V-reftype:15|) 0))) (= 0 0) (= 0 0) (not (> |$alpha-26:t1_1039| 0)) (> |$V-reftype:15| 0) (|main_1037$unknown:23| |$cond-alpha-rename:360| |$V-reftype:15|) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:15| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:370| Int) )
    (=>
      ( and (< |$alpha-27:t2_1040| 0) (= 0 (+ (* 0 |$V-reftype:15|) (+ (* 0 |$cond-alpha-rename:370|) 0))) (= 0 0) (= 0 0) (not (> |$alpha-26:t1_1039| 0)) (not (> |$cond-alpha-rename:370| 0)) (< |$V-reftype:15| 0) (|main_1037$unknown:23| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|main_1037$unknown:23| |$V-reftype:15| |$cond-alpha-rename:370|) )
      (|up_without_checking_1115$unknown:35| |$V-reftype:15| 0 0)
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
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:1533| Int) (|$cond-alpha-rename:1702| Int) (|$cond-alpha-rename:1703| Int) (|$cond-alpha-rename:1718| Int) (|$cond-alpha-rename:1720| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:144| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:207| |$cond-alpha-rename:206|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1703| |$cond-alpha-rename:1702|) (|up_1032$unknown:32| |$cond-alpha-rename:1533| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$knormal:35| 1) (|fail$unknown:21| |$cond-alpha-rename:1720| 1) (|bot$unknown:15| |$knormal:33| 1) (|bot$unknown:15| |$cond-alpha-rename:1718| 1) )
      (|up_1032$unknown:32| |$cond-alpha-rename:1533| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:1533| Int) (|$cond-alpha-rename:1721| Int) (|$cond-alpha-rename:1722| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:144| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:207| |$cond-alpha-rename:206|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1722| |$cond-alpha-rename:1721|) (|up_1032$unknown:32| |$cond-alpha-rename:1533| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:32| |$cond-alpha-rename:1533| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:1739| Int) (|$cond-alpha-rename:1740| Int) (|$cond-alpha-rename:1755| Int) (|$cond-alpha-rename:1757| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$cond-alpha-rename:144| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:207| |$cond-alpha-rename:206|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1740| |$cond-alpha-rename:1739|) (|fail$unknown:21| |$knormal:35| 1) (|fail$unknown:21| |$cond-alpha-rename:1757| 1) (|bot$unknown:15| |$knormal:33| 1) (|bot$unknown:15| |$cond-alpha-rename:1755| 1) )
      (|up_1032$unknown:32| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:1758| Int) (|$cond-alpha-rename:1759| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:207| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$cond-alpha-rename:144| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:207| |$cond-alpha-rename:206|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1759| |$cond-alpha-rename:1758|) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:32| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (|down_1031$unknown:19| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) (not (= |$alpha-14:x_1035| 0)) )
      (|down_1031$unknown:19| |$knormal:14| |$alpha-14:x_1035| |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) )
    (=>
      ( and true )
      (|down_1031$unknown:19| 1 0 |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:94| Int) )
    ( and (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:94| |$cond-alpha-rename:213| |$cond-alpha-rename:212|) (not (= 0 1)) (not (= |$cond-alpha-rename:94| 0)) (not (and (>= (- (+ |$cond-alpha-rename:94| 1)) 0) (> (- |$cond-alpha-rename:94|) (- (+ |$cond-alpha-rename:94| 1))))) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:1776| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:1792| Int) (|$cond-alpha-rename:1794| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (and (> (+ 0 (- |$V-reftype:62|)) (+ 0 (- (+ |$V-reftype:62| 1)))) (>= (+ 0 (- (+ |$V-reftype:62| 1))) 0))) (not (= |$V-reftype:62| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$V-reftype:62| |$cond-alpha-rename:1777| |$cond-alpha-rename:1776|) (|fail$unknown:21| |$cond-alpha-rename:1794| 1) (|bot$unknown:15| |$cond-alpha-rename:1792| 1) )
      (|up_without_checking_1115$unknown:35| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:1795| Int) (|$cond-alpha-rename:1796| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (= |$V-reftype:62| 0)) (not (= 0 1)) (> (+ 0 (- |$V-reftype:62|)) (+ 0 (- (+ |$V-reftype:62| 1)))) (>= (+ 0 (- (+ |$V-reftype:62| 1))) 0) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$V-reftype:62| |$cond-alpha-rename:1796| |$cond-alpha-rename:1795|) )
      (|up_without_checking_1115$unknown:35| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:1810| Int) (|$cond-alpha-rename:1811| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (not (= 0 1))) (not (= |$V-reftype:62| 0)) (|up_without_checking_1115$unknown:35| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:35| |$V-reftype:62| |$cond-alpha-rename:1811| |$cond-alpha-rename:1810|) )
      (|up_without_checking_1115$unknown:35| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:1538| Int) (|$cond-alpha-rename:1813| Int) (|$cond-alpha-rename:1814| Int) (|$cond-alpha-rename:1829| Int) (|$cond-alpha-rename:1831| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:149| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1814| |$cond-alpha-rename:1813|) (|up_1032$unknown:32| |$cond-alpha-rename:1538| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$cond-alpha-rename:1831| 1) (|bot$unknown:15| |$cond-alpha-rename:1829| 1) )
      (|up_1032$unknown:32| |$cond-alpha-rename:1538| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:1538| Int) (|$cond-alpha-rename:1832| Int) (|$cond-alpha-rename:1833| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:149| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1833| |$cond-alpha-rename:1832|) (|up_1032$unknown:32| |$cond-alpha-rename:1538| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) )
      (|up_1032$unknown:32| |$cond-alpha-rename:1538| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:1850| Int) (|$cond-alpha-rename:1851| Int) (|$cond-alpha-rename:1866| Int) (|$cond-alpha-rename:1868| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:149| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1851| |$cond-alpha-rename:1850|) (|fail$unknown:21| |$cond-alpha-rename:1868| 1) (|bot$unknown:15| |$cond-alpha-rename:1866| 1) )
      (|up_1032$unknown:32| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:1869| Int) (|$cond-alpha-rename:1870| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:149| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:35| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:35| |$cond-alpha-rename:149| |$cond-alpha-rename:148| |$cond-alpha-rename:147|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|up_without_checking_1115$unknown:35| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:1870| |$cond-alpha-rename:1869|) )
      (|up_1032$unknown:32| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(check-sat)

(get-model)

(exit)

